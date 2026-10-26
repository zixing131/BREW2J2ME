package dnf;
import java.io.*;
import java.util.*;
import java.util.zip.*;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
public final class BattleTest {
    private static int checks;
    private static void check(boolean b,String s){checks++;if(!b)throw new AssertionError(s);}
    private static void shot(Battle b,String name)throws Exception {Surface s=new Surface(240,320);b.draw(s);BufferedImage image=new BufferedImage(s.w,s.h,BufferedImage.TYPE_INT_RGB);for(int y=0;y<s.h;y++)for(int x=0;x<s.w;x++)image.setRGB(x,y,Surface.rgb(s.pixels[y*s.w+x]));ImageIO.write(image,"png",new File("build/"+name+".png"));}
    private static void compare(Battle a,Battle b)throws Exception {check(Arrays.equals(a.encode(),b.encode()),"exact combat state round trip and deterministic continuation");}
    public static void main(String[] args)throws Exception {
        BufferedReader r=new BufferedReader(new FileReader("tests/fixtures/hitbox-arm.csv"));String line;while((line=r.readLine())!=null){if(line.startsWith("#"))continue;String[] v=line.split(",");int[] n=new int[v.length];for(int i=0;i<n.length;i++)n[i]=Integer.parseInt(v[i]);check(HitBox.overlaps(Arrays.copyOfRange(n,0,6),n[6],n[7],Arrays.copyOfRange(n,8,12),n[12],n[13])==(n[14]!=0),"original ARM hit-box parity");}r.close();
        ZipFile z=new ZipFile("dist/DnfGhostKnight.jar");int ds=0;for(Enumeration e=z.entries();e.hasMoreElements();){ZipEntry p=(ZipEntry)e.nextElement();String name=p.getName();if(name.startsWith("original/")&&name.endsWith(".ds")){new SceneData(Integer.parseInt(name.substring(9,name.length()-3)));ds++;}}z.close();check(ds==716,"all 716 native DS entity sets parse to EOF");
        MonsterData four=new MonsterData(4,Assets.read(6,"bd")),high=new MonsterData(144,Assets.read(6,"bd"));check(four.hp==41&&four.attackClip[0]==31&&four.attackDamage[0]==7,"original GBL researcher profile");check(high.hp==4325&&high.level==40&&high.attackDamage[0]==191,"original high-level GBL profile");
        Battle b=new Battle(new Session());b.enter(41,2,11,5,256,205);check(b.scene.props.length==19&&b.enemies.length==0,"investigation scene entities");check(!b.interact(),"interaction requires native rectangle");
        for(int i=0;i<16;i++)b.tick(Session.LEFT,30);for(int i=0;i<7;i++)b.tick(Session.UP,30);check(b.interact(),"walk from original spawn into NPC30 journal rectangle");b.pageEnd=b.dialogueText().length();b.confirm();b.pageEnd=b.dialogueText().length();b.confirm();check(b.pendingStory==5&&b.questState==2,"journal confirmation yields battle story");
        b.enter(41,3,11,5,292,241);b.directionPressed(Session.RIGHT);b.tick(Session.RIGHT,30);b.tick(0,30);b.directionPressed(Session.RIGHT);b.tick(Session.RIGHT,30);check(b.player.hero.animation.clip==3,"double direction starts dash action");b.enter(41,3,11,5,292,241);check(b.enemies.length==6&&b.living()==6,"six original researchers");check(b.player.world.canStand(292,241),"original spawn lies on walkable cell");shot(b,"battle-start");
        // Vertical depth is independent of screen-space overlap. Slash must miss another lane.
        Battle.Enemy e=b.enemies[0];b.player.x=e.x-38;b.player.y=e.y+45;b.attack();for(int i=0;i<4;i++)b.tick(0,30);check(e.hp==41,"slash cannot hit another ground lane");
        b.enter(41,3,11,5,292,241);e=b.enemies[0];b.player.x=e.x-38;b.player.y=e.y;b.attack();b.tick(0,30);
        byte[] save=b.encode();Battle restored=Battle.decode(new Session(),save);compare(b,restored);
        for(int i=0;i<30;i++){b.tick(0,30);restored.tick(0,30);compare(b,restored);}check(e.hp<41,"native attack frame damages enemy");
        byte[] bad=(byte[])save.clone();bad[50]^=1;boolean rejected=false;try{Battle.decode(new Session(),bad);}catch(IOException ok){rejected=true;}check(rejected,"corrupt save rejected");
        // Combat through public input, original frame/death transitions, no direct HP mutation.
        int ticks=0;while(b.pendingStory<0&&ticks<2500){int target=-1;for(int i=0;i<b.enemies.length;i++)if(!b.enemies[i].dead&&b.enemies[i].hp>0){target=i;break;}
            if(target>=0&&b.player.hero.animation.clip==0){e=b.enemies[target];b.player.x=e.x-35;b.player.y=e.y;b.player.mirror=false;b.attack();}
            b.tick(0,30);ticks++;
        }check(b.pendingStory==6&&b.living()==0,"six deaths dispatch native ANI6");shot(b,"battle-clear");
        b.enter(41,3,11,5,292,241);e=b.enemies[0];b.player.x=e.x-35;b.player.y=e.y;b.skill(0);for(int i=0;i<8;i++)b.tick(0,30);check(e.hp<41,"upper slash uses action24 effect hit region");
        b.enter(41,3,11,5,292,241);e=b.enemies[0];b.player.x=e.x-35;b.player.y=e.y;b.skill(1);b.draw(new Surface(240,320));for(int i=0;i<8;i++)b.tick(0,30);check(e.hp<41,"ghost slash original 30032 ACT hit region");
        b.fromStory(new Story(7,new KoreanFont(),true));b.tick(0,30000);check(b.dialogue==2&&b.elapsedMs==0,"quest introduction pauses protection timer");restored=Battle.decode(new Session(),b.encode());compare(b,restored);b.pageEnd=b.dialogueText().length();b.confirm();check(b.questState==1&&b.dialogue==-1,"accept protection mission");
        b.enter(41,4,11,5,292,241);check(b.father()&&b.level==60&&b.player.hero.family==1&&b.enemies.length==7,"native Derin switch and seven cultists");
        int hp=b.hp;for(int i=0;i<1000;i++)b.tick(0,30);check(b.hp==hp&&b.pendingStory<0,"tutorial invulnerability, timer not early");
        restored=Battle.decode(new Session(),b.encode());for(int i=0;i<5000;i++){b.tick(0,30);restored.tick(0,30);}compare(b,restored);check(b.pendingStory==8&&b.quest==463&&b.questState==2&&b.elapsedMs==180000,"three-minute protection mission dispatches ANI8");
        b.enter(41,4,11,5,292,241);b.skill(0);b.tick(0,30);check(b.player.hero.animation.clip==58,"Derin first native bound skill");restored=Battle.decode(new Session(),b.encode());for(int i=0;i<35;i++){b.tick(0,30);restored.tick(0,30);compare(b,restored);}
        b.skill(1);b.tick(0,30);check(b.player.hero.animation.clip==61,"Derin second native bound skill");restored=Battle.decode(new Session(),b.encode());for(int i=0;i<35;i++){b.tick(0,30);restored.tick(0,30);compare(b,restored);}
        // Play from the actual entry position without teleporting combatants.
        b.enter(41,3,11,5,292,241);for(int i=0;i<5000&&b.pendingStory<0;i++){
            int direction=(i/60)%2==0?Session.LEFT:Session.RIGHT;
            if(b.player.hero.animation.clip==0){b.tick(direction,30);b.attack();}b.tick(0,30);
        }if(b.pendingStory<0){System.out.println("Player "+b.player.x+","+b.player.y);for(int i=0;i<b.enemies.length;i++){Battle.Enemy e2=b.enemies[i];System.out.println("Enemy "+i+" "+e2.x+","+e2.y+" HP "+e2.hp+" clip "+e2.actor.animation.clip);}}check(b.pendingStory==6,"normal input and enemy approach clear all six from original spawn");
        b.enter(79,1,20,1,272,366);shot(b,"battle-town");check(b.player.world.id==79,"post-opening town loads actual entities");
        System.out.println("PASS combat "+checks+" checks; native hit boxes, all DS, missions, skills, saves");
    }
}
