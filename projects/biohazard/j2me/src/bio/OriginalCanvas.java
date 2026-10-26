package bio;

import bio.original.*;
import java.io.IOException;
import java.util.Hashtable;
import javax.microedition.lcdui.*;

/** MIDP adapter for the recovered original state machines. */
final class OriginalCanvas extends Canvas implements Runnable,CommandListener,OriginalSession.Resources,OriginalRenderer.Images {
    private static final int COVER=0,MENU=1,PLAY=2,PAUSE=3,INFO=4,ERROR=5,SAVE=6,LOAD=7,SUPPLY=8,INVENTORY=9,UPGRADE=10,PREMIUM=11,OFFER=12,OVERWRITE=13,PREMIUM_WEAPONS=14;
    private final BioMIDlet app;
    private ScreenLayout layout;
    private int W,H;
    private int[] frame,scaled,atlas;
    private int[][] tiles;
    private OriginalText text;
    private OriginalFont font;
    private OriginalAnimation animations;
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
            text=new OriginalText(read(0));font=new OriginalFont(read(10000));animations=new OriginalAnimation(read(20000));data=new OriginalData(read(15000),read(51000));
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
        // A render/update tick is not a new BREW EVT_KEY. The original combat
        // latch itself continues firing on a hit; sniper zoom needs a second press.
        session.tick(input);
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
        else if(screen==PREMIUM_WEAPONS)open(PREMIUM);
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
            else info("3D生化启示录$nJ2ME ARM PORT 0.3.2$nOriginal maps, scripts,$nweapon/enemy tables.$nJava renderer / RMS adapter.",MENU);
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
        else if(screen==PREMIUM){if(selection==0)open(PREMIUM_WEAPONS);else offer(selection-1,PREMIUM);}
        else if(screen==PREMIUM_WEAPONS)offer(selection+7,PREMIUM_WEAPONS);
        else if(screen==OFFER){
            if(session.player.grantPremium(offerItem)){if(session.vm.action.kind==22){session.vm.action.kind=0;session.vm.offer=-1;}open(offerReturn);notice="OFFLINE ITEM RECEIVED";}
            else notice="LIMIT REACHED / INVENTORY FULL";
        }
    }
    private int count(){return screen==MENU?6:screen==PAUSE?9:screen==SAVE?3:screen==LOAD?4:screen==SUPPLY?6:screen==INVENTORY?session.player.count:screen==UPGRADE?5:screen==PREMIUM?6:screen==PREMIUM_WEAPONS?5:0;}
    private boolean originalShop(){return screen==PREMIUM||screen==PREMIUM_WEAPONS||screen==SUPPLY;}
    private int shopStep(){return screen==PREMIUM?25:35;}
    private int shown(){return Math.min(count(),originalShop()?Math.max(2,(H-(screen==SUPPLY?100:146))/shopStep()):Math.max(1,(H-64)/layout.rowHeight));}
    private int shopTop(){int margin=screen==SUPPLY?100:146,base=screen==SUPPLY?69:56;return (H-margin-shown()*shopStep())/2+base;}
    private int menuHit(int x,int y){
        if(screen==MENU)return layout.mainMenuHit(x,y,selection);
        if(originalShop()){int top=shopTop(),n=shown();if(x<0||x>=W||y<top||y>=top+n*shopStep())return -1;int row=scroll()+(y-top)/shopStep();return row<count()?row:-1;}
        return layout.menuHit(x,y,count(),scroll(),Math.min(shown(),count()-scroll()));
    }
    private int scroll(){int n=shown();return n==0?0:selection/n*n;}
    private String item(int i){
        OriginalPlayer p=session==null?null:session.player;
        if(screen==MENU)return text.get(8900+i);
        if(screen==PAUSE){String[] a={"继续游戏","保存记录","载入记录","武器 / 升级","物品商店","超级商店","药品 "+p.medicines,"隐身 "+bio.original.Binary.u16(p.global,44),"返回主菜单"};return a[i];}
        if(screen==SAVE||screen==LOAD)return (i==3?"AUTO":"SLOT "+(i+1))+"  "+saveDescriptions[i];
        if(screen==SUPPLY)return text.get(9250+i)+" $"+OriginalPlayer.PRICES[i];
        if(screen==INVENTORY){int idx=p.slots[8*i+1]&255;return (p.current==i?"> ":"")+text.get(data.w(idx,50));}
        if(screen==UPGRADE){String[] a={"伤害","射程","射速","瞄准","装弹"};int lv=p.slots[shopSlot*8+2+i]&255,idx=p.slots[shopSlot*8+1]&255;return a[i]+" "+lv+"/"+data.maxUpgrade(idx,i)+" $"+data.upgradeCost(p,shopSlot,i,lv+1);}
        if(screen==PREMIUM)return text.get(9010+i);
        if(screen==PREMIUM_WEAPONS)return text.get(bio.original.Binary.u16(data.weapons,2+(i+7)*20));
        return "";
    }
    protected synchronized void pointerPressed(int px,int py){
        if(layout==null||!touch)return;int x=px/layout.scale,y=py/layout.scale;pointerRow=-1;
        if(screen==MENU){int row=layout.mainMenuHit(x,y,selection);if(row>=0){selection=row;pointerRow=row;}return;}
        if(count()>0){int row=menuHit(x,y);if(row>=0){selection=row;pointerRow=row;}
            else if(originalShop()){if(y>=H-21)pointerKey=x<W/2?5:0;else if(y<shopTop())navigate(-1);else navigate(1);}
            else if(y<27)navigate(-1);else if(y>=H-24)pointerKey=x<W/4?0:x<W/2?2:x<W*3/4?8:5;return;}
        if(screen==PLAY&&!session.vm.busy()){pointerKey=quickHit(x,y);if(pointerKey<0)pointerKey=layout.touchKey(x,y);press(pointerKey);}else if(screen==OFFER&&y>H-30)pointerKey=x<W/4?0:x<W/2?2:x<W*3/4?8:5;else pointerKey=x<W/3&&y>H-30?0:5;
    }
    protected synchronized void pointerDragged(int px,int py){
        if(!touch||screen!=PLAY||session.vm.busy()||pointerKey<0)return;int n=layout.touchKey(px/layout.scale,py/layout.scale);if(n!=pointerKey){input&=~bit(pointerKey);fireHeld=false;pointerKey=n;press(n);}
    }
    protected synchronized void pointerReleased(int px,int py){
        if(layout==null||!touch)return;int n=pointerKey,row=pointerRow;pointerKey=-1;pointerRow=-1;input=0;fireHeld=false;
        if(row>=0){int hit=menuHit(px/layout.scale,py/layout.scale);if(hit==row)choose(5);}
        else if(n>=0)choose(n);
    }
    private void rect(int x,int y,int w,int h,int color){for(int j=Math.max(0,y);j<y+h&&j<H;j++)for(int i=Math.max(0,x);i<x+w&&i<W;i++)frame[j*W+i]=color;}
    private void label(String s,int x,int y,int width,int color){font.draw(frame,W,H,s,x,y,Math.max(6,width),color,0,1);}
    private void box(int x,int y,int w,int h){rect(x,y,w,h,0x9ca5a5);rect(x+2,y+2,w-4,h-4,0x101617);rect(x+4,y+4,w-8,h-8,0x343a3b);}
    private void blit(OriginalRenderer.Picture p,int x,int y,int w,int h){
        if(p==null||w<=0||h<=0)return;for(int yy=Math.max(0,y);yy<y+h&&yy<H;yy++)for(int xx=Math.max(0,x);xx<x+w&&xx<W;xx++){int c=p.pixels[(yy-y)*p.height/h*p.width+(xx-x)*p.width/w];if((c>>>24)!=0)frame[yy*W+xx]=c;}
    }
    private void region(OriginalRenderer.Picture p,int sy,int sh,int x,int y,int w,int h,boolean mirror){
        if(w<=0||h<=0)return;for(int yy=Math.max(0,y);yy<y+h&&yy<H;yy++)for(int xx=Math.max(0,x);xx<x+w&&xx<W;xx++){
            int sx=(xx-x)*p.width/w;if(mirror)sx=p.width-1-sx;int c=p.pixels[(sy+(yy-y)*sh/h)*p.width+sx];if((c>>>24)!=0)frame[yy*W+xx]=c;}
    }
    private void animation(int id,int index,int cx,int bottom)throws IOException{
        int[][] parts=animations.frame(id,index);
        for(int i=0;i<parts.length;i++){
            int[] a=parts[i];OriginalRenderer.Picture p=get(a[0]);int w=p.width*a[3]/100,h=p.height*a[4]/100,x=cx+a[1]-w/2,y=bottom+a[2]-h;
            if((a[5]&~6)!=0)throw new IOException("Unimplemented UI effect "+a[5]);
            for(int yy=Math.max(0,y);yy<y+h&&yy<H;yy++)for(int xx=Math.max(0,x);xx<x+w&&xx<W;xx++){
                int sx=(xx-x)*p.width/w,sy=(yy-y)*p.height/h;if((a[5]&2)!=0)sx=p.width-1-sx;if((a[5]&4)!=0)sy=p.height-1-sy;
                int color=p.pixels[sy*p.width+sx];if((color>>>24)!=0)frame[yy*W+xx]=color;
            }
        }
    }
    private void line(int x,int y,int xx,int yy,int color){
        int dx=Math.abs(xx-x),dy=-Math.abs(yy-y),sx=x<xx?1:-1,sy=y<yy?1:-1,error=dx+dy;
        while(true){rect(x,y,1,1,color);if(x==xx&&y==yy)break;int e=2*error;if(e>=dy){error+=dy;x+=sx;}if(e<=dx){error+=dx;y+=sy;}}
    }
    private void circle(int cx,int cy,int radius,int color){for(int y=-radius;y<=radius;y++)for(int x=-radius;x<=radius;x++)if(x*x+y*y<=radius*radius)rect(cx+x,cy+y,1,1,color);}
    private static int rgb565(int c){return ((c>>11)*255/31)<<16|(((c>>5)&63)*255/63)<<8|(c&31)*255/31;}
    private void shade(int rgb565,int amount){
        amount=Math.max(0,Math.min(32,amount));int r=((rgb565>>11)&31)*255/31,g=((rgb565>>5)&63)*255/63,b=(rgb565&31)*255/31;
        for(int i=W*layout.hud;i<frame.length;i++){int c=frame[i];frame[i]=((((c>>16)&255)*(32-amount)+r*amount)>>5)<<16|((((c>>8)&255)*(32-amount)+g*amount)>>5)<<8|(((c&255)*(32-amount)+b*amount)>>5);}
    }
    private int ui(int n){return (int)(n*layout.uiScale);}
    private void art(int id,int x,int y)throws IOException{OriginalRenderer.Picture p=get(id);blit(p,x,y,ui(p.width),ui(p.height));}
    private void centered(String s,int cx,int y,int color){
        s=OriginalText.plain(s);int w=0;for(int i=0;i<s.length();i++)w+=font.advance(s.charAt(i));
        label("$T00001$S000000"+s,cx-w/2,y,w+2,color);
    }
    private void backdrop()throws IOException{rect(0,0,W,H,0);animation(7,0,W/2,235);}
    private void mainMenu()throws IOException{
        for(int i=0;i<6;i++){int x=layout.mainMenuLeft(i,selection),y=layout.mainMenuTop()+i*layout.mainMenuStep();
            animation(6,i==selection?1:0,W/2,y);centered(item(i),W/2-(i==selection?12:0),y+11,i==selection?0xffff00:0xffffff);}
    }
    private void menu()throws IOException{
        if(screen==MENU){mainMenu();return;}
        if(originalShop()){shopMenu();return;}
        int n=shown(),start=scroll(),actual=Math.min(n,count()-start),top=layout.menuTop(actual),left=W/10;
        int title=screen==PREMIUM?5011:screen==PREMIUM_WEAPONS?5036:screen==SUPPLY?5018:screen==UPGRADE?5041:0;
        if(title!=0){OriginalRenderer.Picture metal=get(5006);region(metal,0,metal.height,0,0,W/2,Math.min(top,ui(45)),false);region(metal,0,metal.height,W/2,0,W-W/2,Math.min(top,ui(45)),true);art(title,(W-ui(get(title).width))/2,0);}
        for(int i=0;i<actual;i++){int y=top+i*layout.rowHeight;boolean selected=start+i==selection;
            if(selected)blit(get(5015),0,y,W,layout.rowHeight);
            blit(get(selected?5002:5014),left,y,W-2*left,layout.rowHeight);
            label("$T00001$S000000"+item(start+i),left+6,y+(layout.rowHeight-12)/2,W-2*left-12,selected?0xffff00:0xffffff);}
        if(count()==0)label("EMPTY - FIND A WEAPON FIRST",8,H/2,W-16,0xffff00);
        label("0 BACK",2,H-16,W/4-2,0x00ff00);label("2 UP",W/4+2,H-16,W/4-2,0x00ff00);label("8 DOWN",W/2+2,H-16,W/4-2,0x00ff00);label("5 OK",W*3/4+2,H-16,W/4-2,0x00ff00);
        if(title==0)label(notice.length()>0?notice:"$"+sessionMoney()+"  "+(selection+1)+"/"+count(),5,5,W-10,0x00ff00);
        else label(notice.length()>0?notice:"金钱 "+sessionMoney(),5,H-33,W-10,0x00ff00);
    }
    private int sessionMoney(){return session==null?0:session.player.money;}
    private void shopMenu()throws IOException{
        rect(0,0,W,H,0x202520);int anim=screen==SUPPLY?2:1,top=shopTop(),step=shopStep(),start=scroll(),n=Math.min(shown(),count()-start);
        animation(anim,screen==PREMIUM_WEAPONS?12:0,W/2,0);animation(anim,1,W/2,H);
        animation(anim,screen==PREMIUM?4:screen==PREMIUM_WEAPONS?14:3,W/2,top);
        if(screen==SUPPLY)centered("金钱 "+sessionMoney(),W/2,40,0xffff00);
        for(int i=0;i<n;i++){
            int row=start+i,y=top+i*step;boolean selected=row==selection;
            if(screen==PREMIUM){
                if(selected)animation(1,row==0?3:2,W/2,y);animation(1,row+6,W/2,y);
                centered(item(row),W/2+12,y+6,selected?0xffff00:0xffffff);
                if((row==4&&session.player.global[46]!=0)||(row==1&&session.player.infiniteAmmo))label("$T00001$S0080ff已购买",4,y+6,48,0xffffff);
            }else{
                if(selected)animation(anim,screen==SUPPLY?2:13,W/2,y);
                animation(anim,screen==SUPPLY?(selected?5:6):(selected?16:17),W/2,y);
                animation(anim,screen==SUPPLY?row+7:row*2+18,W/2,y);
                if(screen==SUPPLY){label(text.get(9250+row),3,y+11,55,0xffffff);label(""+OriginalPlayer.PRICES[row],W-38,y+11,36,0xffff00);}
            }
        }
        animation(anim,screen==PREMIUM?5:screen==PREMIUM_WEAPONS?15:4,W/2,top+(n-1)*step);
        if(screen!=SUPPLY){int description=screen==PREMIUM?6525+selection:bio.original.Binary.u16(data.weapons,4+20*(selection+7));
            font.draw(frame,W,H,"$T00001$S000000$H00ff00"+text.get(description),6,H-75,W-12,0x00ff00,0,4);}
        if(notice.length()>0)label(notice,4,48,W-8,0xffff00);
    }
    private void dialog(String message,String hint){
        int h=Math.min(H-24,Math.max(110,H*2/3)),y=H-h;box(2,y,W-4,h);dialogRows=Math.max(3,(h-36)/14);
        dialogLines=font.draw(frame,W,H,message,9,y+8,W-18,0xffffff,dialogPage*dialogRows,dialogRows);label(hint,9,H-19,W-18,0x00ff00);
    }
    private void world()throws IOException{
        renderer.render(session,this);System.arraycopy(renderer.pixels,0,frame,W*layout.hud,renderer.pixels.length);OriginalPlayer p=session.player;OriginalCombat c=session.combat;
        if(p.current>=0){data.resolve(p,p.current,c.weapon);OriginalRenderer.Picture weapon=get(data.effectImage(c.weapon[11]));
            int base=data.effectBase+116*c.weapon[11],phase=0,off;
            int shotFrame=Math.max(0,(c.weapon[1]&255)-c.cooldown);
            if(c.cooldown>0&&shotFrame<bio.original.Binary.i32(data.scene,base+56))off=base+60+shotFrame*6;
            else {int period=bio.original.Binary.i32(data.scene,base+20);if(input!=0&&period>0)phase=c.ticks%period;off=base+24+phase*4;}
            int wx=W/2+ui(bio.original.Binary.s16(data.scene,off)),wy=H-layout.touchHeight-ui(weapon.height)+ui(bio.original.Binary.s16(data.scene,off+2));
            int ww=ui(weapon.width),wh=ui(weapon.height);
            if(c.weapon[11]==0&&c.cooldown>0&&shotFrame<bio.original.Binary.i32(data.scene,base+56)){
                int height=weapon.height-5*bio.original.Binary.s16(data.scene,off+2)/2+20;
                wh=ui(height);if(height>weapon.height)ww=ui(height*weapon.width/weapon.height);
                wx-=ui(60);wy=H-layout.touchHeight-wh;
            }
            if(c.switchFrame>=0)wy+=ui(weapon.height)*(c.switchFrame==2?2:1)/2;
            if(c.reload>0){int full=Math.max(1,c.weapon[5]&255);wy+=ui(weapon.height)*(full-Math.abs(full-2*c.reload))/full;}
            if(c.zoom==0)blit(weapon,wx,wy,ww,wh);
        }
        reticle();hud();quickButtons();
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
    private void hud()throws IOException{
        OriginalPlayer p=session.player;OriginalCombat c=session.combat;
        animation(3,p.invisible?2:0,W/2,0);OriginalRenderer.Picture hp=get(5031);int fill=ui(94)*Math.max(0,p.hp)/Math.max(1,p.maxHp);
        // Clip the bar; never stretch its highlight as HP changes (0x77C4).
        for(int y=0;y<ui(7);y++)for(int x=0;x<fill;x++)frame[(ui(14)+y)*W+x]=hp.pixels[(y*hp.height/Math.max(1,ui(7)))*hp.width+x*hp.width/Math.max(1,ui(94))];
        label(""+p.medicines,ui(36),ui(2),ui(35),0xffff00);
        label(p.infiniteAmmo?"Max":""+p.reserve,ui(75),ui(20),W-ui(75),0xffff00);
        if(p.current>=0){int index=p.slots[p.current*8+1]&255;animation(3,index+6,W/2,0);
            data.resolve(p,p.current,c.weapon);String ammo=c.weapon[6]!=0?"Max-Max":(c.reload>0?"装弹 ":"")+(p.slots[p.current*8+7]&255)+"-"+c.weapon[7];
            label("$T00001$S000000"+ammo,0,ui(46),ui(95),0x00ff00);}
        radar();
    }
    private void radar()throws IOException{
        int cx=W-ui(30),cy=ui(23),radius=Math.max(1,ui(20));circle(cx,cy,ui(23),0);circle(cx,cy,ui(22),0xffffff);circle(cx,cy,ui(21),0);
        int cs=OriginalTrig.cos(session.player.angle),sn=OriginalTrig.sin(session.player.angle),stride=session.level.width*2;
        for(int yy=-radius;yy<=radius;yy++)for(int xx=-radius;xx<=radius;xx++)if(xx*xx+yy*yy<=radius*radius){
            double dx=xx/layout.uiScale,dy=yy/layout.uiScale;
            int gx=(int)Math.floor(session.player.x/16+(-cs*dy-sn*dx)/65536.0*2/3),gy=(int)Math.floor(session.player.y/16+(-sn*dy+cs*dx)/65536.0*2/3),color=0;
            if(gx>=0&&gy>=0&&gx<stride&&gy<session.level.height*2){int bits=session.level.collision[gy*stride+gx];color=(bits&4)!=0?0xff0000:(bits&2)!=0?rgb565(512):(bits&1)!=0?rgb565(0x4408):rgb565(0x4648);}
            rect(cx+xx,cy+yy,1,1,color);}
        int level=session.player.level-1,progress=Math.min(35,session.player.variables[1]&255);
        radarMarker(2104,OriginalRadar.EXITS[4*level],OriginalRadar.EXITS[4*level+1],cx,cy);
        radarMarker(2104,OriginalRadar.EXITS[4*level+2],OriginalRadar.EXITS[4*level+3],cx,cy);
        radarMarker(2103,OriginalRadar.DESTINATIONS[2*level],OriginalRadar.DESTINATIONS[2*level+1],cx,cy);
        if(OriginalRadar.OBJECTIVES[3*progress]==level)radarMarker(2102,OriginalRadar.OBJECTIVES[3*progress+1],OriginalRadar.OBJECTIVES[3*progress+2],cx,cy);
        line(cx,cy,cx,cy-ui(20),0xffff00);circle(cx,cy,Math.max(1,ui(2)),0xffff00);
        int compass=cx-ui(25);circle(compass,cy,ui(10),0);circle(compass,cy,ui(9),0xffffff);circle(compass,cy,ui(8),0);
        int dx=ui(7)*cs/65536,dy=ui(7)*sn/65536;line(compass,cy,compass+dx,cy+dy,0xff0000);line(compass,cy,compass-dx,cy-dy,0x00ff00);
    }
    private void radarMarker(int image,int x,int y,int cx,int cy)throws IOException{
        if(x==0||y==0)return;int dx=2*x-session.player.x/16,dy=2*y-session.player.y/16,cs=OriginalTrig.cos(session.player.angle),sn=OriginalTrig.sin(session.player.angle);
        int sx=((cs*dy-sn*dx)>>16)/2,sy=((-sn*dy-cs*dx)>>16)/2,d=3*OriginalMath.distance(dx,dy)/2;
        if(d>20){sx=20*sx/d;sy=20*sy/d;}
        OriginalRenderer.Picture p=get(image);blit(p,cx+3*sx+2-p.width/4,cy+3*sy+2-p.height/4,p.width/2,p.height/2);
    }
    private int quickHit(int x,int y){
        int top=H-layout.touchHeight-ui(84),step=Math.max(1,ui(21));
        int left=W/2-90;if(x<left||x>=left+53||y<top||y>=top+step*4)return -1;int[] keys={10,9,0,11};return keys[(y-top)/step];
    }
    private void quickButtons()throws IOException{
        animation(3,1,W/2,H-layout.touchHeight);
    }
    private void reticle()throws IOException{
        OriginalPlayer p=session.player;OriginalCombat c=session.combat;if(p.current<0)return;
        OriginalCamera camera=new OriginalCamera(W,layout.viewHeight,c.zoom!=0?2:1);int cy=layout.hud+(int)camera.horizon,cx=W/2;
        if(data.e(c.weapon[11],4)!=0){
            if(c.zoom==1){
                // 0xD7A8: fixed 80-pixel scope radius in the original logical view.
                for(int y=layout.hud;y<H;y++)for(int x=0;x<W;x++)if((x-cx)*(x-cx)+(y-cy)*(y-cy)>6400)frame[y*W+x]=0;
                OriginalRenderer.Picture scope=get(4304);blit(scope,cx-scope.width/2,cy-scope.height/2,scope.width,scope.height);
            }
            return;
        }
        if(c.target>=0&&c.targetMode!=0){int[] a=c.actors[c.target];double cs=OriginalTrig.cos(p.angle)/65536.0,sn=OriginalTrig.sin(p.angle)/65536.0;
            double dx=a[OriginalCombat.X]-p.x,dy=a[OriginalCombat.Y]-p.y,d=dx*cs+dy*sn;
            if(d>0){cy=layout.hud+(int)camera.heightY(d,45);cx+=(int)((cs*dy-sn*dx)*camera.focal/d);}}
        int state=Math.max(0,Math.min(2,c.targetMode));OriginalRenderer.Picture cross=get(4301),bracket=get(4302);
        int half=(int)(camera.focal*Math.tan(c.weapon[4]*Math.PI/180));
        region(bracket,state*49,49,W/2-half-ui(4),cy-ui(24),ui(8),ui(49),false);
        region(bracket,state*49,49,W/2+half-ui(4),cy-ui(24),ui(8),ui(49),true);
        region(cross,state*15,15,cx-ui(7),cy-ui(7),ui(15),ui(15),false);
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
