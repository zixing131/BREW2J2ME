package bio;

import bio.original.*;
import java.io.IOException;
import java.util.Hashtable;
import javax.microedition.lcdui.*;

/** MIDP adapter for the recovered original state machines. */
final class OriginalCanvas extends Canvas implements Runnable,CommandListener,OriginalSession.Resources,OriginalRenderer.Images,OriginalRenderer.Labels {
    private static final int COVER=0,MENU=1,PLAY=2,PAUSE=3,INFO=4,ERROR=5,SAVE=6,LOAD=7,SUPPLY=8,INVENTORY=9,UPGRADE=10,PREMIUM=11,OFFER=12,OVERWRITE=13,PREMIUM_WEAPONS=14,SETTINGS=15;
    private final BioMIDlet app;
    private final OriginalAudio audio=new OriginalAudio();
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
    private final OriginalFlash[] flashes=new OriginalFlash[5];
    private OriginalRenderer.Picture cover;
    private int screen=COVER,selection,input,lastText=-1,dialogPage,dialogLines,dialogRows=5,returnScreen=MENU,shopSlot,offerItem,offerReturn,saveReturn=PAUSE,pendingSlot;
    private int pointerKey=-1,pointerRow=-1,lastDialogEvent=-1,lastDialogPc=-1;
    private String info="",infoTitle="游戏帮助",notice="";
    private int infoLine,offerSelection,settingsReturn=MENU;
    private final OriginalNotice hint=new OriginalNotice();
    private String[] saveDescriptions=new String[4];
    private boolean gps,active=true,fireHeld,scriptSave,touch,touchConfigured;
    private volatile boolean running=true;
    private final Command back=new Command("返回",Command.BACK,1);
    OriginalCanvas(BioMIDlet app){
        this.app=app;setFullScreenMode(true);addCommand(back);setCommandListener(this);
        try{
            text=new OriginalText(read(0));font=new OriginalFont(read(10000));animations=new OriginalAnimation(read(20000));data=new OriginalData(read(15000),read(51000));
            cover=get(5045);tiles=new int[75][];for(int i=0;i<75;i++)tiles[i]=rgb(Image.createImage("/images/"+(1101+i)+".png"));
            atlas=rgb(Image.createImage("/images/1000.png"));resize();
        }catch(Exception e){screen=ERROR;info="游戏资源载入失败，请重新安装。";e.printStackTrace();}
        syncAudio();new Thread(this).start();
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
    private void open(int s){screen=s;selection=0;notice="";clearInput();syncAudio();}
    private void settings(int from){settingsReturn=from;open(SETTINGS);}
    private void syncAudio(){
        boolean menu=screen==COVER||screen==MENU||(screen==SETTINGS&&settingsReturn==MENU)||(screen==INFO&&returnScreen==MENU)||(screen==LOAD&&saveReturn==MENU);
        audio.update(screen==ERROR?0:menu?30000:30001,active&&running);
    }
    private void newGame(){try{session=new OriginalSession(data,this);hint.clear();lastText=-1;dialogPage=0;gps=false;open(PLAY);}catch(Exception e){fail(e);}}
    public void run(){
        while(running){long start=System.currentTimeMillis();synchronized(this){if(active&&screen==PLAY)tick();if(active)repaint();}
            long ms=50-(System.currentTimeMillis()-start);try{Thread.sleep(ms>0?ms:1);}catch(InterruptedException ignored){}
        }
    }
    private void tick(){try{
        // A render/update tick is not a new BREW EVT_KEY. The original combat
        // latch itself continues firing on a hit; sniper zoom needs a second press.
        hint.tick(W);session.tick(input);
        if(session.combat.pendingNotice>0){showHint(session.combat.pendingNotice);session.combat.pendingNotice=0;}
        if(session.vm.pendingNotice>0){showHint(session.vm.pendingNotice);session.vm.pendingNotice=0;}
        syncDialogue();
        if(session.player.hp<=0){open(PAUSE);notice="生命耗尽，请载入记录";}
        else if(session.vm.ended){autosave();open(PAUSE);notice="恭喜完成全部任务";}
    }catch(Exception e){fail(e);}}
    private void syncDialogue(){
        OriginalVM v=session.vm;
        if(lastText!=v.textId||lastDialogEvent!=v.event||lastDialogPc!=v.pc){lastText=v.textId;lastDialogEvent=v.event;lastDialogPc=v.pc;dialogPage=0;}
    }
    private void fail(Exception e){clearInput();screen=ERROR;audio.close();info="游戏运行失败，请返回主菜单重试。";e.printStackTrace();}
    synchronized void activate(){active=true;clearInput();syncAudio();}
    synchronized void suspend(){if(active&&session!=null){autosave();if(screen==PLAY)open(PAUSE);}active=false;clearInput();audio.close();}
    synchronized void shutdown(){if(session!=null)autosave();active=false;running=false;audio.close();}
    protected void hideNotify(){suspend();}
    protected void showNotify(){activate();}
    private void autosave(){if(session==null||session.player.hp<=0)return;try{OriginalSaves.save(3,session);}catch(Exception e){notice="自动保存失败，请手动保存";}}
    private int action(int key){try{return getGameAction(key);}catch(IllegalArgumentException e){return 0;}}
    private int numeric(int key){if(key>=KEY_NUM0&&key<=KEY_NUM9)return key-KEY_NUM0;if(key==KEY_POUND)return 10;if(key==KEY_STAR||key==-7)return 11;if(key==-6)return 5;int a=action(key);return a==UP?2:a==DOWN?8:a==LEFT?4:a==RIGHT?6:a==FIRE?5:-1;}
    private int bit(int n){return n==1?4:n==3?8:n==2?1:n==8?2:n==4?256:n==6?512:0;}
    protected synchronized void keyPressed(int key){press(numeric(key));}
    private void press(int n){if(screen==PLAY&&!session.vm.busy()){input|=bit(n);if(n==5){fireHeld=true;session.fire();}}}
    protected synchronized void keyReleased(int key){int n=numeric(key);input&=~bit(n);if(n==5)fireHeld=false;choose(n);}
    protected synchronized void keyRepeated(int key){if(screen!=PLAY){int n=numeric(key);if(n==2||n==8){if(screen==INFO||screen==OFFER)choose(n);else navigate(n==2?-1:1);}}}
    private void navigate(int delta){int count=count();if(count>0){selection=(selection+count+delta)%count;notice="";}}
    private void goBack(){
        clearInput();
        if(screen==PLAY){open(PAUSE);autosave();}
        else if(screen==PAUSE)open(PLAY);
        else if(screen==SAVE||screen==LOAD){open(saveReturn);scriptSave=false;}
        else if(screen==OVERWRITE)open(SAVE);
        else if(screen==UPGRADE)open(INVENTORY);
        else if(screen==PREMIUM_WEAPONS)open(PREMIUM);
        else if(screen==SUPPLY||screen==INVENTORY||screen==PREMIUM)open(PAUSE);
        else if(screen==OFFER){if(session.vm.action.kind==22){session.vm.action.kind=0;session.vm.offer=-1;}open(offerReturn);selection=offerSelection;}
        else if(screen==INFO)open(returnScreen);
        else if(screen==SETTINGS)open(settingsReturn);
        else open(MENU);
    }
    public synchronized void commandAction(Command c,Displayable d){goBack();}
    private void records(boolean write,boolean fromScript){saveReturn=screen;scriptSave=fromScript;open(write?SAVE:LOAD);for(int i=0;i<4;i++)saveDescriptions[i]=OriginalSaves.description(i,data,this);}
    private void saveTo(int slot){
        int old=session.vm.action.kind;if(scriptSave)session.vm.acknowledge();
        try{OriginalSaves.save(slot,session);open(scriptSave?PLAY:saveReturn);scriptSave=false;notice="已保存到记录"+(slot+1);}
        catch(Exception e){session.vm.action.kind=old;open(SAVE);notice="保存失败，请重试";}
    }
    private void offer(int item,int backTo){dialogPage=0;offerItem=item;offerReturn=backTo;offerSelection=selection;open(OFFER);}
    private void info(String title,String message,int backTo){infoTitle=title;info=message;infoLine=0;returnScreen=backTo;open(INFO);}
    private void showHint(int id){String message=text.get(id);hint.show(message,font.measure(message,2),W);}
    public void drawLabel(int[] dest,int w,int h,int id,int cx,int cy){
        String message=text.get(id);int width=font.measure(message,0);
        font.draw(dest,w,h,message,cx-width/2,cy-6,Math.max(1,width),0,0,1);
    }
    private void choose(int n){
        if(n<0)return;
        if(screen==COVER){if(n==5)open(MENU);return;}
        if(screen==ERROR){if(n==0||n==11||n==5)open(MENU);return;}
        if(screen==INFO){
            int rows=pageRows(),lines=font.draw(frame,W,H,info,15,60,W-30,0xffffff,0,0);
            if(n==0||n==11)goBack();
            else if(n==2)infoLine=Math.max(0,infoLine-rows);
            else if(n==5&&infoLine+rows>=lines)goBack();
            else if(n==8||n==5)infoLine=Math.min(Math.max(0,lines-rows),infoLine+rows);
            return;
        }
        if(screen==PLAY){
            OriginalVM v=session.vm;
            if(n==11){goBack();return;}
            if(v.action.kind==17&&v.narration!=null){if(n==5)v.narration.accelerate();return;}
            if(v.action.kind==4||v.action.kind==17){
                syncDialogue();measureDialogue();
                if(n==2)dialogPage=Math.max(0,dialogPage-1);
                else if(n==8)dialogPage=Math.min(Math.max(0,dialogLines-dialogRows),dialogPage+1);
                else if(n==5){if(dialogPage+dialogRows<dialogLines)dialogPage=Math.min(dialogLines-dialogRows,dialogPage+dialogRows);else{v.acknowledge();dialogPage=0;}}
                return;
            }
            if(v.action.kind==18){if(n==5)records(true,true);else if(n==0)v.acknowledge();return;}
            if(v.action.kind==21){if(n==5||n==0)v.transition(n==5);return;}
            if(v.action.kind==22){if(n==5)offer(v.offer,PLAY);else if(n==0){v.action.kind=0;v.offer=-1;}return;}
            if(v.busy())return;
            if(n==0){showHint(session.player.hp>0&&session.player.medicine()?8001:8000);}
            else if(n==7)session.combat.cycle();
            else if(n==9){if(session.player.global[46]!=0)gps=!gps;else offer(3,PLAY);}
            else if(n==10)open(PREMIUM);
            return;
        }
        if(n==0||n==11){goBack();return;}
        if(n==2||n==8){if(screen==OFFER){dialogRows=pageRows();dialogLines=font.draw(frame,W,H,offerMessage(),15,60,W-30,0xffffff,0,0);dialogPage=Math.max(0,Math.min((dialogLines-1)/dialogRows,dialogPage+(n==2?-1:1)));}else navigate(n==2?-1:1);return;}
        if(n!=5)return;
        if(screen==MENU){
            if(selection==0)newGame();else if(selection==1)records(false,false);else if(selection==5)app.quit();
            else if(selection==2)settings(MENU);
            else if(selection==3)info("游戏帮助",text.get(7009),MENU);
            else info("游戏关于","3D生化启示录$n版本 0.3.9$n$n"+text.get(7007)+"$n$n按数字键或屏幕按键操作。",MENU);
        }else if(screen==SETTINGS){
            if(selection==0){touch=!touch;touchConfigured=true;}
            else if(selection==1)touchConfigured=false;
            else audio.setEnabled(!audio.enabled());
            resize();syncAudio();
        }else if(screen==PAUSE){
            if(selection==0){if(session.player.hp<=0)records(false,false);else open(PLAY);}else if(selection==1){if(session.player.hp>0)records(true,false);else notice="请载入记录或开始新游戏";}else if(selection==2)records(false,false);
            else if(selection==3)open(INVENTORY);else if(selection==4)open(SUPPLY);else if(selection==5)open(PREMIUM);
            else if(selection==6){notice=session.player.hp>0&&session.player.medicine()?"成功使用药品":"没有可用的药品";}
            else if(selection==7){notice=session.player.useInvisibility()?"隐身已开启，攻击后解除":"隐身已开启或能源不足";}
            else if(selection==9)settings(PAUSE);
            else {autosave();open(MENU);}
        }else if(screen==SAVE){pendingSlot=selection;try{OriginalSaves.load(selection,data,this);open(OVERWRITE);}catch(Exception empty){saveTo(pendingSlot);}}
        else if(screen==OVERWRITE)saveTo(pendingSlot);
        else if(screen==LOAD){try{session=OriginalSaves.load(selection,data,this);hint.clear();lastText=-1;dialogPage=0;gps=false;open(PLAY);}catch(Exception e){notice="记录无法载入，请选择其他记录";}}
        else if(screen==SUPPLY)notice=session.player.buySupply(selection)?"购买成功":"金钱不足";
        else if(screen==INVENTORY){if(session.player.count==0)return;shopSlot=selection;session.combat.select(shopSlot);open(UPGRADE);}
        else if(screen==UPGRADE){notice=session.player.upgrade(shopSlot,selection)?"改装成功":"已达最高等级或金钱不足";}
        else if(screen==PREMIUM){if(selection==0)open(PREMIUM_WEAPONS);else offer(selection-1,PREMIUM);}
        else if(screen==PREMIUM_WEAPONS)offer(selection+7,PREMIUM_WEAPONS);
        else if(screen==OFFER){
            if(session.player.grantPremium(offerItem)){
                if(session.vm.action.kind==22){session.vm.action.kind=0;session.vm.offer=-1;}
                if(offerItem>=7){session.combat.zoom=0;session.combat.reload=0;session.combat.cooldown=0;session.combat.switchFrame=-1;}
                open(offerReturn);selection=offerSelection;notice="购买成功，道具已生效";autosave();
            }
            else notice=session.player.premiumFailure(offerItem);
        }
    }
    private int count(){return screen==MENU?6:screen==SETTINGS?3:screen==PAUSE?10:screen==SAVE?3:screen==LOAD?4:screen==SUPPLY?6:screen==INVENTORY?session.player.count:screen==UPGRADE?5:screen==PREMIUM?6:screen==PREMIUM_WEAPONS?5:0;}
    private boolean originalShop(){return screen==PREMIUM||screen==PREMIUM_WEAPONS||screen==SUPPLY;}
    private int shopStep(){return screen==PREMIUM?25:35;}
    private int listStep(){return screen==SAVE||screen==LOAD?44:screen==INVENTORY?36:28;}
    private int listLeft(){return (W-Math.min(W-12,280))/2;}
    private int listTop(){int actual=Math.min(shown(),count()-scroll());return 52+Math.max(0,(H-112-actual*listStep())/2);}
    private int shown(){return Math.min(count(),originalShop()?Math.max(2,(H-(screen==SUPPLY?100:146))/shopStep()):Math.max(1,(H-112)/listStep()));}
    private int shopTop(){int margin=screen==SUPPLY?100:146,base=screen==SUPPLY?69:56;return (H-margin-shown()*shopStep())/2+base;}
    private int menuHit(int x,int y){
        if(screen==MENU)return layout.mainMenuHit(x,y,selection);
        if(originalShop()){int top=shopTop(),n=shown();if(x<0||x>=W||y<top||y>=top+n*shopStep())return -1;int row=scroll()+(y-top)/shopStep();return row<count()?row:-1;}
        int top=listTop(),actual=Math.min(shown(),count()-scroll());
        if(x<listLeft()||x>=W-listLeft()||y<top||y>=top+actual*listStep())return -1;
        return scroll()+(y-top)/listStep();
    }
    private int scroll(){int n=shown();return n==0?0:selection/n*n;}
    private String slotName(int i){return i==3?"自动记录":"记录"+(i+1);}
    private String savePart(int i,boolean detail){
        String s=saveDescriptions[i];if(s==null)s=OriginalSaves.description(i,data,this);
        int at=s.indexOf("$n");return at<0?(detail?"":s):detail?s.substring(at+2):s.substring(0,at);
    }
    private String item(int i){
        OriginalPlayer p=session==null?null:session.player;
        if(screen==MENU)return text.get(8900+i);
        if(screen==SETTINGS)return i==0?"屏幕按键："+(touch?"开启":"关闭"):i==1?"自动设置":"游戏音乐："+(audio.enabled()?"开启":"关闭");
        if(screen==PAUSE){String[] a={"继续游戏","保存记录","载入记录","武器改装","随身商店","短代商城","药品 "+p.medicines,"隐身 "+bio.original.Binary.u16(p.global,44),"返回主菜单","游戏设置"};return a[i];}
        if(screen==SAVE||screen==LOAD)return slotName(i)+"  "+savePart(i,false);
        if(screen==SUPPLY)return text.get(9250+i)+" "+OriginalPlayer.PRICES[i]+"金";
        if(screen==INVENTORY){int idx=p.slots[8*i+1]&255;return (p.current==i?"已装备 ":"")+text.get(data.w(idx,50));}
        if(screen==UPGRADE){String[] a={"攻击","射程","射速","瞄准","装填"};int lv=p.slots[shopSlot*8+2+i]&255,idx=p.slots[shopSlot*8+1]&255;return a[i]+" "+lv+"/"+data.maxUpgrade(idx,i);}
        if(screen==PREMIUM)return text.get(9010+i);
        if(screen==PREMIUM_WEAPONS)return text.get(bio.original.Binary.u16(data.weapons,2+(i+7)*20));
        return "";
    }
    protected synchronized void pointerPressed(int px,int py){
        if(layout==null||!touch)return;int x=px/layout.scale,y=py/layout.scale;pointerRow=-1;
        if(screen==MENU){int row=layout.mainMenuHit(x,y,selection);if(row>=0){selection=row;pointerRow=row;}return;}
        if(count()>0){int row=menuHit(x,y);if(row>=0){selection=row;pointerRow=row;}
            else if(originalShop()){if(y>=H-21)pointerKey=x<W/2?5:0;else if(y<shopTop())navigate(-1);else navigate(1);}
            else if(y<listTop())navigate(-1);else if(y>=H-27)pointerKey=footerKey(x,true);return;}
        if(screen==PLAY&&!session.vm.busy()){pointerKey=quickHit(x,y);if(pointerKey<0)pointerKey=layout.touchKey(x,y);press(pointerKey);}
        else if(y>=H-27)pointerKey=footerKey(x,screen==OFFER||screen==INFO);
        else if(screen==COVER||screen==PLAY)pointerKey=5;
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
    /** Preserve the original metal corners while stretching only the panel interior. */
    private void panel(int id,int x,int y,int w,int h)throws IOException{
        OriginalRenderer.Picture p=get(id);int edge=5;
        for(int yy=Math.max(0,y);yy<y+h&&yy<H;yy++)for(int xx=Math.max(0,x);xx<x+w&&xx<W;xx++){
            int dx=xx-x,dy=yy-y;
            int sx=dx<edge?dx:dx>=w-edge?p.width-w+dx:edge+(dx-edge)*(p.width-2*edge)/Math.max(1,w-2*edge);
            int sy=dy<edge?dy:dy>=h-edge?p.height-h+dy:edge+(dy-edge)*(p.height-2*edge)/Math.max(1,h-2*edge);
            int color=p.pixels[sy*p.width+sx];if((color>>>24)!=0)frame[yy*W+xx]=color;
        }
    }
    private String fit(String s,int width){
        s=OriginalText.plain(s);if(font.measure(s,0)<=width)return s;
        int n=0,size=0;while(n<s.length()&&size+font.advance(s.charAt(n))+12<=width)size+=font.advance(s.charAt(n++));
        return s.substring(0,n)+"…";
    }
    private void chrome(String title,String subtitle)throws IOException{
        rect(0,0,W,H,0x202520);
        for(int y=46;y<H-27;y+=4)rect(0,y,W,1,0x1c211d);
        OriginalRenderer.Picture metal=get(5006);region(metal,0,metal.height,0,0,W/2,46,false);region(metal,0,metal.height,W/2,0,W-W/2,46,true);
        centered(title,W/2,9,0xffffcc);centered(fit(subtitle,W-22),W/2,31,0x9dde8e);
    }
    private int footerKey(int x,boolean scroll){return scroll?(x<W/4?0:x<W/2?2:x<W*3/4?8:5):(x<W/2?0:5);}
    private void footer(boolean scroll,String backText,String okText)throws IOException{
        int count=scroll?4:2;String[] labels=scroll?new String[]{"0"+backText,"2上移","8下移","5"+okText}:new String[]{"0"+backText,"5"+okText};
        if(screen==INFO||screen==OFFER){labels[1]="2向上";labels[2]="8向下";}
        for(int i=0;i<count;i++){int x=i*W/count,w=(i+1)*W/count-x;panel(5014,x+1,H-26,w-2,25);centered(labels[i],x+w/2,H-19,i==count-1?0xffff00:0xffffff);}
    }
    private int pageRows(){return Math.max(1,(H-99)/14);}
    private void textPage(String title,String subtitle,String message,int firstLine,boolean scroll,String confirm)throws IOException{
        chrome(title,subtitle);panel(5012,6,51,W-12,H-82);
        int lines=font.draw(frame,W,H,message,15,60,W-30,0xffffff,firstLine,pageRows());
        if(lines>pageRows())label((firstLine+1)+"/"+lines,W-43,H-46,36,0x9dde8e);
        footer(scroll,"返回",confirm);
    }
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
    private String menuTitle(){
        return screen==PAUSE?"系统菜单":screen==SAVE?"保存记录":screen==LOAD?"载入记录":screen==INVENTORY?"随身武器":screen==UPGRADE?"武器改装":"游戏设置";
    }
    private String menuSubtitle(){
        if(screen==SETTINGS)return (touchConfigured?"手动设置 ":"自动设置 ")+getWidth()+"x"+getHeight();
        if(screen==SAVE||screen==LOAD)return "游戏记录  "+(selection+1)+"/"+count();
        if(screen==INVENTORY||screen==UPGRADE)return "金钱 "+sessionMoney();
        OriginalPlayer p=session.player;return "第"+p.level+"关  生命"+p.hp+"/"+p.maxHp;
    }
    private String menuSummary(){
        if(notice.length()>0)return notice;
        if(screen==SETTINGS)return selection==0?"确定后开启或关闭屏幕按键":selection==1?"小屏按键关闭，大屏自动开启":audio.unavailable()?"当前设备无法播放音乐":"开启或关闭游戏音乐";
        if(screen==SAVE)return "选择位置保存当前游戏记录";
        if(screen==LOAD)return "选择记录，继续未完成的任务";
        if(screen==INVENTORY)return "确定装备武器，并进入改装";
        if(screen==UPGRADE){int idx=session.player.slots[shopSlot*8+1]&255,lv=session.player.slots[shopSlot*8+2+selection]&255;
            return lv>=data.maxUpgrade(idx,selection)?"已达到最高改装等级":"改装需要 "+data.upgradeCost(session.player,shopSlot,selection,lv+1)+" 金钱";}
        return "药品 "+session.player.medicines+"  隐身能源 "+Binary.u16(session.player.global,44)+"  "+(selection+1)+"/"+count();
    }
    private void menu()throws IOException{
        if(screen==MENU){mainMenu();return;}
        if(originalShop()){shopMenu();return;}
        chrome(menuTitle(),menuSubtitle());int n=shown(),start=scroll(),actual=Math.min(n,count()-start),top=listTop(),left=listLeft(),width=W-2*left;
        for(int i=0;i<actual;i++){
            int row=start+i,y=top+i*listStep(),height=listStep()-2;boolean selected=row==selection;
            panel(selected?5002:5014,left,y,width,height);int x=left+10,wrap=width-20;
            if(screen==INVENTORY){int idx=session.player.slots[row*8+1]&255;OriginalRenderer.Picture gun=get(animations.frame(3,idx+6)[0][0]);
                int thumbWidth=28,thumbHeight=Math.min(22,28*gun.height/gun.width);blit(gun,x,y+(height-thumbHeight)/2,thumbWidth,thumbHeight);x+=34;wrap-=34;}
            int ty=y+(height-12)/2;
            if(screen==SAVE||screen==LOAD){ty=y+7;label(fit(savePart(row,true),width-20),left+10,y+25,width-20,0xaac8bd);}
            label("$T00001$S000000"+fit(item(row),wrap),x,ty,wrap,selected?0xffff00:0xffffff);
        }
        if(count()==0){panel(5012,8,60,W-16,56);centered("暂无武器",W/2,70,0xffff00);centered("在地图中寻找武器",W/2,90,0xffffff);}
        panel(5012,6,H-57,W-12,28);font.draw(frame,W,H,menuSummary(),13,H-51,W-26,0x9dde8e,0,1);
        footer(true,"返回","确定");
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
    private void dialog(String message,String title)throws IOException{
        int height=Math.min(H-60,100),top=(H-height)/2;
        panel(5012,6,top,W-12,height);panel(5014,12,top+5,W-24,25);centered(title,W/2,top+11,0xffff00);
        font.draw(frame,W,H,message,16,top+39,W-32,0xffffff,0,Math.max(1,(height-44)/14));
        footer(false,"取消","确定");
    }
    private String offerMessage(){
        int p=2+20*offerItem;
        return "$Hffff00"+text.get(Binary.u16(data.weapons,p))+"$Hffffff$n$n"+text.get(Binary.u16(data.weapons,p+2))+"$n$n本次购买无需付费。"+(offerItem>=7?"$n购买后装备该枪械，替换当前超级枪械。":"");
    }
    private void storyDialog()throws IOException{
        syncDialogue();OriginalVM v=session.vm;String message=OriginalDialogue.message(v,text);
        if(v.dialogMode==0){
            // 0x1D170: black screen, fixed 160px text region, latest lines around center.
            rect(0,0,W,H,0);String visible=v.narration==null?message:v.narration.visible();
            int width=Math.min(160,W),x=(W-width)/2+4;
            int lines=font.drawNarration(frame,W,H,visible,x,0,width-4,0);
            font.drawNarration(frame,W,H,visible,x,H/2-7-20*Math.max(0,lines-2),width-4,lines);return;
        }
        boolean named=v.speaker>0;int mode=v.dialogMode;
        int height=OriginalDialogue.textHeight(mode,named),top=OriginalDialogue.textTop(mode,named,H);
        int left=mode==1?70:mode==3?W/4:0,width=mode==3?W/2:W;
        int inset=OriginalDialogue.inset(mode,W),x=left+inset+1,wrap=Math.max(14,width-2*inset);
        if(mode==3){blit(get(5012),W/4-6,H/2-17,W/2+12,35);}
        else{
            String name=named?text.get(v.speaker):"";int portrait=OriginalDialogue.portrait(name);
            if(portrait>0){OriginalRenderer.Picture p=get(portrait);blit(p,mode==1?5:0,mode==1?top+height-p.height+25:top-p.height-20,p.width,p.height);}
            if(mode==1)animation(3,5,120,H/2);
            else{
                // Native frame 3 is 176px wide. Extend its panel to cover adaptive text widths.
                blit(get(5012),0,H-65,W,65);OriginalRenderer.Picture button=get(5029);blit(button,W-20,H-1-button.height,button.width,button.height);
            }
            if(named)font.drawSpaced(frame,W,H,"$T00000$Hffff00"+name,mode==1?70:14,top-16,W-20,0xffff00,0,1,2,16);
        }
        dialogRows=Math.max(1,(height-2)/16);
        dialogLines=font.drawSpaced(frame,W,H,message,x,top+3,wrap,0xffffff,dialogPage,dialogRows,2,16);
    }
    private void measureDialogue(){
        OriginalVM v=session.vm;int mode=v.dialogMode;
        int width=mode==3?W/2:W,inset=OriginalDialogue.inset(mode,W);
        dialogRows=Math.max(1,(OriginalDialogue.textHeight(mode,v.speaker>0)-2)/16);
        dialogLines=font.drawSpaced(frame,W,H,OriginalDialogue.message(v,text),0,0,Math.max(14,width-2*inset),0xffffff,0,0,2,16);
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
            if(c.zoom==0&&c.cooldown>0&&shotFrame==0&&data.scene[base+4]==0&&data.scene[base+5]==0){
                int id=OriginalFlash.maskId(data.scene,base,c.shots),index=id-4111;
                if(index>=0&&index<flashes.length){
                    if(flashes[index]==null)flashes[index]=new OriginalFlash(Binary.read("/effects/"+id+".bin"));
                    flashes[index].draw(frame,W,H,get(4101),W/2+Binary.s16(data.scene,base+8),H-layout.touchHeight-weapon.height+Binary.s16(data.scene,base+10));
                }
            }
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
        if(v.action.kind==4||v.action.kind==17)storyDialog();
        if(v.action.kind==18)dialog("保存当前游戏记录？","保存记录");
        if(v.action.kind==21)dialog("是否进入下一关？","进入下一关");
        if(v.action.kind==22)dialog(text.get(bio.original.Binary.u16(data.weapons,2+20*v.offer))+"$n确定查看商品说明。","商城道具");
        if(v.unsupported>=0)dialog("剧情暂时无法继续，请按*键返回系统菜单。","游戏提示");
        if(hint.active){
            int top=layout.hud+3;
            // 0x1D040: RGB565 0x41c7, flags 0x1302 (19/32 alpha), border 0x8cb3.
            for(int y=top;y<top+20&&y<H;y++)for(int x=0;x<W;x++)frame[y*W+x]=OriginalMaterials.fog(frame[y*W+x],0x41c7,19);
            rect(0,top,W,1,rgb565(0x8cb3));rect(0,top+20,W,1,rgb565(0x8cb3));
            font.drawSpaced(frame,W,H,"$T00001$S000000"+hint.message,hint.x,top+4,Math.max(1,hint.width),0x00ff00,0,1,2,16);
        }
    }
    private void hud()throws IOException{
        OriginalPlayer p=session.player;OriginalCombat c=session.combat;
        animation(3,p.invisible?2:0,W/2,0);OriginalRenderer.Picture hp=get(5031);int fill=ui(94)*Math.max(0,p.hp)/Math.max(1,p.maxHp);
        // Clip the bar; never stretch its highlight as HP changes (0x77C4).
        for(int y=0;y<ui(7);y++)for(int x=0;x<fill;x++)frame[(ui(14)+y)*W+x]=hp.pixels[(y*hp.height/Math.max(1,ui(7)))*hp.width+x*hp.width/Math.max(1,ui(94))];
        label(""+p.medicines,ui(36),ui(2),ui(35),0xffff00);
        label(p.infiniteAmmo?"无限":""+p.reserve,ui(75),ui(20),W-ui(75),0xffff00);
        if(p.current>=0){int index=p.slots[p.current*8+1]&255;animation(3,index+6,W/2,0);
            data.resolve(p,p.current,c.weapon);String ammo=c.weapon[6]!=0?"无限":(c.reload>0?"装弹 ":"")+(p.slots[p.current*8+7]&255)+"-"+c.weapon[7];
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
    private void touchControls()throws IOException{
        int split=W*3/5,top=H-layout.touchHeight;String[] labels={"1左","2前","3右","4转","5击","6转","7枪","8退","9图"};
        for(int row=0;row<3;row++)for(int col=0;col<3;col++){int x=col*split/3,y=top+row*layout.touchHeight/3,w=(col+1)*split/3-x,h=(row+1)*layout.touchHeight/3-row*layout.touchHeight/3;panel(5014,x,y,w,h);centered(labels[row*3+col],x+w/2,y+(h-12)/2,0x9dff83);}
        panel(5002,split,top,W-split,layout.touchHeight/2);centered("5攻击",(split+W)/2,top+(layout.touchHeight/2-12)/2,0xffff00);
        panel(5014,split,top+layout.touchHeight/2,W-split,layout.touchHeight-layout.touchHeight/2);centered("7换枪",(split+W)/2,top+layout.touchHeight/2+(layout.touchHeight/2-12)/2,0xffffff);
        label("0药品",4,46,W/3-4,0x00ff00);label("#商城",W/3+3,46,W/3-3,0x00ff00);label("*系统",W*2/3+3,46,W/3-3,0x00ff00);
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
            else if(screen==INFO||screen==ERROR)textPage(screen==ERROR?"游戏提示":infoTitle,screen==ERROR?"请重试":"3D生化启示录",info,screen==INFO?infoLine:0,screen==INFO,"确定");
            else if(screen==OVERWRITE)textPage("覆盖记录",slotName(pendingSlot),"已有游戏记录，是否覆盖？$n$n"+savePart(pendingSlot,false)+"$n"+savePart(pendingSlot,true)+"$n$n覆盖后将保存当前记录。",0,false,"保存");
            else if(screen==OFFER){dialogRows=pageRows();dialogLines=font.draw(frame,W,H,offerMessage(),15,60,W-30,0xffffff,0,0);textPage("确认购买",notice.length()>0?notice:"无需付费 / 确认生效",offerMessage(),dialogPage*dialogRows,true,"购买");}
            else menu();
        }catch(Exception e){fail(e);font.draw(frame,W,H,info,6,30,W-12,0xff5555,0,10);}
        int scale=layout.scale;if(scale>1)for(int y=0;y<H*scale;y++)for(int x=0;x<W*scale;x++)scaled[y*W*scale+x]=frame[y/scale*W+x/scale];
        g.drawRGB(scaled,0,W*scale,0,0,W*scale,H*scale,false);
    }
}
