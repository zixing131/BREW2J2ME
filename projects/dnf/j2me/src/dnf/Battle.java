package dnf;
import java.io.*;
/** Playable campaign field. Native facts and remaining adapters: docs/05-combat-missions.md. */
public final class Battle {
    public final Session player;
    public Campaign campaign;
    public boolean sceneChanged;
    private String conversation="";
    private int conversationQuest=-1,conversationAction,travelRequest;
    public SceneData scene;
    public Enemy[] enemies;
    public Actor[] props;
    public Actor ghost;
    public Actor companion;
    private Actor backEffect;
    private Actor[] effects,backEffects;
    private SkillData[] skills;
    private SkillData[] learned=new SkillData[75];
    public Conditions conditions;
    public final int[] skillCooldowns=new int[75];
    private int castingSkill=-1,backSerial,backFrame=-1;
    private boolean frenzy;
    private int effectSlot=1;
    // Coordinates and frame serials for the other bound skill, which can remain active.
    private final int[][] effectState=new int[2][6];
    private final boolean[] effectMirrors=new boolean[2];
    public int music=-1;
    private int lastDirection,lastPressMs=-1000;
    private boolean dashing;
    public int zone,field,stage,mode,quest=-1,questState,elapsedMs,pendingStory=-1;
    public int hp=100,maxHp=100,mp=100,maxMp=100,level=1,hitFlash,cameraX,cameraY;
    public int dialogue=-1,pageStart,pageEnd,seed=0x514e46,upperCooldown,ghostCooldown;
    public int target=-1,damageNumber,damageTicks,comboHits;
    private int serial,lastClip=-1,lastFrame=-1,ghostSerial,ghostX,ghostY,ghostFrame=-1;
    private boolean ghostMirror;
    private Assets assets;
    private Zone dungeonLayout;
    private Reactions reactions;
    public int menuRequest=-1;
    private int sound=-1;
    private boolean[] areaArmed;
    private int[] order,sortY;
    public static final class Enemy {
        public Actor actor;public MonsterData data;public Conditions conditions;
        public Actor aura;public int auraSlot=-1,auraElapsed,auraInterval;
        public int teleportX,teleportY;public boolean teleporting;
        public int x,y,hp,cooldown,attackSlot=-1,hitSerial=-1,ghostHitSerial=-1,backHitSerial=-1,flash,number,numberTicks;
        public boolean mirror,dead,landed;
        public int spareGhostHitSerial=-1,spareBackHitSerial=-1;
        public final Actor[] effects=new Actor[5];
        public final int[] effectX=new int[5],effectY=new int[5];
        public final boolean[] effectHit=new boolean[5],effectMirror=new boolean[5];
    }
    public Battle(Session player){this.player=player;}
    public boolean father(){return zone==11&&field==41&&stage==4;}
    public boolean tutorial(){return zone==11&&field==41&&(stage==3||stage==4);}
    public boolean supported(){return field==41&&(stage>=2&&stage<=4)||(zone==0&&(field>=0&&field<=5))||field==79&&stage==1||campaign!=null&&campaign.dungeon>0;}
    public void enter(int field,int stage,int zone,int mode,int x,int y)throws IOException {
        if(campaign==null)campaign=new Campaign();
        Assets a=new Assets();World world=new World(field,a);SceneData ds=new SceneData(field*100+stage);
        Actor hero=new Actor(field==41&&stage==4?1:0,a);if(field==41&&stage==4)hero.setFamily(1);
        byte[] monsters=Assets.read(6,"bd");Enemy[] list=new Enemy[ds.spawns.length];
        for(int i=0;i<list.length;i++){
            int[] spawn=ds.spawns[i],type=ds.types[spawn[1]];Enemy e=new Enemy();list[i]=e;
            e.data=new MonsterData(type[0],monsters);e.conditions=new Conditions(8);e.actor=new Actor(type[1],a);e.actor.setFamily(type[2]);
            for(int j=0;j<5;j++)if(e.data.stationary(j)){e.effects[j]=new Actor(Items.word(e.data.effect[j],2),a);e.effects[j].setFamily(e.data.effect[j][5]&255);e.effects[j].animation.active=false;}
            e.x=spawn[3];e.y=spawn[4];
            if(e.x<0||e.x>=world.width||e.y<0||e.y>=world.height){int[] safe=world.nearestStand(e.x,e.y);e.x=safe[0];e.y=safe[1];}
            e.hp=e.data.hp;e.dead=spawn[0]<100&&random(100)>=spawn[0];
        }
        Actor[] decorations=new Actor[ds.props.length];
        for(int i=0;i<decorations.length;i++){int[] type=ds.propTypes[ds.props[i][0]];decorations[i]=new Actor(type[2],a);decorations[i].setFamily(type[3]);}
        dungeonLayout=campaign.dungeon>0?new Zone(campaign.dungeon):null;
        this.field=field;this.stage=stage;this.zone=zone;this.mode=mode;assets=a;scene=ds;enemies=list;props=decorations;
        player.world=world;player.hero=hero;player.x=x;player.y=y;player.mirror=false;player.actionViewer=false;
        level=father()?60:campaign.level;quest=father()?463:stage==2&&field==41?0:-1;questState=0;elapsedMs=0;pendingStory=-1;dialogue=-1;
        for(int i=0;i<2;i++){for(int j=0;j<6;j++)effectState[i][j]=0;effectState[i][3]=effectState[i][5]=-1;effectMirrors[i]=false;}
        if(conditions==null)conditions=new Conditions(34);effects=null;backEffects=null;skills=null;effectSlot=1;castingSkill=-1;refreshSkills();reactions=new Reactions();
        serial=0;lastClip=-1;lastFrame=-1;ghostSerial=0;ghostFrame=-1;backSerial=0;backFrame=-1;ghostX=ghostY=0;ghostMirror=false;upperCooldown=skillCooldowns[skills[1].id];ghostCooldown=skillCooldowns[skills[2].id];target=-1;
        lastDirection=0;lastPressMs=-1000;dashing=false;hitFlash=0;damageTicks=0;comboHits=0;areaArmed=new boolean[ds.areas.length];order=new int[1+props.length+enemies.length];sortY=new int[order.length];conversation="";conversationQuest=-1;conversationAction=0;travelRequest=0;
        if(campaign.escortHp>0){campaign.escortX=x;campaign.escortY=y;}refreshStats();companion=null;ensureCompanion();
        if(!tutorial()&&campaign.dungeon>0&&campaign.cleared(field,stage))for(int i=0;i<enemies.length;i++){enemies[i].hp=0;enemies[i].dead=true;}
        refreshMusic();
    }
    public void refreshMusic()throws IOException {
        if(tutorial()||field==41&&stage==2)return;
        int group=campaign.dungeon>0?FieldRules.region(campaign.dungeon):mode,room=0;
        if(campaign.dungeon>0){mode=group;if(dungeonLayout==null)dungeonLayout=new Zone(campaign.dungeon);if(isBossRoom())room=1;
            int[] special=dungeonLayout.routes[campaign.specialRoute][2];if(special[2]==field&&special[3]==stage)room=2;}
        music=FieldRules.music(field,stage,group,room);
    }
    public void fromStory(Story s)throws IOException {
        int[] w=s.exitWords;
        if(campaign==null)campaign=new Campaign();
        if((w[2]==0||w[2]==20)&&campaign.dungeon>0){campaign.dungeon=0;campaign.newRun();}
        if(scene!=null&&field==w[0]&&stage==w[1]){player.x=w[4];player.y=w[5];pendingStory=-1;dialogue=-1;}else enter(w[0],w[1],w[2],w[3],w[4],w[5]);
        if(s.id==26){campaign.escortHp=100;campaign.escortX=player.x;campaign.escortY=player.y;ensureCompanion();}
        if(s.id==483&&campaign.state[259]==1)show("决战结束。巴隆和玛丽回到了斯顿雪域。\n选择一件通关奖励。",2,259);
        if(s.id>=0&&s.id<campaign.storySeen.length)campaign.storySeen[s.id]=true;
        if(s.id==5)campaign.finish(0);if(s.id>=11&&s.id<=13)campaign.openingCheckpoint();
        level=father()?60:campaign.level;
        // Native exitType 3 opens the quest window (0x4572c) before field updates resume.
        if(s.exitType==3&&w[6]==463){quest=463;dialogue=2;pageStart=pageEnd=0;}else if(s.exitType==3&&w[6]>0&&w[6]<campaign.state.length&&campaign.state[w[6]]==0){show(QuestBook.title(w[6])+"\n"+campaign.book.description(w[6],campaign),1,w[6]);}
    }
    private int random(int n){seed=seed*1103515245+12345;return ((seed>>>16)&32767)%n;}
    public int living(){int count=0;for(int i=0;i<enemies.length;i++)if(!enemies[i].dead)count++;return count;}
    public String objective(){
        if(field==41&&stage==2)return "调查日志：靠近书桌按5";
        if(field==41&&stage==3)return "击退研究员  "+(enemies.length-living())+" / "+enemies.length;
        if(father()){int sec=Math.max(0,(180000-elapsedMs+999)/1000);return "保护巴隆和玛丽  "+sec/60+":"+(sec%60<10?"0":"")+sec%60;}
        if(hp<=0)return "战斗失败 · 5返回城镇";
        if(zone==20)return campaign.state[2]==0?"斯顿雪域 · 与玛丽交谈":"向东前往赫顿玛尔";
        if(zone==0)return location()+" · 靠近人物按5交谈";
        return location()+" · 剩余敌人 "+living();
    }
    public String dialogueText(){
        if(dialogue==0)return "这好像是关于玛丽的研究日志……？！";
        if(dialogue==1)return "玛丽究竟发生了什么事……看来得读一读。";
        if(dialogue==2)return "德林登场\n操纵德林，保护巴隆和玛丽三分钟。\n5：攻击   1、3：技能\n按5开始任务。";
        return conversation;
    }
    public void confirm(){
        if(dialogue<0)return;
        if(pageEnd<dialogueText().length()){pageStart=pageEnd;return;}
        pageStart=pageEnd=0;
        if(dialogue>=3){
            int action=conversationAction,id=conversationQuest;dialogue=-1;conversationAction=0;
            if(action==1&&id>=0){if(!campaign.accept(id)){show("暂时无法接受委托，请检查等级和进行中的任务数量。",0,-1);return;}int event=campaign.book.story(id,false);if(event>=0)pendingStory=event;}
            else if(action==2&&id>=0){int old=campaign.level,oldJob=campaign.job;if(!campaign.finish(id,campaign.rewardChoice)){show("委托条件尚未满足。",0,-1);return;}level=campaign.level;if(campaign.job!=oldJob){try{refreshSkills();}catch(IOException e){show("技能资源读取失败，请保存后重试",0,-1);return;}refreshStats();}if(level>old){refreshStats();hp=maxHp;mp=maxMp;}show("委托完成："+QuestBook.title(id)+"\n经验 +"+campaign.book.reward(id,false)+"   金币 +"+campaign.book.reward(id,true),campaign.book.story(id,true)>=0?5:0,campaign.book.story(id,true));}
            else if(action==6)travelRequest=3;else if(action==5)pendingStory=id;else if(action==3)travelRequest=1;else if(action==4)travelRequest=2;
            sceneChanged=true;
        }
        else if(dialogue==2){dialogue=-1;questState=1;}
        else if(dialogue==0)dialogue=1;
        else{dialogue=-1;questState=2;pendingStory=5;}
    }
    public boolean interact(){
        for(int i=0;i<scene.areas.length;i++){int[] a=scene.areas[i];
            if(a[0]==2&&inside(a,player.x,player.y)&&field==41&&stage==2&&a[4]==130){dialogue=0;pageStart=pageEnd=0;quest=0;questState=1;return true;}

            if(a[0]==2&&inside(a,player.x,player.y)&&(zone==0||zone==20)){
                int npc=a[4]-100,id=campaign.book.find(field,stage,npc,campaign,true);boolean turnin=id>=0;
                if(id<0)id=campaign.book.find(field,stage,npc,campaign,false);
                if(id>=0){try{show(campaign.book.conversation(id,turnin,npc)+"\n\n【"+QuestBook.title(id)+"】\n"+campaign.book.description(id,campaign)+(turnin?"\n5：领取奖励":"\n5：接受委托"),turnin?2:1,id);}catch(IOException e){show("对白资源读取失败，请重新进入游戏。",0,-1);}}
                else if(npc==14){menuRequest=2;}else if(npc==1||npc==8){menuRequest=1;}else show(QuestBook.npcName(npc)+"\n"+(npc==14?"锻造需要材料。准备好后，再来找我吧。":"目前没有新的委托。看看任务手册，或去街道西边的幽暗密林继续冒险。"),0,-1);
                return true;
            }
        }return false;
    }
    public int rewardChoices(){return dialogue>=3&&conversationAction==2&&conversationQuest>=0?campaign.book.choiceCount(conversationQuest):0;}
    public String rewardLabel(){if(rewardChoices()==0)return "";int p=campaign.book.choiceOffset(conversationQuest,campaign.rewardChoice);return (campaign.rewardChoice+1)+"/"+rewardChoices()+" "+campaign.bag.items.name(campaign.book.value(conversationQuest,p),campaign.book.value(conversationQuest,p+1));}
    public void selectReward(int delta){int n=rewardChoices();if(n>0)campaign.rewardChoice=(campaign.rewardChoice+delta+n)%n;}
    public void show(String text,int action,int id){if(action==2)campaign.rewardChoice=0;conversation=text;conversationAction=action;conversationQuest=id;dialogue=3;pageStart=pageEnd=0;}
    public void journal(){show(campaign.journal(),0,-1);}
    public void dismiss(){if(dialogue>=3){dialogue=-1;conversationAction=0;pageStart=pageEnd=0;}}
    public String location(){if(zone==20)return "斯顿雪域";if(zone==0)return field==1?"赫顿玛尔北街":field==3?"赫顿玛尔南街":"赫顿玛尔";return Adventure.zoneName(zone)+" "+field+"-"+stage;}
    public String areaLabel(int[] a){if(a[0]==2)return QuestBook.npcName(a[4]-100)+" 5";if(a[0]==3)return "地下城入口";return a[0]==1?(zone==0||zone==20?"出口":"出口 · "+(living()==0?"开启":"封锁")):"";}
    private static boolean inside(int[] a,int x,int y){return x>=a[6]&&y>=a[7]&&x<=a[8]&&y<=a[9];}
    public void directionPressed(int direction){
        if(direction!=Session.LEFT&&direction!=Session.RIGHT)return;
        dashing=direction==lastDirection&&elapsedMs-lastPressMs<=300;
        lastDirection=direction;lastPressMs=elapsedMs;
    }
    public void attack(){if(dialogue>=0){confirm();return;}if(hp<=0){travelRequest=2;return;}if(pendingStory>=0)return;if(interact())return;if(conditions.stopped())return;
        int c=player.hero.animation.clip;
        if(c>=20&&c<=21){castingSkill=-1;player.hero.animation.nextOverride=c+1;}
        else if(c==0||c==2||c==3){castingSkill=-1;player.hero.animation.start(20);serial++;lastClip=20;lastFrame=-1;}
    }
    public void refreshSkills()throws IOException {
        SkillData[] next={new SkillData(0),new SkillData(father()?31:campaign.bindings[0],father()?1:campaign.skillRanks[campaign.bindings[0]]&255),new SkillData(father()?35:campaign.bindings[1],father()?1:campaign.skillRanks[campaign.bindings[1]]&255)};
        if(effects==null){effects=new Actor[2];backEffects=new Actor[2];}
        for(int i=0;i<2;i++)if(skills==null||next[i+1].id!=skills[i+1].id){int clip=SkillTree.action(next[i+1].id);ActionSet.Clip c=player.hero.actions.clips[clip];
            effects[i]=new Actor(c.boxB==null?30024:SkillTree.front(clip),assets);effects[i].animation.active=false;
            backEffects[i]=c.boxA==null?null:new Actor(SkillTree.back(clip),assets);if(backEffects[i]!=null)backEffects[i].animation.active=false;
        }
        skills=next;ghost=effects[effectSlot];backEffect=backEffects[effectSlot];
        for(int i=0;i<75;i++)learned[i]=campaign.skillRanks[i]==0?null:new SkillData(i,campaign.skillRanks[i]&255);
    }
    private void selectEffect(int slot){if(slot==effectSlot)return;int[] old=effectState[effectSlot];old[0]=ghostX;old[1]=ghostY;old[2]=ghostSerial;old[3]=ghostFrame;old[4]=backSerial;old[5]=backFrame;effectMirrors[effectSlot]=ghostMirror;
        int[] next=effectState[slot];ghostX=next[0];ghostY=next[1];ghostSerial=next[2];ghostFrame=next[3];backSerial=next[4];backFrame=next[5];ghostMirror=effectMirrors[slot];effectSlot=slot;ghost=effects[slot];backEffect=backEffects[slot];
        for(int i=0;i<enemies.length;i++){Enemy e=enemies[i];int n=e.ghostHitSerial;e.ghostHitSerial=e.spareGhostHitSerial;e.spareGhostHitSerial=n;n=e.backHitSerial;e.backHitSerial=e.spareBackHitSerial;e.spareBackHitSerial=n;}
    }
    public boolean casting(){if(castingSkill>=0&&player.hero.animation.clip!=0)return true;for(int i=0;effects!=null&&i<2;i++)if(effects[i].animation.active||backEffects[i]!=null&&backEffects[i].animation.active)return true;return false;}
    public String skillName(int slot){return SkillData.name(skills[slot+1].id);}
    public void skill(int which){
        if(which<0||which>1||dialogue>=0||pendingStory>=0||hp<=0||conditions.stopped())return;Animation a=player.hero.animation;SkillData skill=skills[which+1];
        boolean cancel=false;for(int id=54;id<=65;id++)if(learned[id]!=null)for(int i=0;i<3;i++)if(Items.word(learned[id].runtime,26+2*i)==skill.id)cancel=true;
        if(a.clip!=0&&a.clip!=2&&a.clip!=3&&!(a.clip>=20&&a.clip<=22&&cancel))return;
        if(!father()&&(skillCooldowns[skill.id]>0||mp<skill.cost||campaign.bag.count(11,45)<skill.crystals)){campaign.loot.notice=skillCooldowns[skill.id]>0?"技能冷却中":mp<skill.cost?"魔力不足":"无色小晶块不足";return;}
        if(!father()&&skill.id>=37&&skill.id<=39&&!frenzy){campaign.loot.notice="需要先开启血之狂暴";return;}
        if(!father()&&skill.id==26&&(campaign.bag.equipment[0]<0||campaign.bag.equipment[0]/256!=3)){campaign.loot.notice="里·鬼剑术需要光剑";return;}
        int clip;try{clip=SkillTree.action(skill.id);}catch(IOException e){return;}
        if(clip==255)return;
        if(!father()){mp-=skill.cost;campaign.bag.remove(11,45,skill.crystals);skillCooldowns[skill.id]=skill.cooldown*100;}
        upperCooldown=skillCooldowns[skills[1].id];ghostCooldown=skillCooldowns[skills[2].id];
        castingSkill=skill.id;a.start(clip);if(skill.id!=13&&skill.id!=41)castBonuses(skill);if(skill.id==36)frenzy=!frenzy;
        selectEffect(which);
        ghost.animation.active=false;if(player.hero.actions.clips[clip].boxB!=null)ghost.animation.start(0);
        if(backEffect!=null)backEffect.animation.start(0);
        ghostX=player.x;ghostY=player.y;ghostMirror=player.mirror;ghostSerial++;ghostFrame=-1;backSerial++;backFrame=-1;
        serial++;lastClip=a.clip;lastFrame=-1;sceneChanged=true;
    }
    private void castBonuses(SkillData skill){for(int i=0;i<3;i++){int p=24+8*i,code=skill.runtime[p]&255,time=Items.word(skill.runtime,p+2),value=Items.word(skill.runtime,p+4),buff=-1;
        if(code==62)buff=0;else if(code==63)buff=1;else if(code==65)buff=10;else if(code==66)buff=9;else if(code==82){buff=12;value=1;}else if(code>=83&&code<=87)buff=code-70;else if(code==89)buff=19;else if(code==94)buff=5;else if(code>=160&&code<=163)buff=code-130;
        if(buff>=0)conditions.buff(buff,time,value);
    }}
    /** Class growth at 0x1402fa4, HP 0x79e14 / MP 0x79c88; armor mastery remains separate. */
    public void refreshStats(){if(campaign==null||tutorial())return;int buff=conditions==null?0:conditions.bonus(3);maxHp=FieldRules.classHp(campaign.job,campaign.level,campaign.bag.bonus(3)+buff,campaign.bag.bonus(5),campaign.permanentHp);maxMp=FieldRules.classMp(campaign.job,campaign.level,campaign.bag.bonus(4)+buff,campaign.bag.bonus(6),campaign.permanentMp);hp=Math.min(hp,maxHp);mp=Math.min(mp,maxMp);}
    private void ensureCompanion()throws IOException {if(campaign.dungeon==23&&campaign.escortHp>0&&companion==null)companion=new Actor(20101,assets);}
    private void followCompanion()throws IOException {ensureCompanion();if(companion==null||campaign.escortHp<=0)return;int dx=player.x-campaign.escortX,dy=player.y-campaign.escortY;if(Math.abs(dx)>30&&player.world.canStand(campaign.escortX+(dx<0?-2:2),campaign.escortY))campaign.escortX+=dx<0?-2:2;if(Math.abs(dy)>8&&player.world.canStand(campaign.escortX,campaign.escortY+(dy<0?-1:1)))campaign.escortY+=dy<0?-1:1;companion.animation.tick();}
    public String useItem(int type,int id){if(hp<=0)return "倒下后不能使用物品";if(campaign.bag.count(type,id)==0)return "物品不足";
        Items items=campaign.bag.items;if(!items.usable(type,id))return "此物品的特殊效果尚未恢复";
        if(items.level(type,id)>campaign.level)return "等级不足";
        byte[] raw=items.data[type][id];int effect=raw[8]&255,amount=Items.word(raw,9);
        if(effect==60||effect==61){int old=effect==60?campaign.permanentHp:campaign.permanentMp;if(old>1000000-amount)return "属性已达上限";if(effect==60)campaign.permanentHp+=amount;else campaign.permanentMp+=amount;refreshStats();}
        else if(effect==119){if(campaign.level>=60)return "已达到最高等级";int old=campaign.level;campaign.experience(amount);level=campaign.level;refreshStats();if(level>old){hp=maxHp;mp=maxMp;}}
        else if(effect==118){if(mode==7)return "此场景不能使用";hp=FieldRules.coin(hp,maxHp,random(100),amount,Items.word(raw,11),Items.word(raw,13),tutorial());}
        else {
        int life=items.recovery(type,id,maxHp,false),mana=items.recovery(type,id,maxMp,true);
        if((life==0||hp==maxHp)&&(mana==0||mp==maxMp))return "无需恢复";
        hp=Math.min(maxHp,hp+life);mp=Math.min(maxMp,mp+mana);
        }
        campaign.bag.remove(type,id,1);sceneChanged=true;return "使用 "+campaign.bag.items.name(type,id);
    }
    public int takeSound(){int s=sound;sound=-1;return s;}
    private void motion(Actor actor){int id=reactions.sound(actor.animation.current().fields[5]&255,false);if(id>=0)sound=id;}
    private void damage(Enemy e,int amount)throws IOException{
        int previous=e.hp;
        e.hp=Math.max(0,e.hp-amount);e.flash=5;e.number=amount;e.numberTicks=24;comboHits++;target=indexOf(e);
        // Original death clip 19 must finish before the clear dispatcher runs (0x8a400).
        if(e.hp==0||e.conditions.bonus(6)==0&&e.actor.animation.current().boundsKind==1&&!((e.data.record[29]&255)==2&&e.actor.animation.clip==20)){
            e.actor.animation.start(e.hp==0?19:10);e.cooldown=15;e.attackSlot=-1;e.landed=false;
        }
        if(e.hp==0){e.actor.animation.nextOverride=255;for(int i=0;i<5;i++)if(e.effects[i]!=null)e.effects[i].animation.active=false;}
        for(int i=0;i<2;i++){int p=123+5*i,type=e.data.record[p]&255,arg=Items.word(e.data.record,p+1),limit=e.data.record[p+3]&255;boolean fire=type==4&&previous>e.data.hp*arg/100&&e.hp<=e.data.hp*arg/100;
            if(type==3&&arg>0){int step=e.data.hp*arg/100;if(step>0)fire=previous/step!=e.hp/step;}if(fire&&random(100)<=limit)enemyBehavior(e,i+3);}
        int hit=reactions.sound(player.hero.animation.current().fields[5]&255,true);if(hit>=0)sound=hit;
    }
    private int indexOf(Enemy e){for(int i=0;i<enemies.length;i++)if(enemies[i]==e)return i;return -1;}
    private int baseDamage(Enemy e,SkillData data,int part){
        if(part<1||part>3||data.school==255)return 0;int index=part-1;boolean magic=data.school==1;
        Inventory bag=campaign.bag;int weapon=bag.weaponStat(magic),weaponLevel=bag.weaponLevel();
        // Tutorial entry can precede the first quest settlement. Its original starter is a worn katana.
        if(tutorial()&&bag.equipment[0]<0){weapon=bag.items.stat(1,1,magic?1:0);weaponLevel=bag.items.level(1,1);}
        weapon+=conditions.bonus(13);int mastery=bag.equipment[0]<0?-1:50+bag.equipment[0]/256;if(mastery>=50&&mastery<=53&&learned[mastery]!=null)weapon+=weapon*Items.word(learned[mastery].runtime,26)/100;
        int span=(weaponLevel>>2)+1;
        int amount=CombatRules.damage(data.kind[index]!=0,magic,data.power[index],FieldRules.attribute(father()?0:campaign.job,level,magic?1:0)+bag.bonus(magic?2:1)+conditions.bonus(magic?1:0)+conditions.bonus(magic?32:31)+conditions.bonus(30),weapon,bag.bonus(magic?11:10)+conditions.bonus(magic?5:4),bag.bonus(14)+conditions.bonus(8),Items.word(e.data.record,magic?58:56),e.data.level,0,e.data.record[27]&255,span,random(2*span+1));
        if(e.conditions.active[4])amount+=Conditions.value(4,e.conditions.rank[4])*amount/100;
        for(int slot=0;slot<8;slot++)if(slot==0||slot==5||slot==6){int key=bag.equipment[slot];if(key>=0){byte[] r=bag.items.data[key/256][key%256];for(int i=0;i<3;i++){int p=15+7*i;amount+=onHit(e,r[p]&255,Items.word(r,p+1),Items.word(r,p+3),false);}}}
        for(int i=0;i<3;i++){int p=24+8*i;onHit(e,data.runtime[p]&255,Items.word(data.runtime,p+2),Items.word(data.runtime,p+4),true);}
        int crit=bag.bonus(15)+conditions.bonus(9)+(learned[66]==null?0:Items.word(learned[66].runtime,26));
        if(random(100)<Math.min(90,(2+crit)&255))amount+=(50+conditions.bonus(29))*amount/100;
        return Math.max(1,amount);
    }
    private int onHit(Enemy e,int code,int chance,int value,boolean skill){
        if(code>=25&&code<=36){int id=code-25;if(!skill||id==0||id==3||id==4||id==5||id==7||id==11)e.conditions.apply(id,value, chance,e.data.record[65]&255,random(100),true);}
        if(!skill){if(code==125&&random(100)<chance)return value;if(code==55&&random(100)<chance)return (int)((long)e.data.hp*value/100);if(code==56&&random(100)<=chance)hp=Math.min(maxHp,hp+value);if(code==57&&random(100)<=chance)mp=Math.min(maxMp,mp+value);}
        return 0;
    }
    private SkillData attackData(int clip){return castingSkill>=0?(castingSkill==skills[1].id?skills[1]:castingSkill==skills[2].id?skills[2]:skills[0]):skills[0];}
    public void tick(int keys,int milliseconds)throws IOException {
        if(travelRequest!=0){int request=travelRequest;travelRequest=0;if(request==1)startDungeon();else if(request==3){int nextField=stage==10?field+1:field,nextStage=stage==10?1:stage+1;enter(nextField,nextStage,36,7,80,239);standNearby();sceneChanged=true;}else returnTown();return;}
        if(dialogue>=0||pendingStory>=0||hp<=0)return;
        if(!tutorial()){int event=Adventure.mapStory(campaign,field,stage,0,-1,isBossRoom(),false);if(event>=0){pendingStory=event;sceneChanged=true;return;}}
        if(!father())level=campaign.level;
        if(!tutorial()&&campaign.dungeon>0){campaign.runMillis=Math.min(86400000,campaign.runMillis+milliseconds);if(campaign.loot.pickup(campaign,field,stage,player.x,player.y))sceneChanged=true;}
        elapsedMs+=milliseconds;for(int i=0;i<75;i++)skillCooldowns[i]=Math.max(0,skillCooldowns[i]-milliseconds);upperCooldown=skillCooldowns[skills[1].id];ghostCooldown=skillCooldowns[skills[2].id];
        int poison=conditions.tick();if(!tutorial())hp=Math.max(0,hp-poison);if(hp==0)return;
        if(hitFlash>0)hitFlash--;if(damageTicks>0)damageTicks--;
        Animation a=player.hero.animation;
        if(!conditions.stopped()&&(a.clip==0||a.clip==2||a.clip==3)){
            int dx=((keys&Session.RIGHT)!=0?1:0)-((keys&Session.LEFT)!=0?1:0),dy=((keys&Session.DOWN)!=0?1:0)-((keys&Session.UP)!=0?1:0);
            if(dx==0)dashing=false;
            if(dx!=0||dy!=0){if(dx!=0)player.mirror=dx<0;int clip=dashing?3:2;if(a.clip!=clip){a.start(clip);castingSkill=-1;}move(dx,dy,Math.max(0,(dashing?6:3)+conditions.bonus(10)-conditions.slow()));}else if(a.clip!=0)a.start(0);
        }
        if(a.clip!=lastClip){serial++;lastClip=a.clip;lastFrame=-1;}
        if(a.frame!=lastFrame){motion(player.hero);lastFrame=a.frame;serial++;}
        int selectedEffect=effectSlot;for(int slot=0;slot<2;slot++){selectEffect(slot);
        if(ghost.animation.active&&ghost.animation.frame!=ghostFrame){ghostSerial++;ghostFrame=ghost.animation.frame;motion(ghost);}
        if(backEffect!=null&&backEffect.animation.active&&backEffect.animation.frame!=backFrame){backSerial++;backFrame=backEffect.animation.frame;motion(backEffect);}
        if(backEffect!=null&&backEffect.animation.active&&(skills[effectSlot+1].id==13||skills[effectSlot+1].id==41)&&HitBox.hits(backEffect,ghostX,ghostY,ghostMirror,player.hero,player.x,player.y,player.mirror))castBonuses(skills[effectSlot+1]);
        }selectEffect(selectedEffect);
        for(int i=0;i<enemies.length;i++){
            Enemy e=enemies[i];if(e.flash>0)e.flash--;if(e.numberTicks>0)e.numberTicks--;
            if(e.dead)continue;
            if(e.hp>0&&e.hitSerial!=serial&&HitBox.hits(player.hero,player.x,player.y,player.mirror,e.actor,e.x,e.y,e.mirror)){
                e.hitSerial=serial;int amount=baseDamage(e,attackData(a.clip),a.current().regionKind);if(amount>0)damage(e,amount);
            }
            for(int slot=0;slot<2;slot++){selectEffect(slot);
            if(e.hp>0&&ghost.animation.active&&e.ghostHitSerial!=ghostSerial&&HitBox.hits(ghost,ghostX,ghostY,ghostMirror,e.actor,e.x,e.y,e.mirror)){
                e.ghostHitSerial=ghostSerial;int amount=baseDamage(e,skills[effectSlot+1],ghost.animation.current().regionKind);if(amount>0)damage(e,amount);
            }
            if(e.hp>0&&backEffect!=null&&backEffect.animation.active&&e.backHitSerial!=backSerial&&HitBox.hits(backEffect,ghostX,ghostY,ghostMirror,e.actor,e.x,e.y,e.mirror)){
                e.backHitSerial=backSerial;int amount=baseDamage(e,skills[effectSlot+1],backEffect.animation.current().regionKind);if(amount>0)damage(e,amount);
            }
            }selectEffect(selectedEffect);
            enemyTick(e);
        }
        followCompanion();
        if(!conditions.stopped())a.tick();if(!a.active){a.start(0);castingSkill=-1;}
        for(int slot=0;slot<2;slot++){if(effects[slot].animation.active)effects[slot].animation.tick();if(backEffects[slot]!=null&&backEffects[slot].animation.active)backEffects[slot].animation.tick();}
        for(int i=0;i<props.length;i++)props[i].animation.tick();
        if(enemies.length>0&&living()==0){if(zone==11&&field==41&&stage==3){campaign.finish(1);pendingStory=6;}else if(father()){questState=2;pendingStory=8;}}
        if(!tutorial()&&campaign.dungeon>0&&living()==0&&!campaign.cleared(field,stage)){
            campaign.clear(field,stage);sceneChanged=true;int event=Adventure.mapStory(campaign,field,stage,1,-1,isBossRoom(),true);if(event>=0)pendingStory=event;
            if(campaign.dungeon==36&&field>=136&&field<=140){int[] points={1,1,1,1,3,2,2,2,2,4,3,3,3,3,5,6,6,6,6,8,7,7,7,7,9,8,8,8,8,10,9,9,9,9,11,10,10,10,10,12,11,11,11,11,15};int floor=(field-136)*10+stage;if(floor>=1&&floor<=45)campaign.trialPoints+=points[floor-1];hp=Math.min(maxHp,hp+maxHp/10);mp=Math.min(maxMp,mp+maxMp/10);if(floor<45){show("死亡之塔第 "+floor+" 层通过\n累计积分："+campaign.trialPoints+"\n5：挑战下一层",6,-1);return;}}
            if(isBossRoom()){campaign.clearedDungeon();show("地下城通关！\n"+Adventure.zoneName(campaign.dungeon)+" · "+Adventure.difficultyName(campaign.difficulty)+"\n回城交付委托，或再次挑战。\n5：返回城镇",4,-1);}
        }
        if(father()&&elapsedMs>=180000){questState=2;pendingStory=8;}
        // Gate exits are edge-triggered; loading inside a gate never immediately bounces back.
        for(int i=0;i<scene.areas.length;i++){int[] ar=scene.areas[i];boolean within=inside(ar,player.x,player.y);
            if(!within)areaArmed[i]=true;
            if(within&&areaArmed[i]){
                if(ar[0]==1&&(zone==0||zone==20||living()==0)){travel(ar);return;}
                if(ar[0]==3&&(zone==0||zone==20)){areaArmed[i]=false;menuRequest=3;return;}
            }
        }
    }
    private boolean isBossRoom()throws IOException {
        if(campaign.dungeon<=0)return false;if(campaign.dungeon==36)return field==140&&stage==5;
        if(field==campaign.bossField&&stage==campaign.bossStage)return true;
        if(campaign.bossField==0)for(int i=0;i<enemies.length;i++)if((enemies[i].data.record[29]&255)==2)return true;
        return false;
    }
    private void travel(int[] exit)throws IOException {
        if(exit[2]==65535)return;
        SceneData targetScene=new SceneData(exit[2]*100+exit[3]);int[] gate=null;
        for(int i=0;i<targetScene.areas.length;i++)if(targetScene.areas[i][1]==exit[4]){gate=targetScene.areas[i];break;}
        if(gate==null)throw new IOException("Missing destination gate "+exit[4]);
        int nextZone=zone,nextMode=mode;if(zone==0||zone==20){nextZone=exit[2]==79?20:0;nextMode=exit[5];}
        if(campaign.dungeon>0&&campaign.gridX>=0){if(exit[5]==1)campaign.gridY--;else if(exit[5]==2)campaign.gridX++;else if(exit[5]==3)campaign.gridY++;else if(exit[5]==4)campaign.gridX--;}
        enter(exit[2],exit[3],nextZone,nextMode,(gate[6]+gate[8])/2,(gate[7]+gate[9])/2);standNearby();sceneChanged=true;
    }
    private void standNearby()throws IOException {
        if(player.world.canStand(player.x,player.y))return;
        int x=player.x,y=player.y;
        for(int radius=1;radius<=32;radius++)for(int dx=-radius;dx<=radius;dx++)for(int dy=-radius;dy<=radius;dy++)if(Math.abs(dx)==radius||Math.abs(dy)==radius){
            if(player.world.canStand(x+dx,y+dy)){player.x=x+dx;player.y=y+dy;return;}}
        throw new IOException("No walkable gate entrance");
    }
    public void startDungeon()throws IOException {startDungeon(1,0);}
    public void startDungeon(int dungeon,int difficulty)throws IOException {
        if(campaign.dungeon>0||difficulty<0||difficulty>3)throw new IOException("Dungeon entry state");
        Zone z=new Zone(dungeon);int[] choice=z.choose(new Zone.Random(){public int next(int n){return random(n);}}),entry=z.routes[choice[0]][0],boss=z.routes[choice[1]][1];
        campaign.returnField=field;campaign.returnStage=stage;campaign.returnZone=zone;campaign.returnMode=mode;campaign.returnX=player.x;campaign.returnY=player.y;
        campaign.newRun();campaign.entryRoute=choice[0];campaign.bossRoute=choice[1];campaign.specialRoute=choice[2];campaign.gridX=entry[0];campaign.gridY=entry[1];campaign.dungeon=dungeon;campaign.difficulty=difficulty;campaign.bossField=boss[2];campaign.bossStage=boss[3];
        enter(entry[2],entry[3],dungeon,FieldRules.region(dungeon),z.spawn[choice[0]][0],z.spawn[choice[0]][1]);standNearby();sceneChanged=true;
    }
    /** Recovery adapter: retreat keeps earned progress, ends this run and restores health. */
    public void returnTown()throws IOException {
        int f=campaign.returnField,st=campaign.returnStage,z=campaign.returnZone,m=campaign.returnMode,x=campaign.returnX,y=campaign.returnY;
        campaign.dungeon=0;campaign.newRun();conditions=null;frenzy=false;for(int i=0;i<75;i++)skillCooldowns[i]=0;enter(f,st,z,m,x,y);hp=maxHp;mp=maxMp;standNearby();sceneChanged=true;
    }
    private void move(int dx,int dy,int steps){for(int i=0;i<steps;i++){
        if(player.world.canStand(player.x+dx,player.y))player.x+=dx;
        if(player.world.canStand(player.x,player.y+dy))player.y+=dy;
    }}
    private void enemyTick(Enemy e)throws IOException {
        Animation a=e.actor.animation;
        tickEnemyEffects(e);tickAura(e);
        if(e.hp>0){int dot=e.conditions.tick();if(dot>0){e.hp=Math.max(0,e.hp-dot);e.number=dot;e.numberTicks=12;if(e.hp==0){a.start(19);a.nextOverride=255;}}}
        if(e.hp>0&&e.conditions.stopped())return;
        if(e.hp<=0){a.tick();if(!a.active||a.clip!=19){e.dead=true;if(!tutorial()){int old=campaign.level;campaign.kill(e.data);campaign.loot.defeated(campaign,e.data,field,stage,e.x,e.y);sceneChanged=true;int event=Adventure.mapStory(campaign,field,stage,2,e.data.id,isBossRoom(),false);if(event>=0)pendingStory=event;level=campaign.level;if(level>old){refreshStats();hp=maxHp;mp=maxMp;}}}return;}
        if(e.cooldown>0)e.cooldown--;
        if(e.teleporting){int clip=a.clip;a.tick();if(!a.active||a.clip!=clip){if(clip==26){if(player.world.canStand(e.teleportX,e.teleportY)){e.x=e.teleportX;e.y=e.teleportY;}e.mirror=player.x<=e.x;a.start(25);}else{e.teleporting=false;e.attackSlot=-1;e.cooldown=12;a.start(0);}}return;}
        if(a.clip==10||a.clip==20||a.clip==21){a.tick();if(!a.active)a.start(0);return;}
        int attack=e.attackSlot<0?-1:e.data.attackClip[e.attackSlot];
        if(a.clip==attack){
            if(!e.landed&&HitBox.hits(e.actor,e.x,e.y,e.mirror,player.hero,player.x,player.y,player.mirror)){
                e.landed=true;int defence=campaign.bag.defence();damageNumber=Math.max(1,e.data.attackDamage[e.attackSlot]*(100-Math.min(99,100*defence/(80*campaign.level+150)))/100);damageTicks=18;hitFlash=5;
                if(!tutorial())hp=Math.max(0,hp-damageNumber);
            }
            if(!e.landed&&companion!=null&&campaign.escortHp>0&&HitBox.hits(e.actor,e.x,e.y,e.mirror,companion,campaign.escortX,campaign.escortY,false)){e.landed=true;campaign.escortHp=Math.max(0,campaign.escortHp-e.data.attackDamage[e.attackSlot]);sceneChanged=true;if(campaign.escortHp==0)campaign.loot.notice="护送失败，请回城后重新挑战";}
            a.tick();if(a.clip!=attack||!a.active){e.cooldown=12;e.attackSlot=-1;if(!a.active)a.start(0);}return;
        }
        int dx=player.x-e.x,dy=player.y-e.y;if(companion!=null&&campaign.escortHp>0&&Math.abs(campaign.escortX-e.x)+Math.abs(campaign.escortY-e.y)<Math.abs(dx)+Math.abs(dy)){dx=campaign.escortX-e.x;dy=campaign.escortY-e.y;}e.mirror=dx<0;
        if(e.cooldown==0){
            if(e.attackSlot<0){e.attackSlot=e.data.selectAttack(random(100));if(e.attackSlot<0)e.cooldown=12;}
            if(e.data.inRange(e.attackSlot,dx,dy,e.mirror)){
                int clip=e.data.attackClip[e.attackSlot];if(clip!=255&&clip<a.actions.clips.length&&a.actions.clips[clip].frames.length>0){a.start(clip);e.landed=false;startEnemyEffect(e);motion(e.actor);return;}
            }
        }
        // Ordinary chase adapter; native weighted wandering/skill AI is tracked separately.
        if(e.cooldown==0){int reach=e.attackSlot<0?25:Math.min(25,e.data.range[e.attackSlot][0]),depth=e.attackSlot<0?3:Math.min(3,e.data.range[e.attackSlot][2]);int sx=dx>reach?1:dx< -reach?-1:0,sy=dy>depth?1:dy< -depth?-1:0;
            if(sx!=0||sy!=0){if(a.clip!=23)a.start(23);int speed=Math.max(0,1+e.conditions.bonus(2)-e.conditions.slow());for(int step=0;step<speed;step++){if(player.world.canStand(e.x+sx,e.y))e.x+=sx;if(player.world.canStand(e.x,e.y+sy))e.y+=sy;}}
            else if(a.clip!=0)a.start(0);
        }a.tick();if(!a.active)a.start(0);
    }
    /** 0x8337c/832c8: original stationary lightning at attacker or target coordinates. */
    private void startEnemyEffect(Enemy e)throws IOException{enemyBehavior(e,e.attackSlot);}
    private void enemyBehavior(Enemy e,int slot)throws IOException{if(slot<0)return;byte[] data=e.data.behavior[slot];if(data==null)return;int type=data[0]&255;
        if(type>=12&&type<=19){int mode=data[5]&255,buff=type-12,first=indexOf(e);if(mode==2){for(int i=0;i<enemies.length;i++)if(!enemies[i].dead&&enemies[i].hp>0)first=i;}else if(mode==1){for(int i=0;i<enemies.length;i++)if(!enemies[i].dead&&enemies[i].hp>0&&enemies[i].conditions.buffTime[buff]==0){first=i;break;}}else if(mode==4){for(int i=0;i<enemies.length;i++)if(enemies[i].data.id==Items.word(data,11)&&!enemies[i].dead){first=i;break;}}
            for(int i=0;i<enemies.length;i++)if((mode==3||i==first)&&enemies[i].hp>0&&!enemies[i].dead)enemies[i].conditions.buff(buff,Items.word(data,1),Items.word(data,3));return;}
        if(type>=7&&type<=10){e.auraSlot=slot;e.auraElapsed=e.auraInterval=0;e.aura=new Actor(36105,assets);e.aura.setFamily(type-7);return;}
        if(type==1){summon(e,slot);return;}
        if(type==2){int mode=Items.word(data,3),chosen=indexOf(e);if(mode==1){int[] ids=new int[enemies.length];int n=0;for(int i=0;i<enemies.length;i++)if(enemies[i]!=e&&enemies[i].hp>0&&!enemies[i].dead)ids[n++]=i;if(n>0)chosen=ids[random(n)];}else if(mode==2){for(int i=0;i<enemies.length;i++)if(enemies[i].hp>0&&!enemies[i].dead)chosen=i;}
            for(int i=0;i<enemies.length;i++){Enemy t=enemies[i];if(!t.dead&&t.hp>0&&(mode==3||mode==4&&t.data.id==Items.word(data,11)||mode<3&&i==chosen)){t.hp=Math.min(t.data.hp,t.hp+Items.word(data,1));e.effectX[slot]=t.x;e.effectY[slot]=t.y+1;}}
            if(e.effects[slot]!=null)e.effects[slot].animation.start(e.data.effect[slot][4]&255);return;}
        if(type==3){e.hp=Math.max(0,e.hp-Items.word(data,1));if(e.hp==0){e.actor.animation.start(19);e.actor.animation.nextOverride=255;}return;}
        // 0x87cf0 / 87638 case15 / 8a400: fade out, try destination, fade in.
        if(type==4&&Items.word(data,1)==15&&e.actor.actions.clips.length>26){int rx=data[3]&255,ry=data[5]&255;e.teleportX=e.x+(random(100)>49?-1:1)*(rx==0?0:random(rx));e.teleportY=e.y+(random(100)>49?-1:1)*(ry==0?0:random(ry));e.teleporting=true;e.attackSlot=-1;e.actor.animation.start(26);return;}
        if(e.effects[slot]==null)return;
        boolean atTarget=data[8]==1;int x=atTarget?player.x:e.x,y=atTarget?player.y:e.y;boolean mirror=atTarget?player.mirror:e.mirror;
        e.effectX[slot]=x+(mirror?-1:1)*Items.word(data,9);e.effectY[slot]=y+Items.word(data,11);e.effectMirror[slot]=mirror;e.effectHit[slot]=false;e.effects[slot].animation.start(e.data.effect[slot][4]&255);
    }
    private Enemy makeSummon(int id)throws IOException{int[] type=null;for(int i=0;i<scene.types.length;i++)if(scene.types[i][0]==id)type=scene.types[i];if(type==null)return null;Enemy e=new Enemy();e.data=new MonsterData(id,Assets.read(6,"bd"));e.actor=new Actor(type[1],assets);e.actor.setFamily(type[2]);e.conditions=new Conditions(8);e.hp=e.data.hp;for(int j=0;j<5;j++)if(e.data.stationary(j)){e.effects[j]=new Actor(Items.word(e.data.effect[j],2),assets);e.effects[j].setFamily(e.data.effect[j][5]&255);e.effects[j].animation.active=false;}return e;}
    private void summon(Enemy caster,int slot)throws IOException{byte[] b=caster.data.behavior[slot];int count=b[5]&255;for(int n=0;n<count;n++){int at=enemies.length;for(int i=scene.spawns.length;i<enemies.length;i++)if(enemies[i].dead){at=i;break;}if(at>=Math.max(12,scene.spawns.length))break;Enemy e=makeSummon(Items.word(b,1));if(e==null)break;int x=b[6]==1?caster.x:player.x,y=b[6]==1?caster.y:player.y,rx=b[7]&255,ry=b[8]&255;int[] safe=player.world.nearestStand(x+(rx==0?0:random(2*rx)-rx),y+(ry==0?0:random(2*ry)-ry));e.x=safe[0];e.y=safe[1];e.mirror=player.x<=e.x;if(e.actor.actions.clips.length>21&&e.actor.actions.clips[21].frames.length>0)e.actor.animation.start(21);
            if(at==enemies.length){Enemy[] grown=new Enemy[at+1];System.arraycopy(enemies,0,grown,0,at);enemies=grown;}enemies[at]=e;
        }order=new int[1+props.length+enemies.length];sortY=new int[order.length];caster.hp=Math.max(0,caster.hp-Items.word(b,3));if(caster.hp==0){caster.actor.animation.start(19);caster.actor.animation.nextOverride=255;}}
    /** 0x716c0/755a8/88a14: persistent elemental aura, original 36105 families. */
    private void tickAura(Enemy e){if(e.auraSlot<0||e.aura==null)return;byte[] b=e.data.behavior[e.auraSlot];if(e.hp<=0||e.auraElapsed>=Items.word(b,1)){e.auraSlot=-1;e.aura=null;return;}
        if(e.auraInterval>=(b[8]&255)){e.auraInterval=0;if(HitBox.hits(e.aura,e.x,e.y,e.mirror,player.hero,player.x,player.y,player.mirror)){
            int element=(b[0]&255)-6,resist=campaign.bag.bonus(19+element)+conditions.bonus(22+element);int amount=Math.max(1,Items.word(b,3)*(100-Math.min(200,resist)/3)/100-conditions.bonus(16));damageNumber=amount;damageTicks=18;hitFlash=5;if(!tutorial())hp=Math.max(0,hp-amount);
            int state=b[6]&255;if(conditions.bonus(12)==0&&!(conditions.bonus(27)>0&&state==7))conditions.apply(state,b[7]&255,b[5]&255,campaign.bag.bonus(37+state),random(100),false);
        }}e.auraInterval=(e.auraInterval+1)&255;e.auraElapsed++;e.aura.animation.tick();if(!e.aura.animation.active)e.aura.animation.start(0);
    }
    private void tickEnemyEffects(Enemy e){for(int slot=0;slot<5;slot++){Actor effect=e.effects[slot];if(effect==null||!effect.animation.active)continue;
        if(e.data.behavior[slot][0]==0&&!e.effectHit[slot]&&HitBox.hits(effect,e.effectX[slot],e.effectY[slot],e.effectMirror[slot],player.hero,player.x,player.y,player.mirror)){
            e.effectHit[slot]=true;int defence=campaign.bag.defence();damageNumber=Math.max(1,e.data.attackDamage[Math.min(2,slot)]*(100-Math.min(99,100*defence/(80*campaign.level+150)))/100);damageTicks=18;hitFlash=5;if(!tutorial())hp=Math.max(0,hp-damageNumber);
        }if(effect.animation.elapsed==0)motion(effect);effect.animation.tick();
    }}
    public void draw(Surface s){
        cameraX=Math.max(0,Math.min(player.world.width-s.w,player.x-s.w/2));cameraY=Math.max(0,Math.min(player.world.height-s.h,player.y-s.h/2));
        player.world.draw(s,cameraX,cameraY);for(int slot=0;slot<2;slot++)if(backEffects[slot]!=null&&backEffects[slot].animation.active)backEffects[slot].draw(s,(slot==effectSlot?ghostX:effectState[slot][0])-cameraX,(slot==effectSlot?ghostY:effectState[slot][1])-cameraY,slot==effectSlot?ghostMirror:effectMirrors[slot]);int n=0;
        for(int i=0;i<props.length;i++){order[n]=i;sortY[n++]=scene.props[i][3];}
        for(int i=0;i<enemies.length;i++)if(!enemies[i].dead){order[n]=props.length+i;sortY[n++]=enemies[i].y;}
        order[n]=props.length+enemies.length;sortY[n++]=player.y;
        for(int i=1;i<n;i++){int id=order[i],y=sortY[i],j=i;while(j>0&&sortY[j-1]>y){order[j]=order[j-1];sortY[j]=sortY[j-1];j--;}order[j]=id;sortY[j]=y;}
        for(int j=0;j<n;j++){int i=order[j];if(i<props.length)props[i].draw(s,scene.props[i][2]-cameraX,scene.props[i][3]-cameraY,false);
            else if(i<props.length+enemies.length){Enemy e=enemies[i-props.length];e.actor.draw(s,e.x-cameraX,e.y-cameraY,e.mirror,e.flash>0?16:0);}
            else player.hero.draw(s,player.x-cameraX,player.y-cameraY,player.mirror,hitFlash>0?12:0);
        }
        if(companion!=null&&campaign.escortHp>0)companion.draw(s,campaign.escortX-cameraX,campaign.escortY-cameraY,false);
        for(int i=0;i<enemies.length;i++){Enemy e=enemies[i];for(int j=0;j<5;j++)if(e.effects[j]!=null&&e.effects[j].animation.active)e.effects[j].draw(s,e.effectX[j]-cameraX,e.effectY[j]-cameraY,e.effectMirror[j]);}
        for(int i=0;i<enemies.length;i++){Enemy e=enemies[i];if(!e.dead&&e.aura!=null)e.aura.draw(s,e.x-cameraX,e.y-cameraY,e.mirror);}
        for(int slot=0;slot<2;slot++)if(effects[slot].animation.active)effects[slot].draw(s,(slot==effectSlot?ghostX:effectState[slot][0])-cameraX,(slot==effectSlot?ghostY:effectState[slot][1])-cameraY,slot==effectSlot?ghostMirror:effectMirrors[slot]);
    }
    private static void animation(DataOutputStream d,Animation a)throws IOException {d.writeInt(a.clip);d.writeInt(a.frame);d.writeInt(a.elapsed);d.writeInt(a.nextOverride);d.writeBoolean(a.active);d.writeBoolean(a.finished);}
    private static void animation(DataInputStream d,Animation a)throws IOException {
        int clip=d.readInt(),frame=d.readInt(),elapsed=d.readInt(),next=d.readInt();boolean active=d.readBoolean(),finished=d.readBoolean();
        if(clip<0||clip>=a.actions.clips.length||frame<0||frame>=a.actions.clips[clip].frames.length||elapsed<0||elapsed>255||next<0||next>255)throw new IOException("Battle animation");
        a.start(clip);a.frame=frame;a.elapsed=elapsed;a.duration=a.current().duration;a.nextOverride=next;a.active=active;a.finished=finished;
    }
    public byte[] encode()throws IOException {
        ByteArrayOutputStream b=new ByteArrayOutputStream();DataOutputStream d=new DataOutputStream(b);d.writeInt(0x444e4234);campaign.write(d);d.writeInt(enemies.length);for(int i=0;i<enemies.length;i++)d.writeShort(enemies[i].data.id);
        int[] state={field,stage,zone,mode,player.x,player.y,hp,maxHp,mp,maxMp,quest,questState,elapsedMs,pendingStory,dialogue,pageStart,pageEnd,seed,upperCooldown,ghostCooldown,serial,lastClip,lastFrame,ghostSerial,ghostX,ghostY,ghostFrame,effectSlot,music,lastDirection,lastPressMs,dashing?1:0};
        for(int i=0;i<state.length;i++)d.writeInt(state[i]);d.writeBoolean(player.mirror);d.writeBoolean(ghostMirror);animation(d,player.hero.animation);animation(d,ghost.animation);if(backEffect!=null)animation(d,backEffect.animation);
        d.writeInt(enemies.length);for(int i=0;i<enemies.length;i++){Enemy e=enemies[i];d.writeInt(e.x);d.writeInt(e.y);d.writeInt(e.hp);d.writeInt(e.cooldown);d.writeInt(e.attackSlot);d.writeInt(e.hitSerial);d.writeInt(e.ghostHitSerial);d.writeBoolean(e.mirror);d.writeBoolean(e.dead);d.writeBoolean(e.landed);animation(d,e.actor.animation);}
        for(int i=0;i<props.length;i++)animation(d,props[i].animation);for(int i=0;i<areaArmed.length;i++)d.writeBoolean(areaArmed[i]);
        campaign.write(d);d.writeUTF(conversation);d.writeInt(conversationQuest);d.writeInt(conversationAction);d.writeInt(travelRequest);
        for(int i=0;i<enemies.length;i++){Enemy e=enemies[i];for(int j=0;j<5;j++)if(e.effects[j]!=null){d.writeInt(e.effectX[j]);d.writeInt(e.effectY[j]);d.writeBoolean(e.effectHit[j]);d.writeBoolean(e.effectMirror[j]);animation(d,e.effects[j].animation);}}
        d.writeInt(castingSkill);d.writeBoolean(frenzy);d.writeInt(backSerial);d.writeInt(backFrame);for(int i=0;i<enemies.length;i++)d.writeInt(enemies[i].backHitSerial);for(int i=0;i<75;i++)d.writeInt(skillCooldowns[i]);conditions.write(d);for(int i=0;i<enemies.length;i++){Enemy e=enemies[i];e.conditions.write(d);d.writeBoolean(e.teleporting);d.writeInt(e.teleportX);d.writeInt(e.teleportY);d.writeInt(e.auraSlot);d.writeInt(e.auraElapsed);d.writeInt(e.auraInterval);if(e.auraSlot>=0)animation(d,e.aura.animation);}
        int other=1-effectSlot;for(int i=0;i<6;i++)d.writeInt(effectState[other][i]);d.writeBoolean(effectMirrors[other]);animation(d,effects[other].animation);if(backEffects[other]!=null)animation(d,backEffects[other].animation);for(int i=0;i<enemies.length;i++){d.writeInt(enemies[i].spareGhostHitSerial);d.writeInt(enemies[i].spareBackHitSerial);}
        d.flush();byte[] raw=b.toByteArray();d.writeInt(checksum(raw,raw.length));d.flush();return b.toByteArray();
    }
    private static int checksum(byte[] b,int len){int hash=0x514e46;for(int i=0;i<len;i++)hash=hash*31+(b[i]&255);return hash;}
    public static Battle decode(Session player,byte[] bytes)throws IOException {
        if(bytes.length<160||bytes.length>100000)throw new IOException("Battle save length");DataInputStream d=new DataInputStream(new ByteArrayInputStream(bytes));
        int version=d.readInt();if(version!=0x444e4231&&version!=0x444e4232&&version!=0x444e4233&&version!=0x444e4234)throw new IOException("Battle version");
        Campaign prefix=version>=0x444e4234?Campaign.read(d):null;
        int[] savedTypes=null;if(prefix!=null){int n=d.readInt();if(n<0||n>255)throw new IOException("Enemy layout");savedTypes=new int[n];for(int i=0;i<n;i++)savedTypes[i]=d.readUnsignedShort();}
        int[] s=new int[32];for(int i=0;i<s.length;i++)s[i]=d.readInt();
        int stored=((bytes[bytes.length-4]&255)<<24)|((bytes[bytes.length-3]&255)<<16)|((bytes[bytes.length-2]&255)<<8)|(bytes[bytes.length-1]&255);
        if(stored!=checksum(bytes,bytes.length-4))throw new IOException("Battle checksum");
        if(s[0]<0||s[0]>255||s[1]<1||s[1]>99||s[12]<0||s[12]>86400000||s[14]<-1||s[14]>3||s[15]<0||s[16]<0||s[8]<0||s[9]<1||s[8]>s[9]||s[18]<0||s[19]<0||s[28]<-1||s[28]>65535||s[31]<0||s[31]>1)throw new IOException("Battle bounds");
        // Load into a fresh Session first. A rejected save cannot mutate the live campaign.
        Session restored=new Session();Battle v=new Battle(restored);v.campaign=prefix;v.enter(s[0],s[1],s[2],s[3],s[4],s[5]);
        if(savedTypes!=null){if(savedTypes.length<v.enemies.length||savedTypes.length>Math.max(12,v.enemies.length))throw new IOException("Summon count");Enemy[] expanded=new Enemy[savedTypes.length];for(int i=0;i<expanded.length;i++){if(i<v.enemies.length){expanded[i]=v.enemies[i];if(expanded[i].data.id!=savedTypes[i])throw new IOException("Original enemy changed");}else {expanded[i]=v.makeSummon(savedTypes[i]);if(expanded[i]==null)throw new IOException("Unknown summon");}}v.enemies=expanded;v.order=new int[1+v.props.length+expanded.length];v.sortY=new int[v.order.length];}
        if(s[4]<0||s[4]>restored.world.width||s[5]<0||s[5]>restored.world.height||s[6]<0||s[7]<1||s[6]>s[7])throw new IOException("Battle position/HP");
        v.hp=s[6];v.maxHp=s[7];v.mp=s[8];v.maxMp=s[9];v.quest=s[10];v.questState=s[11];v.elapsedMs=s[12];v.pendingStory=s[13];v.dialogue=s[14];v.pageStart=s[15];v.pageEnd=s[16];v.seed=s[17];v.upperCooldown=s[18];v.ghostCooldown=s[19];v.serial=s[20];v.lastClip=s[21];v.lastFrame=s[22];v.ghostSerial=s[23];v.ghostX=s[24];v.ghostY=s[25];v.ghostFrame=s[26];if(s[27]<0||s[27]>1)throw new IOException("Battle effect slot");v.effectSlot=s[27];v.ghost=v.effects[v.effectSlot];v.backEffect=v.backEffects[v.effectSlot];v.music=s[28];v.lastDirection=s[29];v.lastPressMs=s[30];v.dashing=s[31]!=0;
        if(version<0x444e4233&&!v.father())v.ghost=new Actor(30024,v.assets);
        restored.mirror=d.readBoolean();v.ghostMirror=d.readBoolean();animation(d,restored.hero.animation);animation(d,v.ghost.animation);if(v.backEffect!=null)animation(d,v.backEffect.animation);
        if(d.readInt()!=v.enemies.length)throw new IOException("Battle entity count");
        for(int i=0;i<v.enemies.length;i++){Enemy e=v.enemies[i];e.x=d.readInt();e.y=d.readInt();e.hp=d.readInt();e.cooldown=d.readInt();e.attackSlot=d.readInt();e.hitSerial=d.readInt();e.ghostHitSerial=d.readInt();e.mirror=d.readBoolean();e.dead=d.readBoolean();e.landed=d.readBoolean();animation(d,e.actor.animation);
            if(e.hp<0||e.hp>e.data.hp||e.attackSlot< -1||e.attackSlot>2||e.x<0||e.x>restored.world.width||e.y<0||e.y>restored.world.height)throw new IOException("Battle enemy bounds "+i+" at "+s[0]+"/"+s[1]+": "+e.x+","+e.y+" in "+restored.world.width+","+restored.world.height+" HP "+e.hp+" slot "+e.attackSlot);}
        for(int i=0;i<v.props.length;i++)animation(d,v.props[i].animation);for(int i=0;i<v.areaArmed.length;i++)v.areaArmed[i]=d.readBoolean();
        if(version>=0x444e4232){v.campaign=Campaign.read(d);v.conversation=d.readUTF();v.conversationQuest=d.readInt();v.conversationAction=d.readInt();v.travelRequest=d.readInt();
            if(v.conversationQuest< -1||v.conversationQuest>=v.campaign.state.length||v.conversationAction<0||v.conversationAction>6||v.travelRequest<0||v.travelRequest>3||v.pageStart>v.dialogueText().length()||v.pageEnd>v.dialogueText().length())throw new IOException("Battle conversation");
        }else if(v.field==79)v.campaign.openingCheckpoint();
        if(version>=0x444e4233){for(int i=0;i<v.enemies.length;i++){Enemy e=v.enemies[i];for(int j=0;j<5;j++)if(e.effects[j]!=null&&(version>=0x444e4234||e.data.lightning(j))){e.effectX[j]=d.readInt();e.effectY[j]=d.readInt();e.effectHit[j]=d.readBoolean();e.effectMirror[j]=d.readBoolean();animation(d,e.effects[j].animation);if(e.effectX[j]< -65535||e.effectX[j]>65535||e.effectY[j]< -65535||e.effectY[j]>65535)throw new IOException("Enemy effect position");}}}
        else if(!v.father()){v.ghost=v.effects[v.effectSlot];v.ghost.animation.active=false;restored.hero.animation.start(0);v.lastClip=-1;v.lastFrame=-1;}
        if(version>=0x444e4234){v.castingSkill=d.readInt();v.frenzy=d.readBoolean();v.backSerial=d.readInt();v.backFrame=d.readInt();for(int i=0;i<v.enemies.length;i++)v.enemies[i].backHitSerial=d.readInt();if(v.castingSkill< -1||v.castingSkill>=75)throw new IOException("Casting skill");for(int i=0;i<75;i++){v.skillCooldowns[i]=d.readInt();if(v.skillCooldowns[i]<0||v.skillCooldowns[i]>6553500)throw new IOException("Skill cooldown");}v.conditions.read(d);for(int i=0;i<v.enemies.length;i++){Enemy e=v.enemies[i];e.conditions.read(d);e.teleporting=d.readBoolean();e.teleportX=d.readInt();e.teleportY=d.readInt();if(e.teleportX< -65535||e.teleportX>65535||e.teleportY< -65535||e.teleportY>65535)throw new IOException("Teleport bounds");e.auraSlot=d.readInt();e.auraElapsed=d.readInt();e.auraInterval=d.readInt();if(e.auraSlot< -1||e.auraSlot>4||e.auraElapsed<0||e.auraElapsed>65535||e.auraInterval<0||e.auraInterval>255)throw new IOException("Aura bounds");if(e.auraSlot>=0){byte[] desc=e.data.behavior[e.auraSlot];if(desc==null||desc[0]<7||desc[0]>10)throw new IOException("Aura descriptor");e.aura=new Actor(36105,v.assets);e.aura.setFamily(desc[0]-7);animation(d,e.aura.animation);}}}else{v.skillCooldowns[6]=v.upperCooldown;v.skillCooldowns[9]=v.ghostCooldown;v.castingSkill=restored.hero.animation.clip==24?6:restored.hero.animation.clip==32?9:-1;}
        if(version>=0x444e4234){int other=1-v.effectSlot;for(int i=0;i<6;i++)v.effectState[other][i]=d.readInt();if(Math.abs((long)v.effectState[other][0])>65535||Math.abs((long)v.effectState[other][1])>65535||v.effectState[other][3]< -1||v.effectState[other][3]>255||v.effectState[other][5]< -1||v.effectState[other][5]>255)throw new IOException("Secondary skill bounds");v.effectMirrors[other]=d.readBoolean();animation(d,v.effects[other].animation);if(v.backEffects[other]!=null)animation(d,v.backEffects[other].animation);for(int i=0;i<v.enemies.length;i++){v.enemies[i].spareGhostHitSerial=d.readInt();v.enemies[i].spareBackHitSerial=d.readInt();}}
        v.refreshSkills();v.level=v.father()?60:v.campaign.level;v.refreshStats();v.refreshMusic();v.ensureCompanion();d.readInt();if(d.available()!=0)throw new IOException("Battle trailing bytes");
        restored.speed=player.speed;restored.touchMode=player.touchMode;return v;
    }
}
