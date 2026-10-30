package bio.original;
import java.io.*;
import java.util.*;
/** Continuous route driver. Never teleports, injects health, kills actors or sets mission flags.
 * Uses movement/fire, dialogue and offer confirmation, public shop APIs and snapshot reloads.
 * The explicit shop mode buys two life upgrades and currency; this is NOT a no-mall run.
 * This is automated production-logic play, NOT a manual device playthrough.
 */
public final class FullCampaignTest {
    private OriginalSession s;
    private OriginalData data;
    private OriginalSession.Resources resources;
    private int frames,visited,lastLevel=-1,lastProgress=-1,shots,kills,medicines,purchases,reloads;
    private int goalX,goalY,goalNext,gridLevel=-1,gridX=-1,gridY=-1;
    private int[] distances;
    private final boolean resume, shopAssisted;
    private final PrintWriter log,trace;
    private final int[] weapon=new int[12];
    private int stuck;
    private boolean settle;
    FullCampaignTest(final File root,boolean resume,boolean shopAssisted,File output)throws Exception{
        this.resume=resume;this.shopAssisted=shopAssisted;output.getParentFile().mkdirs();log=new PrintWriter(new FileWriter(output));trace=new PrintWriter(new FileWriter(output+".inputs"));
        resources=new OriginalSession.Resources(){public byte[] read(int id)throws IOException{File f=new File(root,id+".bin");byte[] b=new byte[(int)f.length()];DataInputStream in=new DataInputStream(new FileInputStream(f));try{in.readFully(b);}finally{in.close();}return b;}};
        data=new OriginalData(resources.read(15000),resources.read(51000));s=new OriginalSession(data,resources);
    }
    private void record(String msg){String line=frames+" L"+s.player.level+" P"+(s.player.variables[0]&255)+" @"+s.player.x+","+s.player.y+" HP"+s.player.hp+" $"+s.player.money+" "+msg;log.println(line);log.flush();if(msg.startsWith("PASS"))System.out.println(line);}
    private void checkpoint()throws Exception{byte[] b=SaveCodec.encode(s,123456789L,frames);trace.println("C "+frames+" "+SaveCodec.crc(b,b.length-4));OriginalSession copy=SaveCodec.decode(b,data,resources);if(!Arrays.equals(b,SaveCodec.encode(copy,123456789L,frames)))throw new AssertionError("Checkpoint differs");if(resume){s=copy;reloads++;} }
    private void tick(int input)throws Exception{
        trace.println("T "+input);int before=s.combat.shots,dead=dead();s.tick(input);frames++;shots+=Math.max(0,s.combat.shots-before);if(s.player.level==lastLevel)kills+=Math.max(0,dead()-dead);
        int progress=s.player.variables[0]&255;if(s.player.level!=lastLevel||progress!=lastProgress){settle=s.player.level!=lastLevel;record("checkpoint");lastLevel=s.player.level;lastProgress=progress;visited|=1<<(lastLevel-1);checkpoint();gridLevel=-1;stuck=0;}
        if(s.player.hp<=0)throw new AssertionError("Player died; "+state());
        if(s.vm.unsupported>=0)throw new AssertionError("Unsupported script "+state());
        if(frames%10000==0)record("running goal="+goalX+","+goalY+" event="+s.vm.event+" pc="+s.vm.pc);
    }
    private int dead(){int n=0;for(int[] a:s.combat.actors)if(a[OriginalCombat.HP]<=0)n++;return n;}
    private String state(){return "frame="+frames+" L"+s.player.level+" progress="+(s.player.variables[0]&255)+" pos="+s.player.x+","+s.player.y+" angle="+s.player.angle+" goal="+goalX+","+goalY+" event="+s.vm.event+" pc="+s.vm.pc+" action="+s.vm.action.kind;}
    private boolean script()throws Exception{
        int kind=s.vm.action.kind;if(!s.vm.busy())return false;
        if(kind==17&&s.vm.narration!=null){trace.println("N");s.vm.narration.accelerate();}else if(kind==4||kind==17||kind==18){trace.println(kind==18?"Z":"D");s.vm.acknowledge();}
        else if(kind==21){int n=s.vm.script.commands[s.vm.event][(s.vm.pc-1)*8+1];trace.println("X "+(n==goalNext?1:0));s.vm.transition(n==goalNext);}
        else if(kind==22){if(s.vm.offer!=6)throw new AssertionError("Unexpected offer: "+state());purchase(6);s.vm.action.kind=0;s.vm.offer=-1;}
        tick(0);return true;
    }
    private void goal(int x,int y,int next){goalX=x;goalY=y;goalNext=next;}
    // Waypoints from resources 11000..11015, not assignments to mission progress.
    // The route deliberately revisits maps and all five battery sites before the L14 ending.
    private void route(){int p=s.player.variables[0]&255,l=s.player.level;
        if(p<=1){goal(31,2,0);return;}
        if(p==2){for(int i=0;i<s.level.actorCount;i++)if(s.level.actors[i*20+16]!=0&&Binary.u16(s.level.actors,i*20+18)==2){goal(s.combat.actors[i][1]/32,s.combat.actors[i][2]/32,0);return;}}
        if(p==3||p==5&&l==1){goal(29,1,p==5?2:0);return;}if(p==4){goal(23,27,0);return;}
        if(p==6){goal(30,27,0);return;}if(p==7){goal(11,6,0);return;}if(p==8){goal(50,12,0);return;}if(p==9&&l==2){goal(56,27,3);return;}
        if(p==10){goal(7,30,0);return;}if(p==11){goal(35,35,0);return;}if(p==12&&l==3){goal(47,36,4);return;}
        if(p==13){goal(16,25,0);return;}if(p==14&&l==4){goal(48,10,5);return;}if(p==15){goal(24,25,0);return;}
        if(p==16){if(l==5)goal(8,26,4);else if(l==4)goal(1,10,3);else goal(46,24,0);return;}
        if(p==17){if(l==3)goal(47,36,4);else goal(48,9,5);return;}
        if(p==18){if(l==5)goal(36,39,6);else goal(14,33,7);return;}
        if(p==19){goal(14,13,0);return;}if(p==20){goal(42,43,0);return;}if(p==21){goal(2,45,8);return;}
        if(p==22){goal(15,23,0);if(s.player.variables[61]!=0)for(int i=0;i<s.level.actorCount;i++)if(s.level.actors[i*20+16]!=0){goal(s.combat.actors[i][1]/32,s.combat.actors[i][2]/32,0);break;}return;}
        if(p==99){goal(7,20,0);return;}if(p==23){goal(4,30,9);return;}if(p==24){goal(9,5,0);return;}
        if(p==25){if(l==9)goal(10,1,8);else if(l==8)goal(47,1,7);else goal(42,47,10);return;}
        if(p==26||p==34){if(l==10)goal(28,2,11);else if(l==11)goal(1,14,12);else if(l==12)goal(28,1,13);else if(l==13)goal(p==26?28:1,p==26?8:14,p==26?0:14);else goal(28,1,0);return;}
        if(p==27){if(l==9){goal(9,5,0);return;}if(l==13)goal(27,4,12);else if(l==12)goal(2,16,11);else if(l==11)goal(27,4,10);else if(l==10)goal(13,1,7);else if(l==7)goal(2,44,8);else goal(4,30,9);return;}
        if(p==28){goal(1,17,15);return;}if(p==29){goal(9,40,16);return;}
        if(p==30){int[][] batteries={{3,7},{3,23},{11,19},{26,10},{22,28}};for(int i=0;i<5;i++)if(s.player.variables[3+i]==0){goal(batteries[i][0],batteries[i][1],0);return;}goal(22,28,0);return;}
        if(p==31){if(l==9){goal(9,5,0);return;}if(l==16)goal(15,1,15);else goal(46,1,9);return;}
        if(p==32){if(l==9)goal(10,1,8);else if(l==8)goal(47,1,7);else if(l==7)goal(45,6,6);else if(l==6)goal(36,4,5);else if(l==5)goal(8,26,4);else if(l==4)goal(1,10,3);else goal(7,31,0);return;}
        if(p==33){if(l==10){goal(28,2,11);return;}if(l==3)goal(47,36,4);else if(l==4)goal(48,9,5);else if(l==5)goal(36,39,6);else if(l==6)goal(15,33,7);else goal(42,47,10);return;}
        throw new AssertionError("Unrouted: "+state());
    }
    private boolean stand(int x,int y){int w=s.level.width*2,h=s.level.height*2;if(x<0||y<0||x+1>=w||y+1>=h)return false;for(int j=0;j<2;j++)for(int i=0;i<2;i++)if((s.level.collision[(y+j)*w+x+i]&1)!=0)return false;return true;}
    private void plan(){int w=s.level.width*2,h=s.level.height*2;if(gridLevel==s.player.level&&gridX==goalX&&gridY==goalY)return;gridLevel=s.player.level;gridX=goalX;gridY=goalY;distances=new int[w*h];Arrays.fill(distances,-1);int[] queue=new int[w*h];int head=0,tail=0;
        for(int y=goalY*2;y<=goalY*2+1;y++)for(int x=goalX*2;x<=goalX*2+1;x++)if(stand(x,y)){int p=y*w+x;distances[p]=0;queue[tail++]=p;}
        int[] dx={1,-1,0,0},dy={0,0,1,-1};while(head<tail){int p=queue[head++],x=p%w,y=p/w;for(int k=0;k<4;k++){int nx=x+dx[k],ny=y+dy[k];if(stand(nx,ny)&&distances[ny*w+nx]<0){distances[ny*w+nx]=distances[p]+1;queue[tail++]=ny*w+nx;}}}
    }
    private int navigation(){plan();int w=s.level.width*2,x=(s.player.x-8)/16,y=(s.player.y-8)/16,at=y*w+x;
        if(distances[at]<0)throw new AssertionError("No static path: "+state());int best=distances[at],tx=goalX*32+16,ty=goalY*32+16;int[] dx={1,-1,0,0},dy={0,0,1,-1};
        for(int k=0;k<4;k++){int nx=x+dx[k],ny=y+dy[k];if(stand(nx,ny)&&distances[ny*w+nx]>=0&&distances[ny*w+nx]<best){best=distances[ny*w+nx];tx=nx*16+16;ty=ny*16+16;}}
        return towards(tx,ty);
    }
    // Predict legal moves on a copied collision grid; only tick(input) moves the real player.
    private int towards(int tx,int ty){int choice=0,best=Integer.MAX_VALUE;int[] inputs={1,2,4,8};for(int i=0;i<4;i++){byte[] grid=(byte[])s.level.collision.clone();int[] xy={s.player.x,s.player.y};int angle=s.player.angle+(i==1?180:i==2?270:i==3?90:0);OriginalMotion.move(s.level.width,s.level.height,grid,angle,10,xy,false,s.player.invisible);if(xy[0]==s.player.x&&xy[1]==s.player.y)continue;int score=(tx-xy[0])*(tx-xy[0])+(ty-xy[1])*(ty-xy[1]);if(score<best){best=score;choice=inputs[i];}}return choice;}
    private int turn(int target){int d=(target-s.player.angle+540)%360-180;return Math.abs(d)<=2?0:d<0?0x100:0x200;}
    private boolean fight()throws Exception{
        OriginalPlayer p=s.player;int chosen=-1,distance=9999;for(int i=0;i<s.combat.actors.length;i++){int[] a=s.combat.actors[i];if(a[0]<=0)continue;int d=OriginalMath.distance(a[1]-p.x,a[2]-p.y);if(d<(p.current>=0&&(p.slots[p.current*8]&255)==1?80:220)&&d<distance&&OriginalMath.sight(s.level,p.x,p.y,a[1],a[2],d)){distance=d;chosen=i;}}
        if(chosen<0||p.current<0)return false;
        data.resolve(p,p.current,weapon);int[] a=s.combat.actors[chosen];int rotation=turn(OriginalMath.angle(a[1]-p.x,a[2]-p.y));int movement=distance>=weapon[3]-8?towards(a[1],a[2]):0;
        if(s.combat.target==chosen&&s.combat.targetMode==2){trace.println("F");s.fire();}tick(rotation|movement);return true;
    }
    private void medicalGoal(){if(s.player.medicines>0||s.player.hp>s.player.maxHp*3/4)return;int nearest=-1,distance=Integer.MAX_VALUE;for(int i=0;i<s.level.objectCount;i++){int p=i*8,id=Binary.u16(s.level.objects,p+2);if(s.level.objects[p+1]!=2||id<100||id>=500||s.player.variables[id]!=0)continue;int x=Binary.s16(s.level.objects,p+4),y=Binary.s16(s.level.objects,p+6),d=Math.abs(x-s.player.x)+Math.abs(y-s.player.y);if(d<distance){nearest=i;distance=d;}}if(nearest>=0){int p=nearest*8;goal(Binary.s16(s.level.objects,p+4)/32,Binary.s16(s.level.objects,p+6)/32,0);}}
    // Opening the real pause/shop UI clears the firing latch (OriginalCanvas.clearInput).
    private void purchase(int item){trace.println("P "+item);s.combat.fireRequested=false;if(!s.player.grantPremium(item))throw new AssertionError("Cannot buy "+item);purchases++;record("offline shop item="+item);}
    private void supplies(){if(shopAssisted&&s.player.hp<s.player.maxHp*3/4&&s.player.medicines==0&&s.player.money<120)purchase(4);OriginalPlayer p=s.player;if(p.hp<p.maxHp*3/4){if(p.medicines==0&&p.buySupply(0)){trace.println("B 0");s.combat.fireRequested=false;purchases++;record("bought medicine");}if(p.medicines>0){trace.println("M");if(p.medicine())medicines++;}}if(p.current>=0&&(p.slots[p.current*8]&255)!=1&&p.reserve<10&&p.buySupply(3)){trace.println("B 3");s.combat.fireRequested=false;purchases++;record("bought ammo");}}
    private void run()throws Exception{
        try{record("mode="+(shopAssisted?"shop-assisted":"no-mall")+" resume="+resume);tick(0);if(shopAssisted){purchase(2);purchase(2);purchase(4);}while(!s.vm.ended&&frames<250000){if(settle){settle=false;tick(0);continue;}if(script())continue;route();supplies();medicalGoal();if(fight())continue;int oldX=s.player.x,oldY=s.player.y;tick(navigation());if(s.player.x==oldX&&s.player.y==oldY)stuck++;else stuck=0;if(stuck>200)throw new AssertionError("Movement stuck: "+state());}
            if(!s.vm.ended||s.player.level!=14||(s.player.variables[0]&255)!=35||visited!=65535)throw new AssertionError("Incomplete campaign: "+state()+" visited="+Integer.toHexString(visited));checkpoint();record("PASS "+(shopAssisted?"shop-assisted":"no-mall")+" all 16 maps + ending; shots="+shots+" kills="+kills+" medicine="+medicines+" purchases="+purchases+" reloads="+reloads);
        }finally{log.close();trace.close();}
    }
    public static void main(String[] args)throws Exception{new FullCampaignTest(new File(args[0]),Arrays.asList(args).contains("resume"),Arrays.asList(args).contains("shop"),new File(args[1])).run();}
}
