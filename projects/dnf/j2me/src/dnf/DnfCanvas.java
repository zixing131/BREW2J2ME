package dnf;
import java.io.*;
import javax.microedition.lcdui.*;
import javax.microedition.rms.*;
/** MIDP adapter. All asset parsing, composition and animation run independently of MIDP. */
public final class DnfCanvas extends Canvas implements Runnable {
    private final DnfMIDlet owner;
    private final Session session=new Session();
    private Surface surface;
    private int[] scanline;
    private volatile boolean running=true,paused=true;
    private boolean ready;
    private Thread thread;
    private int keys,menu=0,selected,mapIndex,slot;
    private int[] maps;
    private String notice="原场景与动作已接入；剧情战斗仍在移植";
    private long noticeUntil;
    private Image icon;
    private static final String[] MAIN={"进入场景试玩","读取试玩记录","保存试玩记录","切换原版场景","角色外观","操作设置","移植说明","退出"};
    private static final String[] TOUCH={"←","↑","↓","→","斩","菜单"};
    public DnfCanvas(DnfMIDlet owner){
        this.owner=owner;setFullScreenMode(true);
        try{icon=Image.createImage("/icon.png");}catch(IOException ignored){}
        thread=new Thread(this);thread.start();
    }
    public synchronized void resume(){paused=false;keys=0;}
    public synchronized void suspend(){paused=true;keys=0;}
    public synchronized void stop(){running=false;keys=0;if(thread!=null)thread.interrupt();}
    protected synchronized void hideNotify(){paused=true;keys=0;}
    protected synchronized void showNotify(){paused=false;keys=0;}
    protected synchronized void sizeChanged(int w,int h){surface=null;scanline=null;keys=0;}
    public static boolean defaultTouch(int w,int h){return Viewport.defaultTouch(w,h);}
    private boolean touch(){return session.touchMode==1||(session.touchMode==0&&defaultTouch(getWidth(),getHeight()));}
    private void message(String value){notice=value;noticeUntil=System.currentTimeMillis()+4000;}
    public void run(){
        try {
            DataInputStream r=new DataInputStream(new ByteArrayInputStream(Bytes.resource("/maps.bin")));
            maps=new int[r.readUnsignedShort()];for(int i=0;i<maps.length;i++)maps[i]=r.readUnsignedShort();r.close();
            synchronized(this){session.load(maps[0]);ready=true;}
        }catch(Exception e){synchronized(this){notice="资源加载失败："+e.toString();menu=7;}}
        while(running){long start=System.currentTimeMillis();
            synchronized(this){if(!paused&&ready&&menu==-1)session.tick(keys);}
            if(!paused){repaint();serviceRepaints();}
            long wait=Session.TICK_MS[session.speed]-(System.currentTimeMillis()-start);
            try{Thread.sleep(wait>0?wait:1);}catch(InterruptedException ignored){}
        }
    }
    private int movement(int key){
        if(key==KEY_NUM4)return Session.LEFT;if(key==KEY_NUM6)return Session.RIGHT;
        if(key==KEY_NUM2)return Session.UP;if(key==KEY_NUM8)return Session.DOWN;
        int a=0;try{a=getGameAction(key);}catch(IllegalArgumentException ignored){}
        if(a==LEFT)return Session.LEFT;if(a==RIGHT)return Session.RIGHT;if(a==UP)return Session.UP;if(a==DOWN)return Session.DOWN;return 0;
    }
    protected synchronized void keyPressed(int key){
        if(!ready){if(menu==7&&(key==KEY_NUM0||key==KEY_STAR||key==-7))owner.quit();return;}int move=movement(key);
        boolean fire=key==KEY_NUM5||key==-5;
        try{fire=fire||getGameAction(key)==FIRE;}catch(IllegalArgumentException ignored){}
        if(menu==-1){
            if(move!=0){keys|=move;session.actionViewer=false;}
            else if(fire)session.attack();
            else if(key==KEY_NUM1)session.inspectAction(-1);
            else if(key==KEY_NUM3)session.inspectAction(1);
            else if(key==KEY_STAR||key==-6||key==-7||key==KEY_NUM0){menu=0;selected=0;keys=0;}
        }else{
            if(key==-7||key==KEY_NUM0||key==KEY_STAR){menu=menu==0?-1:0;selected=0;}
            else if(move==Session.UP||move==Session.LEFT)change(-1);
            else if(move==Session.DOWN||move==Session.RIGHT)change(1);
            else if(fire||key==-6)choose();
        }
        repaint();
    }
    protected synchronized void keyReleased(int key){keys&=~movement(key);}
    protected synchronized void keyRepeated(int key){if(menu!=-1)keyPressed(key);}
    private void change(int delta){
        if(menu==0)selected=(selected+delta+MAIN.length)%MAIN.length;
        else if(menu==1||menu==2)slot=(slot+delta+4)%4;
        else if(menu==3)mapIndex=(mapIndex+delta+maps.length)%maps.length;
        else if(menu==4){try{session.hero.setFamily(session.hero.family+delta);}catch(IOException e){message("外观读取失败");}}
        else if(menu==5)selected=(selected+delta+2)%2;
    }
    private void choose(){
        try{
            if(menu==0){int item=selected;selected=0;
                if(item==0){menu=-1;message("方向键移动，5挥剑，连续按5接三段斩");}
                else if(item==7)owner.quit();else menu=item;
            }else if(menu==1){RecordStore r=RecordStore.openRecordStore("dnf-port-slot-"+slot,false);
                SaveData save;try{save=SaveData.decode(r.getRecord(1));}finally{r.closeRecordStore();}
                session.restore(save);for(int i=0;i<maps.length;i++)if(maps[i]==save.map)mapIndex=i;
                menu=-1;message("已读取试玩记录 "+(slot+1));
            }else if(menu==2){byte[] data=session.save().encode();RecordStore r=RecordStore.openRecordStore("dnf-port-slot-"+slot,true);
                try{if(r.getNumRecords()==0)r.addRecord(data,0,data.length);else r.setRecord(1,data,0,data.length);}finally{r.closeRecordStore();}
                menu=-1;message("已保存试玩记录 "+(slot+1));
            }else if(menu==3){session.load(maps[mapIndex]);menu=-1;message("场景 "+session.world.id);}
            else if(menu==4)menu=-1;
            else if(menu==5){if(selected==0)session.speed=(session.speed+1)%5;else session.touchMode=(session.touchMode+1)%3;}
            else menu=0;
        }catch(Exception e){message(menu==1?"此记录不存在或已损坏":"操作失败："+e.toString());}
        keys=0;
    }
    private int viewHeight(){return Math.max(1,touch()?getHeight()-Math.max(64,getHeight()/5):getHeight());}
    protected synchronized void pointerPressed(int x,int y){
        if(!ready){if(menu==7&&y>=getHeight()-50)owner.quit();return;}
        if(!touch()||x<0||x>=getWidth()||y<0||y>=getHeight())return;
        if(menu!=-1){
            if(y>=getHeight()-42){if(x<getWidth()/2)choose();else{menu=menu==0?-1:0;selected=0;}}
            else if(menu==0){int row=Math.max(1,Math.min(27,(getHeight()-96)/MAIN.length));int item=(y-64)/row;if(y>=64&&item>=0&&item<MAIN.length){selected=item;choose();}}
            else if(menu==5){selected=y<88?0:1;choose();}
            else if(y<getHeight()/2)change(-1);else change(1);
            repaint();return;
        }
        if(y<viewHeight())return;
        int button=Math.min(5,x*6/getWidth());
        if(button<4)keys=new int[]{Session.LEFT,Session.UP,Session.DOWN,Session.RIGHT}[button];
        else if(button==4)session.attack();else {menu=0;selected=0;keys=0;}
    }
    protected synchronized void pointerDragged(int x,int y){keys=0;if(menu==-1&&touch()&&x>=0&&x<getWidth()&&y>=viewHeight()&&y<getHeight()&&x*6/getWidth()<4)pointerPressed(x,y);}
    protected synchronized void pointerReleased(int x,int y){keys=0;}
    protected synchronized void paint(Graphics g){
        int w=getWidth(),h=getHeight();g.setColor(0x11141a);g.fillRect(0,0,w,h);
        g.setFont(Font.getFont(Font.FACE_SYSTEM,Font.STYLE_PLAIN,Font.SIZE_SMALL));
        if(!ready){g.setColor(0xffffff);g.drawString(menu==7?"资源加载失败，0退出":"正在读取原版资源…",4,h/2,Graphics.TOP|Graphics.LEFT);return;}
        int vh=viewHeight(),lw=w>h?320:240,lh=w>h?240:320;
        if(surface==null||surface.w!=lw||surface.h!=lh){surface=new Surface(lw,lh);scanline=new int[w*8];}
        session.draw(surface);
        int dw=w,dh=lh*w/lw;if(dh>vh){dh=vh;dw=lw*vh/lh;}int ox=(w-dw)/2,oy=(vh-dh)/2;
        for(int py=0;py<dh;py+=8){int strip=Math.min(8,dh-py);
            for(int row=0;row<strip;row++){int sy=(py+row)*lh/dh;
                for(int px=0;px<dw;px++)scanline[row*dw+px]=Surface.rgb(surface.pixels[sy*lw+px*lw/dw]);}
            g.drawRGB(scanline,0,dw,ox,oy+py,dw,strip,false);
        }
        if(menu!=-1)drawMenu(g,w,h);
        else {
            g.setColor(0x17202c);g.fillRect(0,0,w,18);g.setColor(0xe6cf91);g.drawString("DNF 鬼剑士 · 移植试玩",4,0,Graphics.TOP|Graphics.LEFT);
            g.setColor(0x17202c);g.fillRect(0,vh-17,w,17);g.setColor(0xffffff);
            g.drawString(session.actionViewer?"动作 "+session.hero.animation.clip+" / 110   1、3切换":"方向移动  5挥剑  *菜单",4,vh-17,Graphics.TOP|Graphics.LEFT);
            if(touch()){int bw=w/6;for(int i=0;i<6;i++){g.setColor(0x293444);g.fillRect(i*bw+1,vh+2,bw-2,h-vh-4);g.setColor(0xe6cf91);g.drawString(TOUCH[i],i*bw+bw/2,vh+(h-vh)/2-8,Graphics.TOP|Graphics.HCENTER);}}
        }
        if(noticeUntil>System.currentTimeMillis()){g.setColor(0x101010);g.fillRect(0,h-35,w,35);g.setColor(0xffd77a);wrap(g,notice,5,h-34,w-10,2);}
    }
    private void drawMenu(Graphics g,int w,int h){
        int boxW=Math.min(w-16,280),left=(w-boxW)/2;g.setColor(0x151b25);g.fillRect(left,8,boxW,h-16);g.setColor(0x9e8152);g.drawRect(left,8,boxW-1,h-17);
        int y=17;if(icon!=null){g.drawImage(icon,left+8,y,Graphics.TOP|Graphics.LEFT);}
        g.setColor(0xecd19b);g.drawString("地下城与勇士",w/2+12,y,Graphics.TOP|Graphics.HCENTER);
        g.setColor(0xa6b4c6);g.drawString("鬼剑士 · WIPI 移植 0.1.0",w/2+12,y+19,Graphics.TOP|Graphics.HCENTER);
        y=64;
        if(menu==0){int row=Math.max(1,Math.min(27,(h-96)/MAIN.length));for(int i=0;i<MAIN.length;i++){g.setColor(i==selected?0x6e4222:0x253040);g.fillRect(left+10,y+i*row,boxW-20,row-2);g.setColor(i==selected?0xffdf83:0xe7edf4);g.drawString(MAIN[i],left+19,y+i*row+1,Graphics.TOP|Graphics.LEFT);}}
        else {
            g.setColor(0xffffff);
            if(menu==1||menu==2){g.drawString((menu==1?"读取":"保存")+"试玩记录 "+(slot+1),w/2,y,Graphics.TOP|Graphics.HCENTER);wrap(g,"四个独立记录位置。上下选择，确认读取或保存。此记录仅保存试玩场景、位置与设置。",left+12,y+30,boxW-24,6);}
            else if(menu==3){g.drawString("原版场景 "+maps[mapIndex]+"  ("+(mapIndex+1)+"/"+maps.length+")",w/2,y,Graphics.TOP|Graphics.HCENTER);wrap(g,"上下选择，确认进入。当前为场景浏览，原剧情的关卡解锁和切换条件尚未接入。",left+12,y+30,boxW-24,6);}
            else if(menu==4){g.drawString("原始外观组合 "+(session.hero.family+1)+" / 20",w/2,y,Graphics.TOP|Graphics.HCENTER);wrap(g,"上下切换原资源中的职业与装备组合，确认返回场景。尚未接入装备属性和职业成长。",left+12,y+30,boxW-24,6);}
            else if(menu==5){g.setColor(selected==0?0xffdf83:0xffffff);g.drawString("动画速度："+Session.TICK_MS[session.speed]+" 毫秒/帧",left+12,y,Graphics.TOP|Graphics.LEFT);g.setColor(selected==1?0xffdf83:0xffffff);g.drawString("触屏："+new String[]{"自动","开启","关闭"}[session.touchMode],left+12,y+30,Graphics.TOP|Graphics.LEFT);g.setColor(0xb7c2d2);wrap(g,"上下选择，确认更改。240×320和320×240默认隐藏触屏按键，高分辨率自动显示。",left+12,y+65,boxW-24,5);}
            else {wrap(g,"已恢复原角色图像、动作帧计时、镜像与混合效果，以及原地图图层。本版可移动和演示三段挥剑。剧情、任务、敌人AI、伤害、物品和原版存档尚未恢复。1/3可查看角色全部动作。",left+12,y,boxW-24,10);}
        }
        g.setColor(0xe6cf91);g.drawString("5 确认       0 返回",w/2,h-27,Graphics.TOP|Graphics.HCENTER);
    }
    private void wrap(Graphics g,String text,int x,int y,int width,int lines){Font f=g.getFont();int start=0;
        while(start<text.length()&&lines-->0){int end=start;while(end<text.length()&&f.substringWidth(text,start,end-start+1)<=width)end++;if(end==start)end++;g.drawString(text.substring(start,end),x,y,Graphics.TOP|Graphics.LEFT);y+=f.getHeight();start=end;}
    }
}
