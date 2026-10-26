package bio.original;

/** Semantic translation of 0x20458 / 0x20C54 / 0x1098. BREW RNG supplied by a saved deterministic adapter. */
public final class OriginalCombat {
    public static final int HP=0,X=1,Y=2,ANGLE=3,ACTIVE=4,WAIT=5,STATE=6,CYCLE=7,OFFSET=8,STUN=9,FLASH=10;
    public final OriginalPlayer player;
    public final OriginalLevel level;
    public final OriginalData data;
    public final int[][] actors,projectiles=new int[40][8];
    public final int[] projectileKinds=new int[40];
    // active, age, start X/Y, end X/Y; original 100-slot type-6 pool.
    public final int[][] tracers=new int[100][6];
    public final int[] weapon=new int[12];
    public int ticks,randomState=2211133,cooldown,reload,switchFrame=-1,nextSlot,zoom,target=-1,targetMode,targetDistance,shots,hurt,pendingEvent=-1;
    public boolean fireRequested;
    public int pendingNotice;
    // Transient notifications consumed by the optional audio adapter; never replayed from saves.
    public int soundShot=-1,soundEnemy,soundEnemyActor=-1;
    private final int[] xy=new int[2];
    public OriginalCombat(OriginalPlayer player,OriginalLevel level){
        this.player=player;this.level=level;data=player.data;actors=new int[level.actorCount][11];
        for(int i=0;i<actors.length;i++){int p=i*20,type=Binary.u16(level.actors,p);actors[i][HP]=data.a(type,76);actors[i][X]=Binary.s16(level.actors,p+4);actors[i][Y]=Binary.s16(level.actors,p+6);actors[i][ANGLE]=Binary.u16(level.actors,p+2);}
    }
    public int type(int i){return Binary.u16(level.actors,i*20);}
    private int random(int bound){if(bound<=1)return 0;randomState=randomState*1664525+1013904223;return (randomState>>>16)%bound;}
    public void fire(){if(cooldown==0&&reload==0&&switchFrame<0)fireRequested=true;}
    public void cycle(){if(player.count>1&&switchFrame<0&&reload==0&&zoom==0){nextSlot=(player.current+1)%player.count;switchFrame=0;}}
    public void select(int slot){if(slot>=0&&slot<player.count&&slot!=player.current){nextSlot=slot;switchFrame=0;fireRequested=false;zoom=0;}}
    public void tick(int input){
        soundShot=-1;soundEnemy=0;soundEnemyActor=-1;
        ticks++;if(hurt>0)hurt--;if(cooldown>0)cooldown--;
        if(switchFrame>=0){if(switchFrame==2)player.current=nextSlot;if(switchFrame==4)switchFrame=-1;else switchFrame++;}
        if((input&2)!=0)zoom=0;
        if(player.current>=0&&player.current<player.count){
            data.resolve(player,player.current,weapon);int at=8*player.current+7;
            if(reload>0)reload--;
            else if(weapon[6]==0&&(player.slots[at]&255)==0){
                fireRequested=false;int n=player.infiniteAmmo?weapon[7]:Math.min(player.reserve,weapon[7]);
                if(n>0){if(!player.infiniteAmmo)player.reserve-=n;player.slots[at]=(byte)n;reload=weapon[5]&255;zoom=0;}
            }
            if(fireRequested&&cooldown==0&&reload==0&&(weapon[6]!=0||(player.slots[at]&255)>0)){
                int effect=weapon[11];
                if(data.e(effect,4)!=0&&zoom==0){zoom=1;fireRequested=false;}
                else{
                    if(data.e(effect,4)!=0)fireRequested=false;
                    cooldown=weapon[1]&255;player.slots[at]--;shots++;
                    if(data.e(effect,5)==0)soundShot=effect;
                    boolean struck=target>=0&&actors[target][HP]>0&&(data.e(effect,4)==0||targetMode==2);
                    if(struck)hit();else fireRequested=false;
                    if(data.e(effect,5)==0)shotTracer(struck);
                }
            }
        }else fireRequested=false;
        xy[0]=player.x;xy[1]=player.y;player.angle=OriginalMotion.tick(level,xy,player.angle,input,player.invisible);player.x=xy[0];player.y=xy[1];
        enemies();projectiles();
        for(int i=0;i<tracers.length;i++){int[] t=tracers[i];if(t[0]!=0&&++t[1]>=4){t[0]=0;t[1]=0;}}
        pickups();aim();
        if(player.invisible&&player.invisibilityTicks>0&&--player.invisibilityTicks==0)player.invisible=false;
    }
    private void tracer(int x,int y,int tx,int ty){
        int i=0;while(i<99&&tracers[i][0]!=0)i++;int[] t=tracers[i];
        t[0]=1;t[1]=0;t[2]=(short)x;t[3]=(short)y;t[4]=(short)tx;t[5]=(short)ty;
    }
    private void shotTracer(boolean struck){
        int tx,ty;
        if(struck){tx=actors[target][X];ty=actors[target][Y];}
        else{
            int distance=0,range=weapon[3],cs=OriginalTrig.cos(player.angle),sn=OriginalTrig.sin(player.angle);
            tx=player.x;ty=player.y;
            while(distance<range){distance=Math.min(range,distance+8);tx=player.x+((cs*distance)>>16);ty=player.y+((sn*distance)>>16);
                int x=tx/16,y=ty/16;if(x>=0&&y>=0&&x<level.width*2&&y<level.height*2&&(level.collision[y*level.width*2+x]&2)!=0)break;
            }
        }
        tracer(OriginalEffects.muzzleX(player.x,player.angle),OriginalEffects.muzzleY(player.y,player.angle),tx,ty);
    }
    private void hit(){
        int damage=(short)weapon[0],near=weapon[2],far=weapon[3];
        if(targetDistance>near&&targetDistance<=far)damage=(short)(damage/2+(damage*(far-targetDistance)/2)/(far-near));
        if(targetMode==2)damage=(short)(damage*2);
        int[] a=actors[target];a[HP]=(short)(a[HP]-damage);if(a[HP]<=0)player.money+=data.ai(type(target),80);
        enemySound(a[HP]<=0?3:2,target);
        a[STUN]=weapon[10];a[FLASH]=5;if(a[HP]<=0&&a[STUN]>5)a[STUN]=5;
        int away=OriginalMath.angle(player.x-a[X],player.y-a[Y])+180;xy[0]=a[X];xy[1]=a[Y];
        OriginalMotion.move(level.width,level.height,level.collision,away,weapon[9],xy,true,false);a[X]=xy[0];a[Y]=xy[1];a[STATE]=0;
        if(a[ACTIVE]==0){a[ACTIVE]=1;a[WAIT]=0;a[OFFSET]=0;a[CYCLE]=10;}player.invisible=false;
    }
    private void enemySound(int kind,int index){
        int[] a=actors[index];int distance=OriginalMath.distance(a[X]-player.x,a[Y]-player.y);
        if(distance>=240||!OriginalMath.sight(level,player.x,player.y,a[X],a[Y],distance))return;
        int previous=soundEnemyActor<0?Integer.MAX_VALUE:OriginalMath.distance(actors[soundEnemyActor][X]-player.x,actors[soundEnemyActor][Y]-player.y);
        if(kind>soundEnemy||(kind==soundEnemy&&distance<previous)){soundEnemy=kind;soundEnemyActor=index;}
    }
    private void enemies(){
        for(int i=0;i<actors.length;i++){
            int[] a=actors[i];if(a[STATE]==2)continue;int t=type(i),p=i*20;
            if(player.invisible&&player.invisibilityTicks==0)a[ACTIVE]=0;
            if(a[HP]<=0)level.mark((a[X]-8)/16,(a[Y]-8)/16,4,false);
            if(a[FLASH]>0)a[FLASH]--;if(a[STUN]>0){a[STUN]--;continue;}
            if(a[HP]<=0){a[STATE]=2;if(level.actors[p+16]!=0)pendingEvent=Binary.u16(level.actors,p+18);continue;}
            if(player.invisible)continue;
            if(a[ACTIVE]==0){int rx=player.x-Binary.s16(level.actors,p+8),ry=player.y-Binary.s16(level.actors,p+10);
                if(rx<0||ry<0||rx>Binary.s16(level.actors,p+14)||ry>Binary.s16(level.actors,p+12))continue;
                a[ACTIVE]=1;a[WAIT]=0;a[OFFSET]=0;a[STATE]=0;a[CYCLE]=10;
                enemySound(1,i);
            }
            a[ANGLE]=OriginalMath.angle(player.x-a[X],player.y-a[Y]);int distance=OriginalMath.distance(a[X]-player.x,a[Y]-player.y);
            boolean sight=OriginalMath.ray(level,a[X],a[Y],a[ANGLE],distance);
            if(a[CYCLE]<10){
                if(a[CYCLE]<a[WAIT]){
                    int direction=a[ANGLE]+(data.a(t,74)>=distance&&sight?(random(2)==0?-90:90):a[OFFSET]);xy[0]=a[X];xy[1]=a[Y];
                    OriginalMotion.move(level.width,level.height,level.collision,direction,data.ab(t,68),xy,true,false);a[X]=xy[0];a[Y]=xy[1];a[STATE]=1;
                }else a[STATE]=0;a[CYCLE]=(a[CYCLE]+1)&255;
            }else{
                a[WAIT]=(10*(data.ab(t,69)+data.ab(t,70)-random(2*data.ab(t,70)+1))/100)&255;a[CYCLE]=0;a[STATE]=1;
                int offset=data.ab(t,71)+data.ab(t,72)-random(2*data.ab(t,72)+1);a[OFFSET]=(byte)(random(2)==0?-offset:offset);
            }
            if(sight&&data.a(t,66)>=distance){
                int frequency=Math.max(1,data.ab(t,64));if(frequency<=50&&(ticks%100)%(50/frequency)!=0)continue;
                if(random(2)!=0){int angle=a[ANGLE]-data.ab(t,65)+random(2*data.ab(t,65)+1);int j=0;while(j<39&&projectiles[j][0]!=0)j++;
                    enemySound(1,i);
                    int[] b=projectiles[j];b[0]=1;b[1]=a[X];b[2]=a[Y];b[3]=angle;b[4]=0;b[5]=data.a(t,66);b[6]=data.ab(t,61);b[7]=data.a(t,62);projectileKinds[j]=data.ab(t,60);}
            }
        }
    }
    private void projectiles(){
        for(int i=0;i<40;i++){int[] b=projectiles[i];if(b[0]==0)continue;int sx=b[1],sy=b[2],distance=0,dx=OriginalTrig.cos(b[3]),dy=OriginalTrig.sin(b[3]);
            int px=(player.x-8)/16,py=(player.y-8)/16;
            while(distance<b[6]){distance=Math.min(b[6],distance+8);b[1]=sx+((dx*distance)>>16);b[2]=sy+((dy*distance)>>16);int x=b[1]/16,y=b[2]/16;
                if(x>=0&&y>=0&&x<level.width*2&&y<level.height*2){
                    if((x==px||x==px+1)&&(y==py||y==py+1)){player.hp=Math.max(0,player.hp-b[7]);hurt=3;b[0]=0;break;}
                    if((level.collision[y*level.width*2+x]&2)!=0){b[0]=0;break;}
                }
            }b[4]+=distance;if(b[4]>b[5])b[0]=0;
            if(projectileKinds[i]!=0)tracer(sx,sy,b[1],b[2]);
        }
    }
    public void aim(){
        target=-1;targetMode=0;if(player.current<0||player.current>=player.count){fireRequested=false;return;}
        data.resolve(player,player.current,weapon);int range=weapon[3],cone=weapon[4],cs=OriginalTrig.cos(player.angle)>>8,sn=OriginalTrig.sin(player.angle)>>8,relative=0;
        for(int i=0;i<actors.length;i++){int[] a=actors[i];if(a[HP]<=0||a[STATE]==2)continue;int vx=a[X]-player.x,vy=a[Y]-player.y,dot=(vx*cs+vy*sn)>>8,side=(cs*vy-sn*vx)>>8;
            if(dot<=0)continue;int an=OriginalMath.angle(dot,side);if(an>=180)an-=360;if(an< -cone||an>cone)continue;
            int d=OriginalMath.distance(vx,vy);if(d<range&&OriginalMath.sight(level,player.x,player.y,a[X],a[Y],d)){target=i;relative=an;range=d;}
        }
        if(target<0){fireRequested=false;return;}targetMode=1;targetDistance=range;int center=OriginalMath.angle(range,zoom!=0?24:16)+1;
        if(relative<center&&relative> -center)targetMode=2;
    }
    private void pickups(){
        for(int i=0;i<level.objectCount;i++){int p=i*8,kind=level.objects[p+1]&255,id=Binary.u16(level.objects,p+2);
            if(kind==0||id<100||id>=500||player.variables[id]==1)continue;
            int dx=player.x-Binary.s16(level.objects,p+4),dy=player.y-Binary.s16(level.objects,p+6);
            if(dx>=-23&&dx<24&&dy>=-23&&dy<24){player.variables[id]=1;
                if(kind==1){player.reserve=Math.min(99999,player.reserve+10);pendingNotice=player.tutorials[1]==0?6305:8960;player.tutorials[1]=1;}
                if(kind==2){player.medicines=Math.min(999,player.medicines+2);pendingNotice=player.tutorials[0]==0?6302:8961;player.tutorials[0]=1;}return;}
        }
    }
    public void rebuildOccupancy(){
        for(int i=0;i<level.collision.length;i++)level.collision[i]&=~12;
        for(int i=0;i<actors.length;i++)if(actors[i][HP]>0)level.mark((actors[i][X]-8)/16,(actors[i][Y]-8)/16,4,true);
        level.mark((player.x-8)/16,(player.y-8)/16,8,true);
    }
}
