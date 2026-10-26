package dnf;
import java.io.*;
import java.util.*;
import java.lang.reflect.*;
/** Native fixture comparisons and production combat/save integration, not a manual playthrough. */
public final class SkillsStatusTest {
    private static int checks;
    private static void check(boolean ok,String what){checks++;if(!ok)throw new AssertionError(what);}
    private static int[] row(String line){String[] s=line.split(",");int[] r=new int[s.length];for(int i=0;i<r.length;i++)r[i]=Integer.parseInt(s[i]);return r;}
    private static void fixtures()throws Exception{
        for(String name:new String[]{"skill-effects-arm","status-init-arm","status-priority-arm","class-growth-arm"}){
            BufferedReader in=new BufferedReader(new FileReader("tests/fixtures/"+name+".csv"));String line;
            while((line=in.readLine())!=null){if(line.startsWith("#"))continue;int[] r=row(line);
                if(name.equals("skill-effects-arm")){check(SkillTree.action(r[0])==r[1],"native skill action "+r[0]);if(r[1]!=255){Actor hero=new Actor(0,new Assets());ActionSet.Clip c=hero.actions.clips[r[1]];check((c.boxB==null?-1:SkillTree.front(r[1]))==r[2],"native front "+r[0]);check((c.boxA==null?-1:SkillTree.back(r[1]))==r[3],"native back "+r[0]);}}
                else if(name.equals("status-init-arm")){Conditions c=new Conditions(8);check(c.apply(r[0],r[1],100,0,0,r[2]!=0),"status accepted");check(c.rank[r[0]]==r[3]&&c.duration[r[0]]==r[5]+256*r[6]&&c.elapsed[r[0]]==r[7]+256*r[8]&&c.interval[r[0]]==r[9]&&c.active[r[0]]==(r[10]==1),"native status init "+line);}
                else if(name.equals("class-growth-arm")){check(FieldRules.classHp(r[0],r[1],r[2],r[4],r[6])==r[8]&&FieldRules.classMp(r[0],r[1],r[3],r[5],r[7])==r[9],"native class growth "+line);}
                else {Conditions c=new Conditions(8);if(r[0]==1){c.active[0]=r[2]!=0;c.rank[0]=r[1];check(c.apply(0,r[3],100,0,0,true)==(r[4]!=0),"native negative priority");}else{c.buffTime[0]=r[2]*20;c.buffValue[0]=r[1];c.buff(0,100,r[3]);check(c.buffTime[0]==(r[4]!=0?101:r[2]*20),"native positive priority");}}
            }in.close();
        }
    }
    private static void trees()throws Exception{
        int[] counts={22,32,32,35,33};
        for(int job=0;job<9;job++){Campaign c=new Campaign();c.job=job;c.level=60;c.skillPoints=c.totalSkillPoints=60000;int[] ids=SkillTree.catalog(job);check(ids.length==counts[SkillTree.family(job)],"native catalog count");
            for(int pass=0;pass<40;pass++)for(int id:ids)c.train(id);
            for(int id:ids){SkillData d=new SkillData(id,c.skillRanks[id]&255);if((d.runtime[0]&255)<5||job>=5)check(d.rank>0,"every class node trainable "+job+"/"+id);}
            c.bind(7,0);ByteArrayOutputStream out=new ByteArrayOutputStream();c.write(new DataOutputStream(out));Campaign copy=Campaign.read(new DataInputStream(new ByteArrayInputStream(out.toByteArray())));check(copy.job==job&&Arrays.equals(copy.skillRanks,c.skillRanks)&&Arrays.equals(copy.bindings,c.bindings),"tree and binding save");
        }
        Campaign c=new Campaign();c.level=18;c.skillPoints=c.totalSkillPoints=100;check(c.accept(426),"choose sword master quest");check(!c.accept(423),"cannot accept conflicting path");check(c.finish(426),"native talk objective");check(c.accept(427),"native materials quest");c.bag.add(11,42,40);check(c.finish(427),"turnin transfers original reward");check(c.accept(428),"final transfer accepts native token");c.dungeon=7;c.difficulty=1;c.clearedDungeon();check(c.finish(428)&&c.job==1&&c.skillPoints==c.totalSkillPoints,"native sword master transfer refund");
    }
    private static void casts()throws Exception{
        for(int job=5;job<=8;job++)for(int id:SkillTree.catalog(job)){if(SkillTree.action(id)==255)continue;Battle b=new Battle(new Session());b.enter(0,1,0,0,180,250);b.campaign.job=job;b.campaign.level=60;b.campaign.skillRanks[id]=1;b.campaign.bindings[0]=id;b.campaign.bag.add(11,45,99);b.campaign.bag.add(3,1,1);b.campaign.bag.equip(3,1,60);b.refreshSkills();b.refreshStats();b.mp=b.maxMp;
            if(id>=37&&id<=39){Field f=Battle.class.getDeclaredField("frenzy");f.setAccessible(true);f.setBoolean(b,true);}
            b.skill(0);check(b.player.hero.animation.clip==SkillTree.action(id),"cast native action "+id);Battle resumed=Battle.decode(new Session(),b.encode());check(Arrays.equals(b.encode(),resumed.encode()),"cast save "+id);
            for(int i=0;i<100;i++){b.tick(0,30);resumed.tick(0,30);check(Arrays.equals(b.encode(),resumed.encode()),"cast continuation "+id+"/"+i);}b.draw(new Surface(240,320));
        }
    }
    private static void states()throws Exception{
        Conditions c=new Conditions(8);check(!c.apply(7,1,30,20,10,true),"strict chance boundary");check(c.apply(7,1,30,20,9,true)&&c.stopped(),"freeze blocks movement");int ticks=c.duration[7];for(int i=0;i<ticks;i++)c.tick();check(c.active[7],"native expiry checked before increment");c.tick();check(!c.stopped(),"freeze expires");c.apply(0,1,100,0,0,true);int damage=0;for(int i=0;i<73;i++)damage+=c.tick();check(damage==15,"five native bleed ticks of3");
        Battle b=new Battle(new Session());b.enter(12,2,3,2,100,230);b.campaign.level=60;b.refreshStats();b.hp=b.maxHp;Battle.Enemy e=b.enemies[0];e.conditions.apply(7,3,100,0,0,true);int x=e.x,y=e.y;b.tick(0,30);check(e.x==x&&e.y==y,"frozen AI stays still");Battle save=Battle.decode(new Session(),b.encode());check(Arrays.equals(b.encode(),save.encode()),"active statuses save");
        byte[] old=java.nio.file.Files.readAllBytes(new File("tests/fixtures/battle-v07.dnb").toPath());check(Battle.decode(new Session(),old).field==79,"actual0.7 legacy loads");
    }
    private static void behavior()throws Exception{
        Method fire=Battle.class.getDeclaredMethod("enemyBehavior",Battle.Enemy.class,Integer.TYPE);fire.setAccessible(true);
        Battle b=new Battle(new Session());b.enter(6,13,1,2,100,230);Battle.Enemy caster=b.enemies[0];fire.invoke(b,caster,0);check(caster.conditions.bonus(2)==4,"native group speed buff");int hpBefore=0;for(Battle.Enemy e:b.enemies){e.hp=1;hpBefore++;}fire.invoke(b,caster,1);int hpAfter=0;for(Battle.Enemy e:b.enemies)hpAfter+=e.hp;check(hpAfter==hpBefore+50,"original healing chooses an ally");
        b=new Battle(new Session());b.enter(36,3,9,2,100,230);caster=null;for(Battle.Enemy e:b.enemies)if(e.data.id==58)caster=e;check(caster!=null,"original summoner room");int before=b.enemies.length;fire.invoke(b,caster,3);check(b.enemies.length==before+1&&b.enemies[before].data.id==54,"summon native monster template");Battle restored=Battle.decode(new Session(),b.encode());check(Arrays.equals(b.encode(),restored.encode()),"summon save restores full entity list");
        b=new Battle(new Session());b.enter(13,1,4,2,100,230);for(Battle.Enemy e:b.enemies)if(e.data.id==27)caster=e;fire.invoke(b,caster,1);check(caster.aura!=null&&caster.aura.family==1,"original elemental aura family");restored=Battle.decode(new Session(),b.encode());for(int i=0;i<30;i++){b.tick(0,30);restored.tick(0,30);check(Arrays.equals(b.encode(),restored.encode()),"aura continuation");}
        b=new Battle(new Session());b.enter(35,2,9,2,100,230);caster=null;for(Battle.Enemy e:b.enemies)if(e.data.id==56)caster=e;check(caster!=null,"native teleport monster");fire.invoke(b,caster,2);check(caster.teleporting&&caster.actor.animation.clip==26,"native fade out");int x=caster.x,y=caster.y,tx=caster.teleportX,ty=caster.teleportY;boolean valid=b.player.world.canStand(tx,ty);restored=Battle.decode(new Session(),b.encode());for(int i=0;i<100&&caster.actor.animation.clip==26;i++){b.tick(0,30);restored.tick(0,30);check(Arrays.equals(b.encode(),restored.encode()),"teleport save continuation");}check(caster.actor.animation.clip==25&&caster.x==(valid?tx:x)&&caster.y==(valid?ty:y),"native teleport destination and fade in");
    }
    private static void transitions()throws Exception{
        int[] hp={31,44,31,57,49},mp={16,26,37,21,24};for(int job=0;job<9;job++)for(int level=1;level<=60;level++){int family=SkillTree.family(job);check(FieldRules.classHp(job,level,4,11,7)==hp[family]*level+32+11+7,"class HP growth");check(FieldRules.classMp(job,level,4,11,7)==mp[family]*level+20+12+11+7,"class MP growth");}
        Battle b=new Battle(new Session());b.enter(0,1,0,0,180,250);b.campaign.job=6;b.campaign.level=60;b.campaign.skillRanks[13]=b.campaign.skillRanks[42]=1;b.campaign.bindings[0]=13;b.campaign.bindings[1]=42;b.refreshSkills();b.refreshStats();b.mp=b.maxMp;b.campaign.bag.add(11,45,99);b.skill(0);for(int i=0;i<100&&b.player.hero.animation.clip!=0;i++)b.tick(0,30);
        Field fx=Battle.class.getDeclaredField("backEffects");fx.setAccessible(true);Actor[] actors=(Actor[])fx.get(b);check(actors[0]!=null&&actors[0].animation.active,"first circle remains after casting");b.skill(1);check(actors[0].animation.active&&actors[1]!=null&&actors[1].animation.active,"two circles coexist");Battle resumed=Battle.decode(new Session(),b.encode());for(int i=0;i<50;i++){b.tick(0,30);resumed.tick(0,30);check(Arrays.equals(b.encode(),resumed.encode()),"concurrent effects save continuation");}check(actors[0].animation.frame>0||actors[0].animation.elapsed>0,"first effect keeps advancing");
        b.conditions.apply(0,2,100,0,0,false);b.conditions.buff(0,100,30);int cooldown=b.skillCooldowns[42];b.enter(1,1,0,0,180,250);check(b.skillCooldowns[42]==cooldown&&b.conditions.active[0]&&b.conditions.bonus(0)==30,"room crossing retains cooldown and statuses");
    }
    /** Objective injection checks transactions, NOT a natural four-class playthrough. */
    private static void professionQuests()throws Exception{
        for(int branch=0;branch<4;branch++){Campaign c=new Campaign();c.level=60;c.gold=1000000;c.totalSkillPoints=c.skillPoints=2000;int job=new int[]{2,1,3,4}[branch];
            for(int phase=0;phase<2;phase++){int first=phase==0?423+3*branch:435+7*branch,last=first+(phase==0?3:7);
                for(int q=first;q<last;q++){for(int i=0;i<3;i++){int p=165+5*i;if(c.book.value(q,p)==3)c.bag.add(c.book.value(q,p+1),c.book.word(q,p+2),c.book.value(q,p+4));}check(c.accept(q),"profession quest accepts "+q);check(c.book.contact(q,true)[0]>=0,"original profession turn-in NPC "+q);
                    for(int i=0;i<3;i++){int p=180+6*i,t=c.book.value(q,p),a=c.book.word(q,p+1),b=c.book.word(q,p+3),n=c.book.value(q,p+5);if(t==1)c.bag.add(a,b,n);else if(t==2){c.dungeon=a;c.difficulty=b==6?0:b;for(int j=0;j<n;j++)c.clearedDungeon();}else if(t==3){c.difficulty=n==6?0:n;for(int j=0;j<b;j++)c.kill(new MonsterData(a+1,Assets.read(6,"bd")));}else if(t==17)c.trialPoints=a;}
                    check(c.finish(q),"profession quest settles "+q);
                }check(c.job==(phase==0?job:job+4),"correct profession/awakening branch");
            }
        }
    }
    public static void main(String[] args)throws Exception{fixtures();trees();casts();states();behavior();transitions();professionQuests();System.out.println("PASS skills/status "+checks+" checks; native fixtures, job transfers, casts, conditions, summons, healing and saves");}
}
