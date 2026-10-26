package dnf;
import java.io.*;
import java.util.*;
/** Expected values execute untouched ARM instructions; no expectations derived from Java. */
public final class CombatRulesTest {
    private static int checks;
    private static void check(boolean value,String message){checks++;if(!value)throw new AssertionError(message);}
    private static int[] row(String line){String[] s=line.split(",");int[] v=new int[s.length];for(int i=0;i<s.length;i++)v[i]=Integer.parseInt(s[i]);return v;}
    private static void fixtures()throws Exception {
        String[] names={"skill-ranks-arm","base-damage-arm","zone-choice-arm","skill-sp-arm","monster-slots-arm","monster-range-arm"};
        for(int f=0;f<names.length;f++){BufferedReader r=new BufferedReader(new FileReader("tests/fixtures/"+names[f]+".csv"));String line;
            while((line=r.readLine())!=null){if(line.startsWith("#"))continue;int[] v=row(line);
                if(f==0){SkillData skill=new SkillData(v[0],v[1]);for(int j=0;j<48;j++)check((skill.runtime[j]&255)==v[j+2],"ARM skill "+v[0]+" rank "+v[1]+" byte "+j);}
                else if(f==1)check(CombatRules.damage(v[0]!=0,v[1]!=0,v[2],v[3],v[4],v[5],v[6],v[7],v[8],v[9],v[10],v[11],v[12])==v[13],"ARM damage "+line);
                else if(f==2){Zone zone=new Zone(v[0]);final int pick=v[1];int[] choice=zone.choose(new Zone.Random(){public int next(int n){return pick%n;}});
                    for(int i=0;i<3;i++)for(int k=0;k<2;k++)check((zone.routes[choice[i]][i][k]&255)==v[2+i*2+k],"ARM route "+line);
                    check((zone.spawn[choice[0]][0]&65535)==v[8]&&(zone.spawn[choice[0]][1]&65535)==v[9],"ARM route spawn");
                }else if(f==3){Campaign c=new Campaign();c.level=v[0];c.xp=v[1];c.experience(v[2]);check(c.level==v[3]&&c.xp==v[4]&&c.skillPoints==v[5]&&c.totalSkillPoints==v[5],"ARM SP "+line);}
                else {MonsterData monster=new MonsterData(v[0],Assets.read(6,"bd"));if(f==4)check((monster.selectAttack(v[1])&255)==v[2],"ARM attack selection "+line);else check(monster.inRange(v[1],v[3],v[4],v[2]!=0)==(v[5]!=0),"ARM attack range "+line);}
            }r.close();
        }
    }
    private static Campaign copy(Campaign c)throws Exception{ByteArrayOutputStream out=new ByteArrayOutputStream();c.write(new DataOutputStream(out));return Campaign.read(new DataInputStream(new ByteArrayInputStream(out.toByteArray())));}
    public static void main(String[] args)throws Exception {
        fixtures();byte[] monsters=Assets.read(6,"bd");
        for(int id=1;id<=420;id++){MonsterData m=new MonsterData(id,monsters);check(m.hp>=0,"all original attack descriptors parse "+id);}
        MonsterData king=new MonsterData(46,monsters),kino=new MonsterData(25,monsters);
        check(king.behaviorId[0]==255&&king.attackWeight[0]==40&&king.behaviorId[2]==16&&king.behavior[2][0]==14,"king retains ordinary attacks; rage descriptor is NOT charge");
        check(kino.lightning(1)&&kino.lightning(2)&&!kino.lightning(0)&&kino.effect[1][4]==0&&kino.effect[2][4]==1,"Kino original two lightning animations");
        for(int slot=0;slot<3;slot++){int front=kino.range[slot][0],back=kino.range[slot][1],depth=kino.range[slot][2];check(kino.inRange(slot,front,depth,false)&&!kino.inRange(slot,front+1,depth,false),"right range boundary");check(kino.inRange(slot,-front,-depth,true)&&!kino.inRange(slot,-front-1,0,true),"left mirrored range boundary");check(!kino.inRange(slot,0,depth+1,false),"depth boundary");}
        Campaign c=new Campaign();c.level=60;c.skillPoints=c.totalSkillPoints=2000;
        for(int id:new int[]{6,9}){int cost=new SkillData(id,2).spCost;c.train(id);check(c.skillRanks[id]==2&&c.skillPoints==c.totalSkillPoints-cost,"native skill price");c.totalSkillPoints=c.skillPoints;}
        Campaign saved=copy(c);check(saved.skillRanks[6]==2&&saved.skillRanks[9]==2&&saved.skillPoints==c.skillPoints,"learned ranks persist");c.skillPoints=0;c.train(6);check(c.skillRanks[6]==2,"no free training");c.skillPoints=200;c.level=1;c.train(6);check(c.skillRanks[6]==2,"native training level prerequisite");
        Battle b=new Battle(new Session());b.enter(0,1,0,0,40,250);b.campaign.openingCheckpoint();check(b.campaign.bag.equipped(1,1),"native worn katana supplied at opening settlement");
        b.skill(0);check(b.player.hero.animation.clip==24&&b.ghost.actions.fraId==new Actor(30024,new Assets()).actions.fraId,"upper slash uses native24 effect");
        b.enter(0,1,0,0,40,250);b.mp=b.maxMp;b.skill(1);check(b.player.hero.animation.clip==32&&b.ghost.actions.fraId==new Actor(30032,new Assets()).actions.fraId,"ghost slash uses native32 effect");
        Battle restored=Battle.decode(new Session(),b.encode());check(Arrays.equals(b.encode(),restored.encode()),"new effect save roundtrip");
        int seen=0;for(int seed=0;seed<8;seed++){b.returnTown();b.seed=seed;b.startDungeon(1,0);seen|=1<<b.campaign.entryRoute;restored=Battle.decode(new Session(),b.encode());check(restored.campaign.entryRoute==b.campaign.entryRoute&&restored.campaign.bossRoute==b.campaign.bossRoute&&restored.campaign.gridX==b.campaign.gridX,"random route preserved");}
        check(seen==3,"both native entry routes selectable");
        byte[] legacy=new byte[(int)new File("tests/fixtures/battle-v06.dnb").length()];DataInputStream old=new DataInputStream(new FileInputStream("tests/fixtures/battle-v06.dnb"));old.readFully(legacy);old.close();Battle migrated=Battle.decode(new Session(),legacy);check(migrated.field==41&&migrated.stage==3&&migrated.campaign.skillRanks[9]==1&&!migrated.ghost.animation.active,"actual 677b963 DNB2 save migrates and retires obsolete effect");
        lightning();routeGraphs();
        System.out.println("PASS native combat rules "+checks+" checks; ranks, four damage branches, SP, routes and attack descriptors");
    }
    private static void shot(Battle b,String name)throws Exception {
        Surface surface=new Surface(240,320);b.draw(surface);java.awt.image.BufferedImage im=new java.awt.image.BufferedImage(240,320,java.awt.image.BufferedImage.TYPE_INT_RGB);for(int y=0;y<320;y++)for(int x=0;x<240;x++)im.setRGB(x,y,Surface.rgb(surface.pixels[y*240+x]));javax.imageio.ImageIO.write(im,"png",new File("build/"+name+".png"));
    }
    private static void lightning()throws Exception {
        for(int slot=1;slot<=2;slot++){
            Battle b=new Battle(new Session());b.enter(12,2,3,2,100,230);b.campaign.level=60;b.refreshStats();b.hp=b.maxHp;
            Battle.Enemy kino=null;for(Battle.Enemy e:b.enemies){if(e.data.id==25)kino=e;else e.dead=true;}
            check(kino!=null,"original Kino room");kino.actor.animation.start(0);kino.attackSlot=slot;kino.cooldown=0;b.player.x=kino.x+30;b.player.y=kino.y;
            b.tick(0,30);check(kino.effects[slot].animation.active&&kino.effects[slot].animation.clip==slot-1,"Kino spawns native targeted lightning "+slot);
            shot(b,"kino-lightning-"+slot);
            Battle restored=Battle.decode(new Session(),b.encode());check(Arrays.equals(b.encode(),restored.encode()),"lightning position/phase exact save");int health=b.hp;
            for(int tick=0;tick<36;tick++){if(kino.effects[slot].animation.active&&kino.effects[slot].animation.current().region!=null)shot(b,"kino-impact-"+slot);b.tick(0,30);restored.tick(0,30);check(Arrays.equals(b.encode(),restored.encode()),"lightning deterministic continuation");}
            check(b.hp<health,"native lightning effect deals damage");
        }
    }
    private static void routeGraphs()throws Exception {
        for(int id:Adventure.ZONES)for(int pick=0;pick<3;pick++){
            Zone z=new Zone(id);final int choice=pick;int[] indices=z.choose(new Zone.Random(){public int next(int n){return choice%n;}}),entry=z.routes[indices[0]][0],boss=z.routes[indices[1]][1];
            if(boss[2]<=0)continue;int goal=boss[2]*100+boss[3];HashSet<Integer> seen=new HashSet<Integer>();ArrayList<Integer> queue=new ArrayList<Integer>();queue.add(entry[2]*100+entry[3]);
            for(int pos=0;pos<queue.size()&&!seen.contains(goal);pos++){int key=queue.get(pos);if(!seen.add(key))continue;SceneData scene=new SceneData(key);for(int[] area:scene.areas)if(area[0]==1&&area[2]!=65535&&area[3]>0){int to=area[2]*100+area[3];if(!seen.contains(to))queue.add(to);}}
            check(seen.contains(goal),"selected boss reachable through original DS links zone "+id+" choice "+pick);
        }
    }
}
