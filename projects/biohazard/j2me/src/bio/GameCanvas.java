package bio;

import java.io.InputStream;
import java.io.ByteArrayOutputStream;
import javax.microedition.lcdui.*;

final class GameCanvas extends Canvas implements Runnable,CommandListener {
    private static final int MENU=0,PLAY=1,PAUSE=2,HELP=3,GALLERY=4,END=5,ERROR=6;
    private final BioMIDlet app;
    private final Command back=new Command("Back / Pause",Command.BACK,1);
    private final Command exit=new Command("Exit",Command.EXIT,2);
    private GameState game=new GameState();
    private RayRenderer renderer;
    private Image title,galleryImage;
    private int[] imageIds;
    private int galleryIndex,screen=MENU,menu,input,offsetX,offsetY;
    private boolean map,active=true;
    private volatile boolean running=true;
    private String message="",error="";
    private static final String[] OPTIONS={"NEW DEMO","CONTINUE SAVE","CONTROLS","ORIGINAL ART","EXIT"};
    GameCanvas(BioMIDlet app){
        this.app=app;setFullScreenMode(true);addCommand(back);addCommand(exit);setCommandListener(this);
        try{
            title=Image.createImage("/images/5045.png");
            int[] ids={1101,1103,1106,1113,1128,1154};int[][] walls=new int[ids.length][];
            for(int i=0;i<ids.length;i++)walls[i]=rgb(Image.createImage("/images/"+ids[i]+".png"));
            Image enemy=Image.createImage("/images/2201.png"),weapon=Image.createImage("/images/4003.png");
            renderer=new RayRenderer(walls,rgb(enemy),enemy.getWidth(),enemy.getHeight(),rgb(weapon),weapon.getWidth(),weapon.getHeight());
            loadIndex();
        }catch(Exception ex){screen=ERROR;error=ex.toString();}
        new Thread(this).start();
    }
    private static int[] rgb(Image image){
        int w=image.getWidth(),h=image.getHeight();int[] data=new int[w*h];image.getRGB(data,0,w,0,0,w,h);return data;
    }
    private void loadIndex() throws Exception {
        InputStream in=getClass().getResourceAsStream("/image-index.txt");
        if(in==null)throw new Exception("Missing image index");
        ByteArrayOutputStream out=new ByteArrayOutputStream();
        try{int b;while((b=in.read())!=-1)out.write(b);}finally{in.close();}
        String text=new String(out.toByteArray(),"UTF-8");int count=0;
        for(int i=0;i<text.length();i++)if(text.charAt(i)=='\n')count++;
        imageIds=new int[count];int start=0,n=0;
        for(int i=0;i<text.length();i++)if(text.charAt(i)=='\n'){
            imageIds[n++]=Integer.parseInt(text.substring(start,i));start=i+1;
        }
    }
    public void run(){
        while(running){
            long begin=System.currentTimeMillis();boolean draw;
            synchronized(this){
                draw=active;
                if(active && screen==PLAY){game.update(input);if(game.status!=GameState.PLAYING){screen=END;input=0;save();}}
            }
            if(draw)repaint();
            long sleep=50-(System.currentTimeMillis()-begin);
            try{Thread.sleep(sleep>0?sleep:1);}catch(InterruptedException ignored){}
        }
    }
    synchronized void activate(){active=true;input=0;}
    synchronized void suspend(){active=false;input=0;if(screen==PLAY){screen=PAUSE;save();}}
    synchronized void shutdown(){running=false;active=false;if(screen==PLAY || screen==PAUSE || screen==END)save();}
    protected void hideNotify(){suspend();}
    protected void showNotify(){activate();}
    private void save(){try{SaveStore.save(game);message="Saved";}catch(Exception ex){message="Save failed";}}
    private void pause(){if(screen==PLAY){screen=PAUSE;input=0;save();}else if(screen==PAUSE){screen=PLAY;input=0;}}
    public synchronized void commandAction(Command c,Displayable d){
        if(c==exit){app.quit();return;}
        if(screen==PLAY || screen==PAUSE)pause();else if(screen!=ERROR){screen=MENU;input=0;}
        repaint();
    }
    private int action(int key){try{return getGameAction(key);}catch(IllegalArgumentException ex){return 0;}}
    private int bit(int key){
        if(key==KEY_NUM1)return GameState.STRAFE_LEFT;if(key==KEY_NUM3)return GameState.STRAFE_RIGHT;
        if(key==KEY_NUM2)return GameState.FORWARD;if(key==KEY_NUM8)return GameState.BACK;
        if(key==KEY_NUM4)return GameState.LEFT;if(key==KEY_NUM6)return GameState.RIGHT;if(key==KEY_NUM5)return GameState.FIRE;
        int a=action(key);if(a==UP)return GameState.FORWARD;if(a==DOWN)return GameState.BACK;
        if(a==LEFT)return GameState.LEFT;if(a==RIGHT)return GameState.RIGHT;if(a==FIRE)return GameState.FIRE;return 0;
    }
    protected synchronized void keyPressed(int key){
        int a=action(key);
        if(screen==PLAY){
            if(key==KEY_STAR){pause();return;}if(key==KEY_NUM0){map=!map;return;}
            input|=bit(key);return;
        }
        if(screen==PAUSE){if(a==FIRE || key==KEY_NUM5 || key==KEY_STAR)pause();else if(key==KEY_NUM0){screen=MENU;input=0;}return;}
        if(screen==END){screen=MENU;input=0;return;}
        if(screen==HELP){screen=MENU;return;}
        if(screen==GALLERY){
            if(key==KEY_STAR || key==KEY_NUM0){screen=MENU;galleryImage=null;return;}
            if(a==LEFT || key==KEY_NUM4)galleryIndex=(galleryIndex+imageIds.length-1)%imageIds.length;
            else if(a==RIGHT || a==FIRE || key==KEY_NUM6 || key==KEY_NUM5)galleryIndex=(galleryIndex+1)%imageIds.length;
            loadGallery();return;
        }
        if(screen==MENU){
            if(a==UP || key==KEY_NUM2)menu=(menu+OPTIONS.length-1)%OPTIONS.length;
            else if(a==DOWN || key==KEY_NUM8)menu=(menu+1)%OPTIONS.length;
            else if(a==FIRE || key==KEY_NUM5)select();
        }
        repaint();
    }
    protected synchronized void keyReleased(int key){input&=~bit(key);}
    protected void keyRepeated(int key){ /* Held movement is sampled by the fixed-step loop. */ }
    private void select(){
        input=0;message="";
        if(menu==0){game=new GameState();screen=PLAY;map=false;}
        else if(menu==1){try{GameState loaded=SaveStore.load();game=loaded;screen=game.status==0?PLAY:END;}
            catch(Exception ex){message="No valid demo save";}}
        else if(menu==2)screen=HELP;
        else if(menu==3){screen=GALLERY;loadGallery();}
        else app.quit();
    }
    private void loadGallery(){
        try{galleryImage=null;galleryImage=Image.createImage("/images/"+imageIds[galleryIndex]+".png");}
        catch(Exception ex){message="Image unavailable";}
    }
    protected synchronized void pointerPressed(int x,int y){
        x-=offsetX;y-=offsetY;
        if(x<0 || x>=176 || y<0 || y>=220)return;
        if(screen==MENU){if(y>=112 && y<197){menu=(y-112)/17;select();}return;}
        if(screen==PLAY){
            if(y<25){pause();return;}
            if(y>=195){int zone=x/36;input=zone==0?GameState.LEFT:zone==1?GameState.FORWARD:zone==2?GameState.FIRE:zone==3?GameState.BACK:GameState.RIGHT;}
        }else keyPressed(KEY_NUM5);
    }
    protected synchronized void pointerReleased(int x,int y){input=0;}
    private void text(Graphics g,String s,int x,int y,int color){g.setColor(color);g.drawString(s,x,y,Graphics.TOP|Graphics.LEFT);}
    private void panel(Graphics g,int y,int h){g.setColor(0x0a1017);g.fillRect(0,y,176,h);}
    protected synchronized void paint(Graphics g){
        g.setColor(0x070b11);g.fillRect(0,0,getWidth(),getHeight());
        offsetX=(getWidth()-176)/2;offsetY=(getHeight()-220)/2;g.translate(offsetX,offsetY);
        g.setClip(0,0,176,220);g.setFont(Font.getFont(Font.FACE_SYSTEM,Font.STYLE_PLAIN,Font.SIZE_SMALL));
        if(screen==MENU){
            if(title!=null)g.drawImage(title,0,-15,Graphics.TOP|Graphics.LEFT);
            panel(g,94,126);text(g,"J2ME PORT / TECH DEMO",7,96,0x80cdb1);
            for(int i=0;i<OPTIONS.length;i++){
                if(i==menu){g.setColor(0x284b43);g.fillRect(4,112+i*17,168,17);}
                text(g,(i==menu?"> ":"  ")+OPTIONS[i],8,113+i*17,0xe4e7df);
            }
            text(g,message.length()>0?message:"2/8 select   5 confirm",6,203,0xaabbb3);
        }else if(screen==HELP){
            String[] lines={"TECHNOLOGY DEMO","Original art, new test level","2 / UP: move forward","8 / DOWN: move backward","4 / 6: turn left / right","1 / 3: strafe left / right","5 / FIRE: shoot","0: mini-map   *: pause","Touch: bottom controls","Defeat 4 enemies; reach E","Pause/exit saves demo","Original story not ported","Any key: back"};
            for(int i=0;i<lines.length;i++)text(g,lines[i],4,5+i*16,i==0?0x80cdb1:0xd1d7da);
        }else if(screen==GALLERY){
            text(g,"ORIGINAL ART "+(galleryIndex+1)+"/"+imageIds.length,4,3,0x80cdb1);
            if(galleryImage!=null){g.setClip(0,24,176,170);g.drawImage(galleryImage,(176-galleryImage.getWidth())/2,24,Graphics.TOP|Graphics.LEFT);g.setClip(0,0,176,220);}
            panel(g,194,26);text(g,"ID "+imageIds[galleryIndex]+"   4/6 browse",4,194,0xd1d7da);
            text(g,"0 / * back (large art clipped)",4,207,0x94a2aa);
        }else if(screen==ERROR){text(g,"Resource load failed",4,15,0xff7777);text(g,error,4,40,0xffffff);
        }else{
            renderer.render(game);g.drawRGB(renderer.pixels,0,176,0,25,176,160,false);
            panel(g,0,25);text(g,"HP "+game.health+"   AMMO "+game.ammo,5,2,game.hurt>0?0xff7777:0xf4ead6);
            text(g,"DEMO  "+game.kills+"/4   EXIT: E",5,14,0x80cdb1);
            panel(g,185,35);text(g,"0 MAP   * PAUSE / SAVE",5,186,0x9dacb4);
            text(g,"<    UP    FIRE    DN    >",5,204,0xe1e5df);
            if(map)drawMap(g);
            if(screen==PAUSE){panel(g,70,77);text(g,"PAUSED",55,77,0x80cdb1);text(g,message,8,95,0xc7d1cc);text(g,"5 resume   0 menu",20,117,0xffffff);}
            else if(screen==END){panel(g,70,80);text(g,game.status==GameState.WON?"DEMO COMPLETE":"YOU DIED",25,78,0x80cdb1);text(g,"Any key: main menu",17,107,0xffffff);text(g,"Original levels: pending",8,127,0xa8b5ae);}
        }
        g.translate(-offsetX,-offsetY);g.setClip(0,0,getWidth(),getHeight());
    }
    private void drawMap(Graphics g){
        for(int y=0;y<16;y++)for(int x=0;x<16;x++){
            g.setColor(GameState.wall(x,y)?0x72807c:0x182825);g.fillRect(109+x*4,28+y*4,4,4);
        }
        for(int i=0;i<4;i++)if(game.enemyHealth[i]>0){g.setColor(0xf87065);g.fillRect(109+(game.enemyX[i]>>8),28+(game.enemyY[i]>>8),2,2);}
        g.setColor(0xffe4a0);g.fillRect(109+(game.x>>8)-1,28+(game.y>>8)-1,3,3);
        text(g,"E",163,80,0x8effb1);
    }
}
