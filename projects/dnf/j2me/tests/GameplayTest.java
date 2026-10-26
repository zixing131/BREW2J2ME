package dnf;
import java.io.*;
import java.util.*;
/** Transaction, drop provenance, progression, migration and scene-graph regressions. */
public final class GameplayTest {
    private static int checks;
    private static void check(boolean b,String s){checks++;if(!b)throw new AssertionError(s);}
    private static Campaign copy(Campaign c)throws Exception{ByteArrayOutputStream b=new ByteArrayOutputStream();c.write(new DataOutputStream(b));return Campaign.read(new DataInputStream(new ByteArrayInputStream(b.toByteArray())));}
    public static void main(String[] args)throws Exception {
        Campaign c=new Campaign();Items it=c.bag.items;
        check(it.data[0].length==102&&it.data[11].length==154&&it.recipes.length==363,"native counts");
        check(it.name(0,101).equals("闪亮的小刀")&&it.level(0,101)==5&&it.stat(0,101,0)==10&&it.stat(0,101,1)==14,"native named sword values");
        check(it.recipeCost(0)==100,"native Linus recipe price");c.openingCheckpoint();c.gold=1000;
        int before=c.gold;c.bag.craft(c,0);check(c.gold==before&&c.bag.count(0,101)==0,"missing materials never charged");
        c.bag.add(11,3,3);c.bag.add(11,4,3);c.bag.add(11,5,3);c.bag.craft(c,0);
        check(c.gold==900&&c.bag.count(0,101)==1&&c.bag.count(11,3)==0&&c.bag.count(11,4)==0&&c.bag.count(11,5)==0,"native recipe consumes all three materials once");
        c.bag.equip(0,101,4);check(!c.bag.equipped(0,101),"required equipment level");c.bag.equip(0,101,5);check(c.bag.attack()==10&&c.bag.bonus(2)==6,"weapon and intelligence effects");
        c.bag.sell(c,0,101);check(c.bag.count(0,101)==1&&c.gold==900,"equipped item cannot be sold");
        c=copy(c);check(c.bag.equipped(0,101)&&c.bag.count(0,101)==1&&c.gold==900,"equipment and currency persist");
        c.bag.equip(0,101,5);c.bag.sell(c,0,101);check(c.bag.count(0,101)==0&&c.gold>900,"unequip and sell");
        c.gold=0;c.bag.buy(c,13,1);check(c.gold==0&&c.bag.count(13,1)==0,"insufficient money atomic");c.gold=100;c.bag.buy(c,13,1);check(c.gold==0&&c.bag.count(13,1)==1,"purchase exact price");
        check(!c.bag.add(19,255,1)&&!c.bag.add(-1,1,1)&&!c.bag.add(11,4,-1),"invalid items rejected");
        c.dungeon=1;byte[] monsters=Assets.read(6,"bd");MonsterData goblin=new MonsterData(7,monsters);boolean rust=false,equipment=false;
        for(int i=0;i<5000;i++){c.loot.defeated(c,goblin,6,1,100,100);c.loot.pickup(c,6,1,100,100);rust|=c.bag.count(11,4)>0;for(int key:c.bag.entries())if(key/256<9)equipment=true;}
        check(rust&&equipment&&c.gold>0,"native regional iron, random equipment and gold drops obtainable");
        c.loot.defeated(c,goblin,6,1,100,100);Campaign saved=copy(c);check(saved.loot.seed==c.loot.seed,"loot RNG persists");
        for(int i=0;i<c.loot.ground.length;i++)check(Arrays.equals(saved.loot.ground[i],c.loot.ground[i]),"uncollected floor drops persist");
        c=new Campaign();check(!c.finish(259)&&c.state[259]==0&&c.gold==0,"cannot finish an unaccepted quest");
        c.state[259]=1;c.kills[259*3]=1;check(c.book.choiceCount(259)==4,"native final reward has four choices");
        int rp=c.book.choiceOffset(259,2),rt=c.book.value(259,rp),ri=c.book.value(259,rp+1);
        c.bag.add(rt,ri,9999);int money=c.gold,experience=c.xp;
        check(!c.finish(259,2)&&c.state[259]==1&&c.gold==money&&c.xp==experience,"full reward stack rejects settlement atomically");
        c.bag.remove(rt,ri,9999);check(c.finish(259,2)&&c.bag.count(rt,ri)==c.book.value(259,rp+2),"chosen third final reward granted");
        int first=c.book.choiceOffset(259,0);check(c.bag.count(c.book.value(259,first),c.book.value(259,first+1))==0,"unchosen final weapon not granted");
        check(c.book.conversation(259,true,28).indexOf("希洛克")>=0&&c.book.conversation(53,false,5).indexOf("克拉赫")>=0,"late and long SC conversations translated");
        check(QuestBook.npcName(25).equals("瓦尔娜")&&QuestBook.npcName(28).equals("奥尔卡"),"native snow town speaker identity");
        Battle medicine=new Battle(new Session());medicine.enter(0,1,0,0,40,250);medicine.campaign.level=60;medicine.refreshStats();medicine.hp=10;medicine.mp=10;
        medicine.campaign.bag.add(13,9,2);medicine.useItem(13,9);check(medicine.hp==60&&medicine.mp==10,"native bread fixed HP50, not half HP");
        medicine.campaign.bag.add(14,18,1);medicine.useItem(14,18);check(medicine.mp==10+medicine.maxMp*30/100,"native elixir MP30 percent");
        medicine.campaign.bag.add(15,1,1);int oldhp=medicine.hp,oldmp=medicine.mp;medicine.useItem(15,1);check(medicine.hp==oldhp+medicine.maxHp*15/100&&medicine.mp==oldmp+medicine.maxMp*15/100,"native dual recovery15 percent");
        medicine.hp=medicine.maxHp;medicine.useItem(13,9);check(medicine.campaign.bag.count(13,9)==1,"full HP does not waste potion");
        medicine.campaign.bag.add(13,24,1);medicine.useItem(13,24);check(medicine.campaign.bag.count(13,24)==1,"unknown special potion not silently consumed");
        check(MonsterData.name(25).equals("落雷凯诺")&&MonsterData.name(187).equals("玛丽"),"original early and final enemy names translated");
        // Original type-5 condition is a loan, not an availability requirement.
        c=new Campaign();c.state[117]=2;check(c.accept(129)&&c.bag.count(19,49)==1,"GSD receives the quest-loaned essence");check(c.book.complete(129,c)&&c.finish(129)&&c.bag.count(19,49)==0,"loan is consumed on hand-in");
        c=new Campaign();c.state[85]=2;check(c.accept(86)&&c.bag.count(19,192)==1,"dark necklace granted on quest acceptance");
        c=new Campaign();c.state[257]=2;check(c.accept(258)&&c.bag.count(19,87)==1&&c.bag.count(19,88)==1,"both final delivery loans granted");
        // Replay objective transactions in native order; fixture injections below test state transitions, not manual gameplay.
        c=new Campaign();c.openingCheckpoint();c.level=60;
        for(int q:QuestBook.MAIN){if(q<2)continue;check(c.book.available(q,c),"mainline available "+q);check(c.accept(q),"mainline accepts "+q);int[] who=c.book.contact(q,true);check(who[0]>=0,"original turn-in contact "+q);
            for(int j=0;j<3;j++){int p=180+j*6,t=c.book.value(q,p),a=c.book.word(q,p+1),b=c.book.word(q,p+3),n=c.book.value(q,p+5);
                if(t==1){int need=n-c.bag.count(a,b);if(need>0)check(c.bag.add(a,b,need),"objective item valid "+q);}
                else if(t==2){c.dungeon=a;c.difficulty=b;c.clearedDungeon();}
                else if(t==3){c.difficulty=n==6?0:n;for(int k=0;k<b;k++)c.kill(new MonsterData(a+1,monsters));}
                else if(t==5)c.gold=Math.max(c.gold,a);
                else if(t==7){c.dungeon=b;c.difficulty=n==6?0:n;c.runMillis=a*1000+1;c.clearedDungeon();check(c.kills[q*3+j]==0,"late timed run rejected");c.runMillis=a*1000;c.clearedDungeon();}
                else if(t==15){c.dungeon=23;c.escortHp=0;c.clearedDungeon();check(c.kills[q*3+j]==0,"failed escort rejected");c.escortHp=100;c.clearedDungeon();}
            }
            check(c.book.complete(q,c),"native mainline objectives "+q);check(c.finish(q),"mainline settlement "+q);int gold=c.gold;check(!c.finish(q)&&c.gold==gold,"no duplicate reward "+q);c=copy(c);
        }check(c.state[259]==2&&Adventure.nextQuest(c)==-1,"mainline reaches final quest");
        check(c.book.story(90,true)==23&&c.book.story(220,true)==44&&c.book.story(257,false)==45,"SC ANI dispatch");
        c=new Campaign();c.state[66]=1;c.dungeon=9;c.difficulty=2;
        check(Adventure.mapStory(c,25,1,0,-1,true,false)==20,"native pre-boss ANI20");check(Adventure.mapStory(c,25,1,0,-1,true,false)==-1,"map event once only");check(Adventure.mapStory(c,25,1,2,46,true,false)==22,"native post-boss ANI22");
        c=new Campaign();c.state[259]=1;c.dungeon=45;c.difficulty=3;check(Adventure.mapStory(c,168,2,2,187,true,false)==47,"original ending trigger");
        // Compatibility with the exact published Campaign v1 layout (no inventory extension).
        ByteArrayOutputStream raw=new ByteArrayOutputStream();DataOutputStream d=new DataOutputStream(raw);d.writeInt(1);int[] fields={2,258,90,0,0,1,0,0,40,250,0,-1,-1};for(int v:fields)d.writeInt(v);d.writeInt(530);for(int i=0;i<530;i++)d.writeByte(i<=2?2:0);for(int i=0;i<1590;i++)d.writeInt(0);d.writeInt(0);
        c=Campaign.read(new DataInputStream(new ByteArrayInputStream(raw.toByteArray())));check(c.gold==90&&c.level==2&&c.bag.entries().length>0,"0.4 migration restores omitted earned item rewards");
        for(int i=0;i<Adventure.ZONES.length;i++){int id=Adventure.ZONES[i];Battle b=new Battle(new Session());b.enter(0,1,0,0,40,250);b.startDungeon(id,0);check(b.supported()&&b.field>0&&b.stage>0,"playable original entry "+id);Battle restored=Battle.decode(new Session(),b.encode());check(restored.zone==id,"all dungeon saves "+id);}
        System.out.println("PASS gameplay "+checks+" checks: inventory, native recipes/drops, 69 mainline nodes, 22 dungeon entries, migrations");
    }
}
