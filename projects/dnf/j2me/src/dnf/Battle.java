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
    private Actor backEffect;
    private Actor[] effects,backEffects;
    private SkillData[] skills;
    private int effectSlot=1;
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
    private Reactions reactions;
    private int sound=-1;
    private boolean[] areaArmed;
    private int[] order,sortY;
    public static final class Enemy {
        public Actor actor;public MonsterData data;
        public int x,y,hp,cooldown,attackSlot,hitSerial=-1,ghostHitSerial=-1,flash,number,numberTicks;
        public boolean mirror,dead,landed;
    }
    public Battle(Session player){this.player=player;}
    public boolean father(){return zone==11&&field==41&&stage==4;}
    public boolean tutorial(){return zone==11&&field==41&&(stage==3||stage==4);}
    public boolean supported(){return field==41&&(stage>=2&&stage<=4)||(zone==0&&(field>=0&&field<=5))||field==79&&stage==1||campaign!=null&&campaign.dungeon==1;}
    public void enter(int field,int stage,int zone,int mode,int x,int y)throws IOException {
        if(campaign==null)campaign=new Campaign();
        Assets a=new Assets();World world=new World(field,a);SceneData ds=new SceneData(field*100+stage);
        Actor hero=new Actor(field==41&&stage==4?1:0,a);if(field==41&&stage==4)hero.setFamily(1);
        byte[] monsters=Assets.read(6,"bd");Enemy[] list=new Enemy[ds.spawns.length];
        for(int i=0;i<list.length;i++){
            int[] spawn=ds.spawns[i],type=ds.types[spawn[1]];Enemy e=new Enemy();list[i]=e;
            e.data=new MonsterData(type[0],monsters);e.actor=new Actor(type[1],a);e.actor.setFamily(type[2]);
            e.x=spawn[3];e.y=spawn[4];e.hp=e.data.hp;e.dead=spawn[0]<100&&random(100)>=spawn[0];
        }
        Actor[] decorations=new Actor[ds.props.length];
        for(int i=0;i<decorations.length;i++){int[] type=ds.propTypes[ds.props[i][0]];decorations[i]=new Actor(type[2],a);decorations[i].setFamily(type[3]);}
        this.field=field;this.stage=stage;this.zone=zone;this.mode=mode;assets=a;scene=ds;enemies=list;props=decorations;
        player.world=world;player.hero=hero;player.x=x;player.y=y;player.mirror=false;player.actionViewer=false;
        level=father()?60:campaign.level;quest=father()?463:stage==2&&field==41?0:-1;questState=0;elapsedMs=0;pendingStory=-1;dialogue=-1;
        skills=new SkillData[]{new SkillData(0),new SkillData(father()?31:2),new SkillData(father()?35:6)};
        effects=new Actor[]{new Actor(father()?30058:30024,a),new Actor(father()?32061:30024,a)};
        backEffects=new Actor[]{null,father()?new Actor(33061,a):null};effectSlot=1;ghost=effects[1];backEffect=backEffects[1];ghost.animation.active=false;if(backEffect!=null)backEffect.animation.active=false;reactions=new Reactions();
        serial=0;lastClip=-1;lastFrame=-1;ghostSerial=0;ghostFrame=-1;upperCooldown=0;ghostCooldown=0;target=-1;
        lastDirection=0;lastPressMs=-1000;dashing=false;hitFlash=0;damageTicks=0;comboHits=0;areaArmed=new boolean[ds.areas.length];order=new int[1+props.length+enemies.length];sortY=new int[order.length];conversation="";conversationQuest=-1;conversationAction=0;travelRequest=0;
        if(!tutorial()&&campaign.dungeon>0&&campaign.cleared(field,stage))for(int i=0;i<enemies.length;i++){enemies[i].hp=0;enemies[i].dead=true;}
    }
    public void fromStory(Story s)throws IOException {
        int[] w=s.exitWords;enter(w[0],w[1],w[2],w[3],w[4],w[5]);
        if(s.id==5)campaign.finish(0);if(s.id>=11&&s.id<=13)campaign.openingCheckpoint();
        level=father()?60:campaign.level;
        // Native exitType 3 opens the quest window (0x4572c) before field updates resume.
        if(s.exitType==3&&w[6]==463){quest=463;dialogue=2;pageStart=pageEnd=0;}
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
            if(action==1&&id>=0){campaign.state[id]=1;if(id==2)pendingStory=12;}
            else if(action==2&&id>=0){int old=campaign.level;campaign.finish(id);level=campaign.level;if(level>old){hp=maxHp;mp=maxMp;}show("委托完成："+QuestBook.title(id)+"\n经验 +"+campaign.book.reward(id,false)+"   金币 +"+campaign.book.reward(id,true),0,-1);}
            else if(action==3)travelRequest=1;else if(action==4)travelRequest=2;
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
                if(id>=0)show(QuestBook.conversation(id,turnin)+"\n\n【"+QuestBook.title(id)+"】\n"+campaign.book.description(id,campaign)+(turnin?"\n5：领取奖励":"\n5：接受委托"),turnin?2:1,id);
                else show(QuestBook.npcName(npc)+"\n"+(npc==14?"锻造需要材料。准备好后，再来找我吧。":"目前没有新的委托。看看任务手册，或去街道西边的幽暗密林继续冒险。"),0,-1);
                return true;
            }
        }return false;
    }
    public void show(String text,int action,int id){conversation=text;conversationAction=action;conversationQuest=id;dialogue=3;pageStart=pageEnd=0;}
    public void journal(){show(campaign.journal(),0,-1);}
    public void dismiss(){if(dialogue>=3){dialogue=-1;conversationAction=0;pageStart=pageEnd=0;}}
    public String location(){if(zone==20)return "斯顿雪域";if(zone==0)return field==1?"赫顿玛尔北街":field==3?"赫顿玛尔南街":"赫顿玛尔";return "幽暗密林 "+field+"-"+stage;}
    public String areaLabel(int[] a){if(a[0]==2)return QuestBook.npcName(a[4]-100)+" 5";if(a[0]==3)return a[5]==2?"幽暗密林 →":"地下城入口";return a[0]==1?(zone==0||zone==20?"出口":"出口 · "+(living()==0?"开启":"封锁")):"";}
    private static boolean inside(int[] a,int x,int y){return x>=a[6]&&y>=a[7]&&x<=a[8]&&y<=a[9];}
    public void directionPressed(int direction){
        if(direction!=Session.LEFT&&direction!=Session.RIGHT)return;
        dashing=direction==lastDirection&&elapsedMs-lastPressMs<=300;
        lastDirection=direction;lastPressMs=elapsedMs;
    }
    public void attack(){if(dialogue>=0){confirm();return;}if(hp<=0){travelRequest=2;return;}if(pendingStory>=0)return;if(interact())return;
        int c=player.hero.animation.clip;
        if(c>=20&&c<=21)player.hero.animation.nextOverride=c+1;
        else if(c==0||c==2||c==3){player.hero.animation.start(20);serial++;lastClip=20;lastFrame=-1;}
    }
    public void skill(int which){
        if(which<0||which>1)return;
        if(dialogue>=0||pendingStory>=0||hp<=0)return;Animation a=player.hero.animation;
        if(a.clip!=0&&a.clip!=2&&a.clip!=3)return;
        SkillData skill=skills[which+1];
        if(!father()&&(which==0&&upperCooldown>0||which==1&&ghostCooldown>0||mp<skill.cost))return;
        if(!father())mp-=skill.cost;
        if(which==0)upperCooldown=father()?0:skill.cooldown*100;else ghostCooldown=father()?0:skill.cooldown*100;
        a.start(father()?(which==0?58:61):(which==0?23:24));
        if(father()||which==1){effectSlot=which;ghost=effects[which];backEffect=backEffects[which];ghost.animation.start(0);if(backEffect!=null)backEffect.animation.start(0);ghostX=player.x;ghostY=player.y;ghostMirror=player.mirror;ghostSerial++;ghostFrame=-1;}
        serial++;lastClip=a.clip;lastFrame=-1;
    }
    public int takeSound(){int s=sound;sound=-1;return s;}
    private void motion(Actor actor){int id=reactions.sound(actor.animation.current().fields[5]&255,false);if(id>=0)sound=id;}
    private void damage(Enemy e,int amount){
        e.hp=Math.max(0,e.hp-amount);e.flash=5;e.number=amount;e.numberTicks=24;comboHits++;target=indexOf(e);
        // Original death clip 19 must finish before the clear dispatcher runs (0x8a400).
        e.actor.animation.start(e.hp==0?19:10);e.cooldown=15;e.landed=false;
        if(e.hp==0)e.actor.animation.nextOverride=255;
        int hit=reactions.sound(player.hero.animation.current().fields[5]&255,true);if(hit>=0)sound=hit;
    }
    private int indexOf(Enemy e){for(int i=0;i<enemies.length;i++)if(enemies[i]==e)return i;return -1;}
    private int baseDamage(Enemy e,int skill){
        // 0x7bf58 / 0x76cac base branch; full equipment/passive modifiers are not yet evaluated.
        SkillData data=skills[skill==23||skill==58?1:skill==24||skill==61?2:0];
        int part=skill>=20&&skill<=22?skill-20:0;int power=data.power[part];
        int defence=(e.data.record[58]&255)|((e.data.record[59]&255)<<8);
        int resist=Math.max(1,100*defence/(80*e.data.level+150));
        return Math.max(1,power*(100-Math.min(99,resist))/100);
    }
    public void tick(int keys,int milliseconds)throws IOException {
        if(travelRequest!=0){int request=travelRequest;travelRequest=0;if(request==1)startDungeon();else returnTown();return;}
        if(dialogue>=0||pendingStory>=0||hp<=0)return;
        if(!father())level=campaign.level;
        elapsedMs+=milliseconds;upperCooldown=Math.max(0,upperCooldown-milliseconds);ghostCooldown=Math.max(0,ghostCooldown-milliseconds);
        if(hitFlash>0)hitFlash--;if(damageTicks>0)damageTicks--;
        Animation a=player.hero.animation;
        if(a.clip==0||a.clip==2||a.clip==3){
            int dx=((keys&Session.RIGHT)!=0?1:0)-((keys&Session.LEFT)!=0?1:0),dy=((keys&Session.DOWN)!=0?1:0)-((keys&Session.UP)!=0?1:0);
            if(dx==0)dashing=false;
            if(dx!=0||dy!=0){if(dx!=0)player.mirror=dx<0;int clip=dashing?3:2;if(a.clip!=clip)a.start(clip);move(dx,dy,dashing?6:3);}else if(a.clip!=0)a.start(0);
        }
        if(a.clip!=lastClip){serial++;lastClip=a.clip;lastFrame=-1;}
        if(a.frame!=lastFrame){motion(player.hero);lastFrame=a.frame;}
        for(int i=0;i<enemies.length;i++){
            Enemy e=enemies[i];if(e.flash>0)e.flash--;if(e.numberTicks>0)e.numberTicks--;
            if(e.dead)continue;
            if(e.hp>0&&e.hitSerial!=serial&&HitBox.hits(player.hero,player.x,player.y,player.mirror,e.actor,e.x,e.y,e.mirror)){
                e.hitSerial=serial;damage(e,baseDamage(e,a.clip));
            }
            if(e.hp>0&&ghost.animation.active&&e.ghostHitSerial!=ghostSerial&&HitBox.hits(ghost,ghostX,ghostY,ghostMirror,e.actor,e.x,e.y,e.mirror)){
                e.ghostHitSerial=ghostSerial;damage(e,baseDamage(e,father()?(effectSlot==0?58:61):24));
            }
            enemyTick(e);
        }
        a.tick();if(!a.active)a.start(0);
        if(ghost.animation.active){if(ghostFrame!=ghost.animation.frame){motion(ghost);ghostFrame=ghost.animation.frame;}ghost.animation.tick();}if(backEffect!=null&&backEffect.animation.active)backEffect.animation.tick();
        for(int i=0;i<props.length;i++)props[i].animation.tick();
        if(enemies.length>0&&living()==0){if(zone==11&&field==41&&stage==3){campaign.finish(1);pendingStory=6;}else if(father()){questState=2;pendingStory=8;}}
        if(!tutorial()&&campaign.dungeon>0&&living()==0&&!campaign.cleared(field,stage)){
            campaign.clear(field,stage);sceneChanged=true;
            if(isBossRoom()){campaign.completedRuns++;show("地下城通关！\n幽暗密林的牛头巨兽已被击败。\n回城交付委托，或再次挑战。\n5：返回城镇",4,-1);}
        }
        if(father()&&elapsedMs>=180000){questState=2;pendingStory=8;}
        // Gate exits are edge-triggered; loading inside a gate never immediately bounces back.
        for(int i=0;i<scene.areas.length;i++){int[] ar=scene.areas[i];boolean within=inside(ar,player.x,player.y);
            if(!within)areaArmed[i]=true;
            if(within&&areaArmed[i]){
                if(ar[0]==1&&(zone==0||zone==20||living()==0)){travel(ar);return;}
                if(ar[0]==3&&(zone==0||zone==20)){areaArmed[i]=false;if(ar[5]==2)show("幽暗密林 · 普通\n击败沿途怪物，清场后出口开启。击败牛头巨兽后返回城镇。\n5：进入   0：取消",3,-1);else show("这条路线的任务尚未开启。先完成赫顿玛尔的委托。",0,-1);return;}
            }
        }
    }
    private boolean isBossRoom()throws IOException {
        if(field==campaign.bossField&&stage==campaign.bossStage)return true;
        // Both original branches of the first dungeon are currently traversable.
        Zone z=new Zone(campaign.dungeon);for(int i=0;i<3;i++)if(z.routes[i][1][2]==field&&z.routes[i][1][3]==stage)return true;
        return false;
    }
    private void travel(int[] exit)throws IOException {
        if(exit[2]==65535)return;
        SceneData targetScene=new SceneData(exit[2]*100+exit[3]);int[] gate=null;
        for(int i=0;i<targetScene.areas.length;i++)if(targetScene.areas[i][1]==exit[4]){gate=targetScene.areas[i];break;}
        if(gate==null)throw new IOException("Missing destination gate "+exit[4]);
        int nextZone=zone,nextMode=mode;if(zone==0||zone==20){nextZone=exit[2]==79?20:0;nextMode=exit[5];}
        enter(exit[2],exit[3],nextZone,nextMode,(gate[6]+gate[8])/2,(gate[7]+gate[9])/2);standNearby();sceneChanged=true;
    }
    private void standNearby()throws IOException {
        if(player.world.canStand(player.x,player.y))return;
        int x=player.x,y=player.y;
        for(int radius=1;radius<=32;radius++)for(int dx=-radius;dx<=radius;dx++)for(int dy=-radius;dy<=radius;dy++)if(Math.abs(dx)==radius||Math.abs(dy)==radius){
            if(player.world.canStand(x+dx,y+dy)){player.x=x+dx;player.y=y+dy;return;}}
        throw new IOException("No walkable gate entrance");
    }
    public void startDungeon()throws IOException {
        Zone z=new Zone(1);int[] entry=z.routes[0][0],boss=z.routes[0][1];
        campaign.returnField=field;campaign.returnStage=stage;campaign.returnZone=zone;campaign.returnMode=mode;campaign.returnX=player.x;campaign.returnY=player.y;
        campaign.newRun();campaign.dungeon=1;campaign.bossField=boss[2];campaign.bossStage=boss[3];
        enter(entry[2],entry[3],1,2,z.spawn[0][0],z.spawn[0][1]);standNearby();sceneChanged=true;
    }
    /** Recovery adapter: retreat keeps earned progress, ends this run and restores health. */
    public void returnTown()throws IOException {
        int f=campaign.returnField,st=campaign.returnStage,z=campaign.returnZone,m=campaign.returnMode,x=campaign.returnX,y=campaign.returnY;
        enter(f,st,z,m,x,y);campaign.dungeon=0;campaign.newRun();hp=maxHp;mp=maxMp;standNearby();sceneChanged=true;
    }
    private void move(int dx,int dy,int steps){for(int i=0;i<steps;i++){
        if(player.world.canStand(player.x+dx,player.y))player.x+=dx;
        if(player.world.canStand(player.x,player.y+dy))player.y+=dy;
    }}
    private void enemyTick(Enemy e){
        Animation a=e.actor.animation;
        if(e.hp<=0){a.tick();if(!a.active||a.clip!=19){e.dead=true;if(!tutorial()){int old=campaign.level;campaign.kill(e.data);level=campaign.level;if(level>old){hp=maxHp;mp=maxMp;}}}return;}
        if(e.cooldown>0)e.cooldown--;
        if(a.clip==10||a.clip==20){a.tick();return;}
        int attack=e.data.attackClip[e.attackSlot];
        if(a.clip==attack){
            if(!e.landed&&HitBox.hits(e.actor,e.x,e.y,e.mirror,player.hero,player.x,player.y,player.mirror)){
                e.landed=true;damageNumber=e.data.attackDamage[e.attackSlot];damageTicks=18;hitFlash=5;
                if(!tutorial())hp=Math.max(0,hp-damageNumber);
            }
            a.tick();if(a.clip!=attack||!a.active){e.cooldown=12;if(!a.active)a.start(0);}return;
        }
        int dx=player.x-e.x,dy=player.y-e.y;e.mirror=dx<0;
        int reach=e.data.record[68]&255,depth=e.data.record[69]&255;
        if(Math.abs(dx)<=reach&&Math.abs(dy)<=depth&&e.cooldown==0){
            int roll=random(100),sum=0;for(int i=0;i<3;i++){sum+=e.data.attackWeight[i];if(roll<sum){e.attackSlot=i;break;}}
            int clip=e.data.attackClip[e.attackSlot];if(clip!=255&&clip<a.actions.clips.length&&attackReaches(e,clip)){a.start(clip);e.landed=false;motion(e.actor);return;}
        }
        // Ordinary chase adapter; native weighted wandering/skill AI is tracked separately.
        if(e.cooldown==0){int sx=dx>25?1:dx<-25?-1:0,sy=dy>3?1:dy<-3?-1:0;
            if(sx!=0||sy!=0){if(a.clip!=23)a.start(23);if(player.world.canStand(e.x+sx,e.y))e.x+=sx;if(player.world.canStand(e.x,e.y+sy))e.y+=sy;}
            else if(a.clip!=0)a.start(0);
        }a.tick();if(!a.active)a.start(0);
    }
    private boolean attackReaches(Enemy e,int clip){
        ActionSet.Frame[] frames=e.actor.actions.clips[clip].frames;
        for(int i=0;i<frames.length;i++)if(HitBox.hits(frames[i],e.x,e.y,e.mirror,player.hero.animation.current(),player.x,player.y,player.mirror))return true;
        return false;
    }
    public void draw(Surface s){
        cameraX=Math.max(0,Math.min(player.world.width-s.w,player.x-s.w/2));cameraY=Math.max(0,Math.min(player.world.height-s.h,player.y-s.h/2));
        player.world.draw(s,cameraX,cameraY);if(backEffect!=null&&backEffect.animation.active)backEffect.draw(s,ghostX-cameraX,ghostY-cameraY,ghostMirror);int n=0;
        for(int i=0;i<props.length;i++){order[n]=i;sortY[n++]=scene.props[i][3];}
        for(int i=0;i<enemies.length;i++)if(!enemies[i].dead){order[n]=props.length+i;sortY[n++]=enemies[i].y;}
        order[n]=props.length+enemies.length;sortY[n++]=player.y;
        for(int i=1;i<n;i++){int id=order[i],y=sortY[i],j=i;while(j>0&&sortY[j-1]>y){order[j]=order[j-1];sortY[j]=sortY[j-1];j--;}order[j]=id;sortY[j]=y;}
        for(int j=0;j<n;j++){int i=order[j];if(i<props.length)props[i].draw(s,scene.props[i][2]-cameraX,scene.props[i][3]-cameraY,false);
            else if(i<props.length+enemies.length){Enemy e=enemies[i-props.length];e.actor.draw(s,e.x-cameraX,e.y-cameraY,e.mirror,e.flash>0?16:0);}
            else player.hero.draw(s,player.x-cameraX,player.y-cameraY,player.mirror,hitFlash>0?12:0);
        }
        if(ghost.animation.active)ghost.draw(s,ghostX-cameraX,ghostY-cameraY,ghostMirror);
    }
    private static void animation(DataOutputStream d,Animation a)throws IOException {d.writeInt(a.clip);d.writeInt(a.frame);d.writeInt(a.elapsed);d.writeInt(a.nextOverride);d.writeBoolean(a.active);d.writeBoolean(a.finished);}
    private static void animation(DataInputStream d,Animation a)throws IOException {
        int clip=d.readInt(),frame=d.readInt(),elapsed=d.readInt(),next=d.readInt();boolean active=d.readBoolean(),finished=d.readBoolean();
        if(clip<0||clip>=a.actions.clips.length||frame<0||frame>=a.actions.clips[clip].frames.length||elapsed<0||elapsed>255||next<0||next>255)throw new IOException("Battle animation");
        a.start(clip);a.frame=frame;a.elapsed=elapsed;a.duration=a.current().duration;a.nextOverride=next;a.active=active;a.finished=finished;
    }
    public byte[] encode()throws IOException {
        ByteArrayOutputStream b=new ByteArrayOutputStream();DataOutputStream d=new DataOutputStream(b);d.writeInt(0x444e4232);
        int[] state={field,stage,zone,mode,player.x,player.y,hp,maxHp,mp,maxMp,quest,questState,elapsedMs,pendingStory,dialogue,pageStart,pageEnd,seed,upperCooldown,ghostCooldown,serial,lastClip,lastFrame,ghostSerial,ghostX,ghostY,ghostFrame,effectSlot,music,lastDirection,lastPressMs,dashing?1:0};
        for(int i=0;i<state.length;i++)d.writeInt(state[i]);d.writeBoolean(player.mirror);d.writeBoolean(ghostMirror);animation(d,player.hero.animation);animation(d,ghost.animation);if(backEffect!=null)animation(d,backEffect.animation);
        d.writeInt(enemies.length);for(int i=0;i<enemies.length;i++){Enemy e=enemies[i];d.writeInt(e.x);d.writeInt(e.y);d.writeInt(e.hp);d.writeInt(e.cooldown);d.writeInt(e.attackSlot);d.writeInt(e.hitSerial);d.writeInt(e.ghostHitSerial);d.writeBoolean(e.mirror);d.writeBoolean(e.dead);d.writeBoolean(e.landed);animation(d,e.actor.animation);}
        for(int i=0;i<props.length;i++)animation(d,props[i].animation);for(int i=0;i<areaArmed.length;i++)d.writeBoolean(areaArmed[i]);
        campaign.write(d);d.writeUTF(conversation);d.writeInt(conversationQuest);d.writeInt(conversationAction);d.writeInt(travelRequest);
        d.flush();byte[] raw=b.toByteArray();d.writeInt(checksum(raw,raw.length));d.flush();return b.toByteArray();
    }
    private static int checksum(byte[] b,int len){int hash=0x514e46;for(int i=0;i<len;i++)hash=hash*31+(b[i]&255);return hash;}
    public static Battle decode(Session player,byte[] bytes)throws IOException {
        if(bytes.length<160||bytes.length>100000)throw new IOException("Battle save length");DataInputStream d=new DataInputStream(new ByteArrayInputStream(bytes));
        int version=d.readInt();if(version!=0x444e4231&&version!=0x444e4232)throw new IOException("Battle version");
        int[] s=new int[32];for(int i=0;i<s.length;i++)s[i]=d.readInt();
        int stored=((bytes[bytes.length-4]&255)<<24)|((bytes[bytes.length-3]&255)<<16)|((bytes[bytes.length-2]&255)<<8)|(bytes[bytes.length-1]&255);
        if(stored!=checksum(bytes,bytes.length-4))throw new IOException("Battle checksum");
        if(s[0]<0||s[0]>255||s[1]<1||s[1]>99||s[12]<0||s[12]>86400000||s[14]<-1||s[14]>3||s[15]<0||s[16]<0||s[8]<0||s[9]<1||s[8]>s[9]||s[18]<0||s[19]<0||s[28]<-1||s[28]>65535||s[31]<0||s[31]>1)throw new IOException("Battle bounds");
        // Load into a fresh Session first. A rejected save cannot mutate the live campaign.
        Session restored=new Session();Battle v=new Battle(restored);v.enter(s[0],s[1],s[2],s[3],s[4],s[5]);
        if(s[4]<0||s[4]>restored.world.width||s[5]<0||s[5]>restored.world.height||s[6]<0||s[7]<1||s[6]>s[7])throw new IOException("Battle position/HP");
        v.hp=s[6];v.maxHp=s[7];v.mp=s[8];v.maxMp=s[9];v.quest=s[10];v.questState=s[11];v.elapsedMs=s[12];v.pendingStory=s[13];v.dialogue=s[14];v.pageStart=s[15];v.pageEnd=s[16];v.seed=s[17];v.upperCooldown=s[18];v.ghostCooldown=s[19];v.serial=s[20];v.lastClip=s[21];v.lastFrame=s[22];v.ghostSerial=s[23];v.ghostX=s[24];v.ghostY=s[25];v.ghostFrame=s[26];if(s[27]<0||s[27]>1)throw new IOException("Battle effect slot");v.effectSlot=s[27];v.ghost=v.effects[v.effectSlot];v.backEffect=v.backEffects[v.effectSlot];v.music=s[28];v.lastDirection=s[29];v.lastPressMs=s[30];v.dashing=s[31]!=0;
        restored.mirror=d.readBoolean();v.ghostMirror=d.readBoolean();animation(d,restored.hero.animation);animation(d,v.ghost.animation);if(v.backEffect!=null)animation(d,v.backEffect.animation);
        if(d.readInt()!=v.enemies.length)throw new IOException("Battle entity count");
        for(int i=0;i<v.enemies.length;i++){Enemy e=v.enemies[i];e.x=d.readInt();e.y=d.readInt();e.hp=d.readInt();e.cooldown=d.readInt();e.attackSlot=d.readInt();e.hitSerial=d.readInt();e.ghostHitSerial=d.readInt();e.mirror=d.readBoolean();e.dead=d.readBoolean();e.landed=d.readBoolean();animation(d,e.actor.animation);
            if(e.hp<0||e.hp>e.data.hp||e.attackSlot<0||e.attackSlot>2||e.x<0||e.x>restored.world.width||e.y<0||e.y>restored.world.height)throw new IOException("Battle enemy bounds");}
        for(int i=0;i<v.props.length;i++)animation(d,v.props[i].animation);for(int i=0;i<v.areaArmed.length;i++)v.areaArmed[i]=d.readBoolean();
        if(version==0x444e4232){v.campaign=Campaign.read(d);v.conversation=d.readUTF();v.conversationQuest=d.readInt();v.conversationAction=d.readInt();v.travelRequest=d.readInt();
            if(v.conversationQuest< -1||v.conversationQuest>=v.campaign.state.length||v.conversationAction<0||v.conversationAction>4||v.travelRequest<0||v.travelRequest>2||v.pageStart>v.dialogueText().length()||v.pageEnd>v.dialogueText().length())throw new IOException("Battle conversation");
        }else if(v.field==79)v.campaign.openingCheckpoint();
        v.level=v.father()?60:v.campaign.level;d.readInt();if(d.available()!=0)throw new IOException("Battle trailing bytes");
        restored.speed=player.speed;restored.touchMode=player.touchMode;return v;
    }
}
