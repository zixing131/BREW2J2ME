package bio;

import bio.original.*;
import java.io.IOException;
import java.util.Hashtable;
import javax.microedition.lcdui.*;

/** MIDP adapter for the recovered original state machines. */
final class OriginalCanvas extends Canvas implements Runnable,CommandListener,OriginalSession.Resources,OriginalRenderer.Images {
    private static final int COVER=0,MENU=1,PLAY=2,PAUSE=3,INFO=4,ERROR=5,SAVE=6,LOAD=7,SUPPLY=8,INVENTORY=9,UPGRADE=10,PREMIUM=11,OFFER=12,OVERWRITE=13;
    private final BioMIDlet app;
    private ScreenLayout layout;
    private int W,H;
    private int[] frame,scaled,atlas;
    private int[][] tiles;
    private OriginalText text;
    private OriginalFont font;
    private OriginalData data;
    private OriginalSession session;
    private OriginalRenderer renderer;
    private final Hashtable pictures=new Hashtable();
    private OriginalRenderer.Picture cover;
    private int screen=COVER,selection,input,lastText=-1,dialogPage,dialogLines,dialogRows=5,returnScreen=MENU,shopSlot,offerItem,offerReturn,saveReturn=PAUSE,pendingSlot;
    private int pointerKey=-1,pointerRow=-1;
    private String info="",notice="";
    private String[] saveDescriptions=new String[4];
    private boolean gps,active=true,fireHeld,scriptSave,touch,touchConfigured;
    private volatile boolean running=true;
    private final Command back=new Command("Back / Pause",Command.BACK,1);
    OriginalCanvas(BioMIDlet app){
        this.app=app;setFullScreenMode(true);addCommand(back);setCommandListener(this);
        try{
            text=new OriginalText(read(0));font=new OriginalFont(read(10000));data=new OriginalData(read(15000),read(51000));
            cover=get(5045);tiles=new int[75][];for(int i=0;i<75;i++)tiles[i]=rgb(Image.createImage("/images/"+(1101+i)+".png"));
            atlas=rgb(Image.createImage("/images/1000.png"));resize();
        }catch(Exception e){screen=ERROR;info=e.toString();}
        new Thread(this).start();
    }
    public byte[] read(int id)throws IOException{return Binary.read("/original/"+id+".bin");}
    public OriginalRenderer.Picture get(int id)throws IOException{
        if(id<=0)return null;Integer key=new Integer(id);OriginalRenderer.Picture p=(OriginalRenderer.Picture)pictures.get(key);
        if(p==null){Image im=Image.createImage("/images/"+id+".png");p=new OriginalRenderer.Picture(im.getWidth(),im.getHeight(),rgb(im));pictures.put(key,p);}return p;
    }
    private static int[] rgb(Image im){int[] p=new int[im.getWidth()*im.getHeight()];im.getRGB(p,0,im.getWidth(),0,0,im.getWidth(),im.getHeight());return p;}
    private void resize(){
        if(!touchConfigured)touch=ScreenLayout.defaultTouch(getWidth(),getHeight());
        layout=new ScreenLayout(getWidth(),getHeight(),touch);W=layout.width;H=layout.height;frame=new int[W*H];scaled=layout.scale==1?frame:new int[W*H*layout.scale*layout.scale];
        if(data!=null&&tiles!=null)renderer=new OriginalRenderer(W,layout.viewHeight,data.scene,tiles,atlas);clearInput();
    }
    protected synchronized void sizeChanged(int w,int h){if(data!=null&&atlas!=null)resize();}
    private void clearInput(){input=0;fireHeld=false;pointerKey=-1;pointerRow=-1;if(session!=null)session.combat.fireRequested=false;}
    private void open(int s){screen=s;selection=0;notice="";clearInput();}
    private void newGame(){try{session=new OriginalSession(data,this);lastText=-1;dialogPage=0;gps=false;open(PLAY);}catch(Exception e){fail(e);}}
    public void run(){
        while(running){long start=System.currentTimeMillis();synchronized(this){if(active&&screen==PLAY)tick();if(active)repaint();}
            long ms=50-(System.currentTimeMillis()-start);try{Thread.sleep(ms>0?ms:1);}catch(InterruptedException ignored){}
        }
    }
    private void tick(){try{
        if(fireHeld&&!session.vm.busy())session.fire();session.tick(input);
        if(lastText!=session.vm.textId){lastText=session.vm.textId;dialogPage=0;}
        if(session.player.hp<=0){open(PAUSE);notice="GAME OVER - LOAD SAVE";}
        else if(session.vm.ended){autosave();open(PAUSE);notice="STORY COMPLETE";}
    }catch(Exception e){fail(e);}}
    private void fail(Exception e){clearInput();screen=ERROR;info=e.toString();}
    synchronized void activate(){active=true;clearInput();}
    synchronized void suspend(){if(active&&session!=null){autosave();if(screen==PLAY)open(PAUSE);}active=false;clearInput();}
    synchronized void shutdown(){if(session!=null)autosave();active=false;running=false;}
    protected void hideNotify(){suspend();}
    protected void showNotify(){activate();}
    private void autosave(){if(session==null||session.player.hp<=0)return;try{OriginalSaves.save(3,session);}catch(Exception e){notice="AUTOSAVE FAILED: "+e.getMessage();}}
    private int action(int key){try{return getGameAction(key);}catch(IllegalArgumentException e){return 0;}}
    private int numeric(int key){if(key>=KEY_NUM0&&key<=KEY_NUM9)return key-KEY_NUM0;if(key==KEY_POUND)return 10;if(key==KEY_STAR||key==-7)return 11;if(key==-6)return 5;int a=action(key);return a==UP?2:a==DOWN?8:a==LEFT?4:a==RIGHT?6:a==FIRE?5:-1;}
    private int bit(int n){return n==1?4:n==3?8:n==2?1:n==8?2:n==4?256:n==6?512:0;}
    protected synchronized void keyPressed(int key){press(numeric(key));}
    private void press(int n){if(screen==PLAY&&!session.vm.busy()){input|=bit(n);if(n==5){fireHeld=true;session.fire();}}}
    protected synchronized void keyReleased(int key){int n=numeric(key);input&=~bit(n);if(n==5)fireHeld=false;choose(n);}
    protected synchronized void keyRepeated(int key){if(screen!=PLAY){int n=numeric(key);if(n==2||n==8)navigate(n==2?-1:1);}}
    private void navigate(int delta){int count=count();if(count>0)selection=(selection+count+delta)%count;}
    private void goBack(){
        clearInput();
        if(screen==PLAY){open(PAUSE);autosave();}
        else if(screen==PAUSE)open(PLAY);
        else if(screen==SAVE||screen==LOAD){open(saveReturn);scriptSave=false;}
        else if(screen==OVERWRITE)open(SAVE);
        else if(screen==UPGRADE)open(INVENTORY);
        else if(screen==SUPPLY||screen==INVENTORY||screen==PREMIUM)open(PAUSE);
        else if(screen==OFFER){if(session.vm.action.kind==22){session.vm.action.kind=0;session.vm.offer=-1;}open(offerReturn);}
        else if(screen==INFO)open(returnScreen);
        else open(MENU);
    }
    public synchronized void commandAction(Command c,Displayable d){goBack();}
    private void records(boolean write,boolean fromScript){saveReturn=screen;scriptSave=fromScript;open(write?SAVE:LOAD);for(int i=0;i<4;i++)saveDescriptions[i]=OriginalSaves.description(i,data,this);}
    private void saveTo(int slot){
        int old=session.vm.action.kind;if(scriptSave)session.vm.acknowledge();
        try{OriginalSaves.save(slot,session);open(scriptSave?PLAY:saveReturn);scriptSave=false;notice="SAVED SLOT "+(slot+1);}
        catch(Exception e){session.vm.action.kind=old;open(SAVE);notice="SAVE FAILED: "+e.getMessage();}
    }
    private void offer(int item,int backTo){dialogPage=0;offerItem=item;offerReturn=backTo;open(OFFER);}
    private void info(String message,int backTo){info=message;returnScreen=backTo;open(INFO);}
    private void choose(int n){
        if(n<0)return;
        if(screen==COVER){if(n==5)open(MENU);return;}
        if(screen==ERROR){if(n==0||n==11)open(MENU);return;}
        if(screen==INFO){goBack();return;}
        if(screen==PLAY){
            OriginalVM v=session.vm;
            if(n==11){goBack();return;}
            if(v.action.kind==4||v.action.kind==17){if(n==5){if((dialogPage+1)*dialogRows<dialogLines)dialogPage++;else{v.acknowledge();dialogPage=0;}}return;}
            if(v.action.kind==18){if(n==5)records(true,true);else if(n==0)v.acknowledge();return;}
            if(v.action.kind==21){if(n==5||n==0)v.transition(n==5);return;}
            if(v.action.kind==22){if(n==5)offer(v.offer,PLAY);else if(n==0){v.action.kind=0;v.offer=-1;}return;}
            if(v.busy())return;
            if(n==0){notice=session.player.hp>0&&session.player.medicine()?"HP RESTORED":"NO MEDICINE / GAME OVER";}
            else if(n==7)session.combat.cycle();
            else if(n==9){if(session.player.global[46]!=0)gps=!gps;else offer(3,PLAY);}
            else if(n==10)open(PREMIUM);
            return;
        }
        if(n==0||n==11){goBack();return;}
        if(n==2||n==8){if(screen==OFFER)dialogPage=Math.max(0,Math.min((dialogLines-1)/dialogRows,dialogPage+(n==2?-1:1)));else navigate(n==2?-1:1);return;}
        if(n!=5)return;
        if(screen==MENU){
            if(selection==0)newGame();else if(selection==1)records(false,false);else if(selection==5)app.quit();
            else if(selection==2){touch=!touch;touchConfigured=true;resize();info("TOUCH "+(touch?"ON":"OFF")+"$nAUTO RESOLUTION$n"+getWidth()+"x"+getHeight()+"$nSelect settings again to toggle.",MENU);}
            else if(selection==3)info("2/8 MOVE 4/6 TURN$n1/3 STRAFE 5 FIRE$n7 WEAPON 0 MEDICINE$n9 GPS # PREMIUM$n* SYSTEM / BACK$nSave/load in SYSTEM.$nTouch: HUD and bottom keys.$nPremium: OFFLINE, no SMS.",MENU);
            else info("3D生化启示录$nJ2ME ARM PORT 0.3$nOriginal maps, scripts,$nweapon/enemy tables.$nJava renderer / RMS adapter.",MENU);
        }else if(screen==PAUSE){
            if(selection==0){if(session.player.hp<=0)records(false,false);else open(PLAY);}else if(selection==1){if(session.player.hp>0)records(true,false);else notice="LOAD A SAVE OR START NEW GAME";}else if(selection==2)records(false,false);
            else if(selection==3)open(INVENTORY);else if(selection==4)open(SUPPLY);else if(selection==5)open(PREMIUM);
            else if(selection==6){notice=session.player.hp>0&&session.player.medicine()?"HP RESTORED":"NO MEDICINE / GAME OVER";}
            else if(selection==7){notice=session.player.useInvisibility()?"INVISIBLE UNTIL HIT":"NO ITEM / ALREADY INVISIBLE";}
            else {autosave();open(MENU);}
        }else if(screen==SAVE){pendingSlot=selection;try{OriginalSaves.load(selection,data,this);open(OVERWRITE);}catch(Exception empty){saveTo(pendingSlot);}}
        else if(screen==OVERWRITE)saveTo(pendingSlot);
        else if(screen==LOAD){try{session=OriginalSaves.load(selection,data,this);lastText=-1;dialogPage=0;gps=false;open(PLAY);}catch(Exception e){notice="LOAD FAILED: "+e.getMessage();}}
        else if(screen==SUPPLY)notice=session.player.buySupply(selection)?"PURCHASED":"NOT ENOUGH MONEY";
        else if(screen==INVENTORY){if(session.player.count==0)return;shopSlot=selection;session.combat.select(shopSlot);open(UPGRADE);}
        else if(screen==UPGRADE){notice=session.player.upgrade(shopSlot,selection)?"UPGRADED":"MAX LEVEL / NOT ENOUGH MONEY";}
        else if(screen==PREMIUM)offer(selection,PREMIUM);
        else if(screen==OFFER){
            if(session.player.grantPremium(offerItem)){if(session.vm.action.kind==22){session.vm.action.kind=0;session.vm.offer=-1;}open(offerReturn);notice="OFFLINE ITEM RECEIVED";}
            else notice="LIMIT REACHED / INVENTORY FULL";
        }
    }
    private int count(){return screen==MENU?6:screen==PAUSE?9:screen==SAVE?3:screen==LOAD?4:screen==SUPPLY?6:screen==INVENTORY?session.player.count:screen==UPGRADE?5:screen==PREMIUM?data.shopCount:0;}
    private int shown(){return Math.min(count(),Math.max(1,(H-64)/layout.rowHeight));}
    private int scroll(){int n=shown();return n==0?0:selection/n*n;}
    private String item(int i){
        OriginalPlayer p=session==null?null:session.player;
        if(screen==MENU)return text.get(8900+i);
        if(screen==PAUSE){String[] a={"继续游戏","保存记录","载入记录","武器 / 升级","物品商店","超级商店","药品 "+p.medicines,"隐身 "+bio.original.Binary.u16(p.global,44),"返回主菜单"};return a[i];}
        if(screen==SAVE||screen==LOAD)return (i==3?"AUTO":"SLOT "+(i+1))+"  "+saveDescriptions[i];
        if(screen==SUPPLY)return text.get(9250+i)+" $"+OriginalPlayer.PRICES[i];
        if(screen==INVENTORY){int idx=p.slots[8*i+1]&255;return (p.current==i?"> ":"")+text.get(data.w(idx,50));}
        if(screen==UPGRADE){String[] a={"伤害","射程","射速","瞄准","装弹"};int lv=p.slots[shopSlot*8+2+i]&255,idx=p.slots[shopSlot*8+1]&255;return a[i]+" "+lv+"/"+data.maxUpgrade(idx,i)+" $"+data.upgradeCost(p,shopSlot,i,lv+1);}
        if(screen==PREMIUM)return text.get(bio.original.Binary.u16(data.weapons,2+i*20));
        return "";
    }
    protected synchronized void pointerPressed(int px,int py){
        if(layout==null||!touch)return;int x=px/layout.scale,y=py/layout.scale;pointerRow=-1;
        if(count()>0){int row=layout.menuHit(x,y,count(),scroll(),Math.min(shown(),count()-scroll()));if(row>=0){selection=row;pointerRow=row;}else if(y<27)navigate(-1);else if(y>=H-24)pointerKey=x<W/4?0:x<W/2?2:x<W*3/4?8:5;return;}
        if(screen==PLAY&&!session.vm.busy()){pointerKey=layout.touchKey(x,y);press(pointerKey);}else if(screen==OFFER&&y>H-30)pointerKey=x<W/4?0:x<W/2?2:x<W*3/4?8:5;else pointerKey=x<W/3&&y>H-30?0:5;
    }
    protected synchronized void pointerDragged(int px,int py){
        if(!touch||screen!=PLAY||session.vm.busy()||pointerKey<0)return;int n=layout.touchKey(px/layout.scale,py/layout.scale);if(n!=pointerKey){input&=~bit(pointerKey);fireHeld=false;pointerKey=n;press(n);}
    }
    protected synchronized void pointerReleased(int px,int py){
        if(layout==null||!touch)return;int n=pointerKey,row=pointerRow;pointerKey=-1;pointerRow=-1;input=0;fireHeld=false;
        if(row>=0){int hit=layout.menuHit(px/layout.scale,py/layout.scale,count(),scroll(),Math.min(shown(),count()-scroll()));if(hit==row)choose(5);}
        else if(n>=0)choose(n);
    }
    private void rect(int x,int y,int w,int h,int color){for(int j=Math.max(0,y);j<y+h&&j<H;j++)for(int i=Math.max(0,x);i<x+w&&i<W;i++)frame[j*W+i]=color;}
    private void label(String s,int x,int y,int width,int color){font.draw(frame,W,H,s,x,y,Math.max(6,width),color,0,1);}
    private void box(int x,int y,int w,int h){rect(x,y,w,h,0x9ca5a5);rect(x+2,y+2,w-4,h-4,0x101617);rect(x+4,y+4,w-8,h-8,0x343a3b);}
    private void blit(OriginalRenderer.Picture p,int x,int y,int w,int h){
        if(p==null||w<=0||h<=0)return;for(int yy=Math.max(0,y);yy<y+h&&yy<H;yy++)for(int xx=Math.max(0,x);xx<x+w&&xx<W;xx++){int c=p.pixels[(yy-y)*p.height/h*p.width+(xx-x)*p.width/w];if((c>>>24)!=0)frame[yy*W+xx]=c;}
    }
    private void shade(int rgb565,int amount){
        amount=Math.max(0,Math.min(32,amount));int r=((rgb565>>11)&31)*255/31,g=((rgb565>>5)&63)*255/63,b=(rgb565&31)*255/31;
        for(int i=W*layout.hud;i<frame.length;i++){int c=frame[i];frame[i]=((((c>>16)&255)*(32-amount)+r*amount)>>5)<<16|((((c>>8)&255)*(32-amount)+g*amount)>>5)<<8|(((c&255)*(32-amount)+b*amount)>>5);}
    }
    private void backdrop(){int w=Math.min(W,H*cover.width/cover.height),h=w*cover.height/cover.width;blit(cover,(W-w)/2,(H-h)/2,w,h);}
    private void menu(){
        int n=shown(),start=scroll(),actual=Math.min(n,count()-start),top=layout.menuTop(actual),left=W/10;
        for(int i=0;i<actual;i++){box(left,top+i*layout.rowHeight,W-2*left,layout.rowHeight);label(item(start+i),left+6,top+i*layout.rowHeight+(layout.rowHeight-12)/2,W-2*left-12,start+i==selection?0xffff00:0xffffff);}
        if(count()==0)label("EMPTY - FIND A WEAPON FIRST",8,H/2,W-16,0xffff00);
        label("0 BACK",2,H-16,W/4-2,0x00ff00);label("2 UP",W/4+2,H-16,W/4-2,0x00ff00);label("8 DOWN",W/2+2,H-16,W/4-2,0x00ff00);label("5 OK",W*3/4+2,H-16,W/4-2,0x00ff00);
        if(screen!=MENU)label(notice.length()>0?notice:"$"+sessionMoney()+"  "+(selection+1)+"/"+count(),5,5,W-10,0x00ff00);
    }
    private int sessionMoney(){return session==null?0:session.player.money;}
    private void dialog(String message,String hint){
        int h=Math.min(H-24,Math.max(110,H*2/3)),y=H-h;box(2,y,W-4,h);dialogRows=Math.max(3,(h-36)/14);
        dialogLines=font.draw(frame,W,H,message,9,y+8,W-18,0xffffff,dialogPage*dialogRows,dialogRows);label(hint,9,H-19,W-18,0x00ff00);
    }
    private void world()throws IOException{
        renderer.render(session,this);System.arraycopy(renderer.pixels,0,frame,W*layout.hud,renderer.pixels.length);OriginalPlayer p=session.player;OriginalCombat c=session.combat;
        rect(4,4,W*2/3,6,0x552222);rect(4,4,(W*2/3)*Math.max(0,p.hp)/p.maxHp,6,0x3bde28);
        label("HP "+p.hp+"/"+p.maxHp+"  $"+p.money,4,13,W-8,0xffffff);
        String gun=p.current<0?"NO WEAPON":text.get(data.w(p.slots[p.current*8+1]&255,50))+" "+(p.slots[p.current*8+7]&255)+"/"+p.reserve;
        label(gun,4,28,W-8,0xffff00);
        if(p.current>=0){data.resolve(p,p.current,c.weapon);OriginalRenderer.Picture weapon=get(data.effectImage(c.weapon[11]));
            int base=data.effectBase+116*c.weapon[11],phase=0,off;
            int shotFrame=Math.max(0,(c.weapon[1]&255)-c.cooldown);
            if(c.cooldown>0&&shotFrame<bio.original.Binary.i32(data.scene,base+56))off=base+60+shotFrame*6;
            else {int period=bio.original.Binary.i32(data.scene,base+20);if(input!=0&&period>0)phase=c.ticks%period;off=base+24+phase*4;}
            int unit=Math.max(1,Math.min(W/176,layout.viewHeight/173));
            int wx=W/2+bio.original.Binary.s16(data.scene,off)*unit,wy=H-layout.touchHeight-weapon.height*unit+bio.original.Binary.s16(data.scene,off+2)*unit;
            if(c.switchFrame>=0)wy+=weapon.height*unit*(c.switchFrame==2?2:1)/2;
            if(c.reload>0){int full=Math.max(1,c.weapon[5]&255);wy+=weapon.height*unit*(full-Math.abs(full-2*c.reload))/full;}
            if(c.zoom==0)blit(weapon,wx,wy,weapon.width*unit,weapon.height*unit);
        }
        int cx=W/2,cy=layout.hud+layout.viewHeight/2,color=c.targetMode==2?0xff2222:0x66ee00;rect(cx-6,cy,13,1,color);rect(cx,cy-6,1,13,color);
        if(c.reload>0)label("RELOAD "+c.reload,4,layout.hud+4,W-8,0xffff00);
        if(gps)map();if(c.hurt>0){rect(0,layout.hud,3,H-layout.hud,0xdd0000);rect(W-3,layout.hud,3,H-layout.hud,0xdd0000);}
        OriginalVM v=session.vm;if(v.overlayAmount>0)shade(v.overlayColor,v.overlayAmount);
        if(v.action.kind==1||v.action.kind==2){int n=v.action.duration;shade(v.fadeColor,n<=0?0:32*(v.action.kind==1?v.action.frame:n-v.action.frame)/n);}
        if(touch&&!v.busy())touchControls();
        if(v.action.kind==4||v.action.kind==17)dialog((v.speaker>0?text.get(v.speaker)+"$n":"")+text.get(v.textId),"5 继续");
        if(v.action.kind==18)dialog("保存游戏记录？","0 BACK     5 SAVE");
        if(v.action.kind==21)dialog("进入下一关？","0 BACK     5 CONTINUE");
        if(v.action.kind==22)dialog("OFFLINE ITEM OFFER$n"+text.get(bio.original.Binary.u16(data.weapons,2+20*v.offer)),"0 SKIP     5 VIEW");
        if(v.unsupported>=0)dialog("SCRIPT ERROR "+v.unsupported,"* SYSTEM");
    }
    private void touchControls(){
        int split=W*3/5,top=H-layout.touchHeight;String[] labels={"1 <","2 UP","3 >","4 <","5 !","6 >","7 W","8 v","9 M"};
        for(int row=0;row<3;row++)for(int col=0;col<3;col++){int x=col*split/3,y=top+row*layout.touchHeight/3,w=(col+1)*split/3-x,h=(row+1)*layout.touchHeight/3-row*layout.touchHeight/3;box(x,y,w,h);label(labels[row*3+col],x+2,y+(h-12)/2,w-4,0x66ff00);}
        box(split,top,W-split,layout.touchHeight/2);label("5 FIRE",split+4,top+5,W-split-8,0xffff00);
        box(split,top+layout.touchHeight/2,W-split,layout.touchHeight-layout.touchHeight/2);label("7 WEAPON",split+4,top+layout.touchHeight/2+5,W-split-8,0xffffff);
        label("0 MED",4,46,W/3-4,0x00ff00);label("# SHOP",W/3+3,46,W/3-3,0x00ff00);label("* MENU",W*2/3+3,46,W/3-3,0x00ff00);
    }
    private void map(){
        int cell=Math.max(1,Math.min((W-8)/session.level.width,(H-55-layout.touchHeight)/session.level.height));
        for(int yy=0;yy<session.level.height;yy++)for(int xx=0;xx<session.level.width;xx++)rect(4+xx*cell,50+yy*cell,cell,cell,(session.level.sourceMask[yy*session.level.width+xx]&1)!=0?0x55595d:0x183821);
        rect(4+session.player.x*cell/32,50+session.player.y*cell/32,2,2,0xffee00);
    }
    protected synchronized void paint(Graphics g){
        g.setColor(0);g.fillRect(0,0,getWidth(),getHeight());if(font==null||frame==null){g.setColor(0xffffff);g.drawString(info,0,0,Graphics.TOP|Graphics.LEFT);return;}
        rect(0,0,W,H,0x192020);
        try{
            if(screen==COVER||screen==MENU){backdrop();if(screen==COVER)label(text.get(5000),Math.max(4,(W-156)/2),H-26,W-8,0x00ff00);else menu();}
            else if(screen==PLAY)world();
            else if(screen==INFO||screen==ERROR){font.draw(frame,W,H,info,8,24,W-16,screen==ERROR?0xff5555:0xffffff,0,(H-50)/14);label("0 BACK",8,H-20,W-16,0x00ff00);}
            else if(screen==OVERWRITE)dialog("REPLACE SLOT "+(pendingSlot+1)+"?","0 CANCEL   5 SAVE");
            else if(screen==OFFER){int p=2+20*offerItem;dialog("OFFLINE / NO SMS$n"+text.get(bio.original.Binary.u16(data.weapons,p))+"$n"+text.get(bio.original.Binary.u16(data.weapons,p+2)),"2/8 TEXT  0 BACK  5 GET");if(notice.length()>0)label(notice,4,4,W-8,0xffff00);}
            else menu();
        }catch(Exception e){fail(e);font.draw(frame,W,H,info,6,30,W-12,0xff5555,0,10);}
        int scale=layout.scale;if(scale>1)for(int y=0;y<H*scale;y++)for(int x=0;x<W*scale;x++)scaled[y*W*scale+x]=frame[y/scale*W+x/scale];
        g.drawRGB(scaled,0,W*scale,0,0,W*scale,H*scale,false);
    }
}
