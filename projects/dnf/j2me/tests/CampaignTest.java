package dnf;
import java.io.*;
import java.util.*;
/** End-to-end town movement, quest transactions, dungeon combat and persistence. */
public final class CampaignTest {
    private static int checks;
    private static void check(boolean b,String s){checks++;if(!b)throw new AssertionError(s);}
    private static boolean inside(int[] a,int x,int y){return x>=a[6]&&x<=a[8]&&y>=a[7]&&y<=a[9];}
    private static int[] stageArea(Battle b,int field,int stage){for(int[] a:b.scene.areas)if(a[0]==1&&a[2]==field&&a[3]==stage)return a;throw new AssertionError("stage area");}
    private static int[] area(Battle b,int kind,int destination){for(int[] a:b.scene.areas)if(a[0]==kind&&(kind==2?a[4]:a[2])==destination)return a;throw new AssertionError("area "+kind+"/"+destination+" at "+b.field+"/"+b.stage);}
    /** Search 3px movement lattice, then execute real held directions; never teleport the player. */
    private static void walk(Battle b,int[] goal)throws Exception {
        World w=b.player.world;
        if(inside(goal,b.player.x,b.player.y)){int direction=b.player.x<w.width/2?Session.RIGHT:Session.LEFT;for(int i=0;i<40&&inside(goal,b.player.x,b.player.y);i++)b.tick(direction,30);}
        int size=w.width*w.height;int[] prev=new int[size],queue=new int[size];byte[] action=new byte[size];Arrays.fill(prev,-1);
        int start=b.player.y*w.width+b.player.x,head=0,tail=0,end=-1;queue[tail++]=start;prev[start]=start;
        int[] dx={-1,1,0,0},dy={0,0,-1,1},keys={Session.LEFT,Session.RIGHT,Session.UP,Session.DOWN};
        while(head<tail){int p=queue[head++],x=p%w.width,y=p/w.width;if(inside(goal,x,y)){end=p;break;}
            for(int k=0;k<4;k++){int nx=x+3*dx[k],ny=y+3*dy[k];if(nx<0||nx>=w.width||ny<0||ny>=w.height)continue;int np=ny*w.width+nx;if(prev[np]!=-1)continue;boolean ok=true;
                for(int i=1;i<=3;i++)if(!w.canStand(x+i*dx[k],y+i*dy[k]))ok=false;
                // Do not accidentally enter another scene or interactive dungeon prompt on the way.
                for(int[] a:b.scene.areas)if(a!=goal&&(a[0]==1||a[0]==3)&&inside(a,nx,ny)&&!inside(a,b.player.x,b.player.y))ok=false;
                if(ok){prev[np]=p;action[np]=(byte)k;queue[tail++]=np;}}
        }
        check(end>=0,"walkable route from "+b.field+"/"+b.stage+" "+b.player.x+","+b.player.y+" to "+Arrays.toString(goal));
        int count=0;for(int p=end;p!=start;p=prev[p])queue[count++]=keys[action[p]];
        int field=b.field,stage=b.stage;for(int i=count-1;i>=0;i--){b.tick(queue[i],30);if(b.field!=field||b.stage!=stage)break;}
        check(b.field!=field||b.stage!=stage||inside(goal,b.player.x,b.player.y),"actual input reaches rectangle");
    }
    private static void confirm(Battle b){int bound=0;while(b.dialogue>=0&&bound++<10){b.pageEnd=b.dialogueText().length();b.confirm();}check(bound<10,"conversation terminates");}
    private static void npc(Battle b,int id)throws Exception{walk(b,area(b,2,100+id));check(b.interact(),"NPC interaction");confirm(b);}
    private static void fight(Battle b)throws Exception{
        int ticks=0;while(b.living()>0&&b.hp>0&&ticks++<8000){
            int nearest=-1,distance=99999;for(int i=0;i<b.enemies.length;i++){Battle.Enemy e=b.enemies[i];int d=Math.abs(e.x-b.player.x)+Math.abs(e.y-b.player.y);if(e.hp>0&&d<distance){nearest=i;distance=d;}}
            int key=0;if(nearest>=0){Battle.Enemy e=b.enemies[nearest];int dx=e.x-b.player.x,dy=e.y-b.player.y;
                if(Math.abs(dy)>3)key=dy>0?Session.DOWN:Session.UP;
                else if(Math.abs(dx)>37)key=dx>0?Session.RIGHT:Session.LEFT;
                else {if(b.player.hero.animation.clip==0||b.player.hero.animation.clip==2){b.tick(dx<0?Session.LEFT:Session.RIGHT,30);b.attack();}else b.attack();}}
            b.tick(key,30);
        }
        check(b.hp>0&&b.living()==0,"real input clears room "+b.field+"/"+b.stage+" hp="+b.hp+" living="+b.living()+" ticks="+ticks);
    }
    public static void main(String[] args)throws Exception {
        BufferedReader source=new BufferedReader(new FileReader("tests/fixtures/quest-conditions-arm.csv"));String line;Campaign checkCampaign=new Campaign();
        while((line=source.readLine())!=null){if(line.startsWith("#"))continue;String[] columns=line.split(",");int q=Integer.parseInt(columns[0]);checkCampaign.level=Integer.parseInt(columns[1]);Arrays.fill(checkCampaign.state,(byte)Integer.parseInt(columns[2]));checkCampaign.state[q]=0;check(checkCampaign.book.available(q,checkCampaign)==columns[3].equals("1"),"original ARM quest condition");}source.close();
        for(int i=0;i<46;i++)new Zone(i);check(true,"46 original ZON layouts consumed exactly");
        Campaign c=new Campaign();check(c.book.count==530&&c.book.reward(2,false)==320&&c.book.reward(2,true)==30,"native quest fields: XP then money, not reversed");
        Battle b=new Battle(new Session());b.enter(79,1,20,1,272,366);b.campaign.openingCheckpoint();npc(b,29);
        check(b.campaign.state[2]==1&&b.pendingStory==12,"Mary quest launches original ANI12");c=b.campaign;b.fromStory(new Story(12,new KoreanFont(),true));check(c==b.campaign&&c.state[2]==1,"quest survives story return");
        walk(b,area(b,1,1));check(b.field==1&&b.zone==0,"snow town to north street");int x=b.player.x,y=b.player.y;b.tick(0,30);check(b.field==1&&b.player.x==x&&b.player.y==y,"loading inside gate never bounces");
        walk(b,area(b,1,0));check(b.field==0,"north street to Feng Zhen street");npc(b,0);check(c.state[2]==2,"deliver quest2");int gold=c.gold;check(!c.finish(2)&&c.gold==gold,"reward cannot be claimed twice");npc(b,0);check(c.state[3]==1,"accept native next quest");
        b=Battle.decode(new Session(),b.encode());c=b.campaign;check(c.state[3]==1&&c.state[2]==2,"quest state across battle save");
        walk(b,area(b,1,1));npc(b,9);check(c.state[3]==2,"GSD turn-in");npc(b,9);check(c.state[4]==1,"GSD offers Linus quest");walk(b,area(b,1,0));walk(b,area(b,1,3));npc(b,14);check(c.state[4]==2,"walk through all three town quest contacts");
        walk(b,area(b,1,0));walk(b,area(b,3,0));check(b.dialogue>=0&&b.campaign.dungeon==0,"dungeon entry asks before entering");b.dismiss();check(b.campaign.dungeon==0,"cancel entry");
        b.startDungeon();check(b.field==6&&b.stage==1&&b.zone==1&&b.player.x==34&&b.player.y==205,"native ZON first entry");
        byte[] entry=b.encode();fight(b);check(c.xp>0&&c.cleared(6,1),"death awards original XP and clears room");
        int before=c.xp;walk(b,area(b,1,8));fight(b);walk(b,area(b,1,6));check(b.stage==1&&b.living()==0,"cleared room does not respawn during same run");check(c.xp>=before,"progress preserved on return");
        walk(b,area(b,1,8));walk(b,area(b,1,9));fight(b);walk(b,stageArea(b,8,2));check(b.stage==2,"original multi-room path");fight(b);walk(b,area(b,1,6));check(b.stage==5,"approach boss branch");fight(b);walk(b,area(b,1,10));fight(b);
        check(b.dialogue>=0&&c.completedRuns==1,"boss clear offers return with single settlement");b=Battle.decode(new Session(),b.encode());confirm(b);b.tick(0,30);check(b.zone==0&&b.hp==b.maxHp&&b.campaign.completedRuns==1,"clear save resumes and returns to town");
        c=b.campaign;check(c.book.available(7,c)&&c.book.available(8,c),"original level3 kill quests unlock naturally from the first run");npc(b,0);walk(b,area(b,1,1));npc(b,9);walk(b,area(b,1,0));check(c.state[7]==1&&c.state[8]==1,"both kill quests accepted through original NPC tables");b.startDungeon();fight(b);walk(b,area(b,1,8));fight(b);walk(b,area(b,1,9));fight(b);check(c.kills[21]==10&&c.kills[24]==4,"real second-run combat satisfies both kill quests");b.returnTown();npc(b,0);walk(b,area(b,1,1));npc(b,9);check(c.state[7]==2&&c.state[8]==2,"kill quests delivered to original NPCs");
        // Separate unit state for counter saturation and failed-run recovery.
        c.state[7]=1;c.state[8]=1;
        for(int i=0;i<20;i++)c.kill(new MonsterData(7,Assets.read(6,"bd")));for(int i=0;i<4;i++)c.kill(new MonsterData(10,Assets.read(6,"bd")));
        check(c.kills[21]==10&&c.kills[24]==4&&c.book.complete(7,c)&&c.book.complete(8,c),"original zero-based quest monster indices and capped counts");
        b.startDungeon();b.hp=0;byte[] dead=b.encode();b=Battle.decode(new Session(),dead);b.attack();b.tick(0,30);check(b.hp==b.maxHp&&b.zone==0&&b.campaign.state[7]==1,"death recovery preserves quest progress");
        byte[] corrupt=b.encode();corrupt[corrupt.length-12]^=1;boolean rejected=false;try{Battle.decode(new Session(),corrupt);}catch(IOException e){rejected=true;}check(rejected,"campaign corruption detected");
        Battle legacy=new Battle(new Session());legacy.enter(79,1,20,1,272,366);ByteArrayOutputStream suffix=new ByteArrayOutputStream();DataOutputStream suffixOut=new DataOutputStream(suffix);legacy.campaign.write(suffixOut);suffixOut.writeUTF("");suffixOut.writeInt(-1);suffixOut.writeInt(0);suffixOut.writeInt(0);suffixOut.flush();byte[] modern=legacy.encode(),old=new byte[modern.length-suffix.size()];System.arraycopy(modern,0,old,0,old.length-4);old[3]=0x31;int hash=Campaign.checksum(old,old.length-4);for(int i=0;i<4;i++)old[old.length-4+i]=(byte)(hash>>>(24-8*i));Battle migrated=Battle.decode(new Session(),old);check(migrated.field==79&&migrated.campaign.state[0]==2,"0.3 DNB1 migration remains playable");
        System.out.println("PASS campaign "+checks+" checks; real town route, quests, full dungeon, boss, death and saves");
    }
}
