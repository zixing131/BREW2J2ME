package dnf;
import java.lang.reflect.*;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import java.io.File;
import javax.microedition.lcdui.*;
import javax.microedition.media.*;
public final class CanvasTest {
    private static int checks;
    private static void check(boolean c,String msg){checks++;if(!c)throw new AssertionError(msg);}
    private static Object get(Object o,String name)throws Exception{Field f=o.getClass().getDeclaredField(name);f.setAccessible(true);return f.get(o);}
    private static void set(Object o,String name,Object value)throws Exception{Field f=o.getClass().getDeclaredField(name);f.setAccessible(true);f.set(o,value);}
    private static void paint(DnfCanvas c,String name)throws Exception{BufferedImage image=new BufferedImage(c.getWidth(),c.getHeight(),BufferedImage.TYPE_INT_RGB);c.paint(new Graphics(image));ImageIO.write(image,"png",new File("build/"+name+".png"));}
    private static void run(int w,int h)throws Exception{
        Canvas.testWidth=w;Canvas.testHeight=h;DnfCanvas c=new DnfCanvas(new DnfMIDlet());
        try{
            long end=System.currentTimeMillis()+5000;
            while(System.currentTimeMillis()<end){synchronized(c){if(((Boolean)get(c,"ready")).booleanValue())break;}Thread.sleep(10);}
            synchronized(c){check(((Boolean)get(c,"ready")).booleanValue(),"canvas loaded");}
            c.suspend();Session s=(Session)get(c,"session");
            check(((Integer)get(c,"menu")).intValue()==11,"original title is default entry");
            paint(c,"title-"+w+"x"+h);c.keyPressed(Canvas.KEY_NUM5);
            check(((Integer)get(c,"menu")).intValue()==12,"four campaign slots");paint(c,"slots-"+w+"x"+h);c.keyPressed(Canvas.KEY_NUM5);
            Story opening=(Story)get(c,"story");check(opening.id==100&&opening.nativeText,"empty slot starts native ANI 100 in Chinese");
            if(w==240&&h==320){
                Method advance=DnfCanvas.class.getDeclaredMethod("advanceStory");advance.setAccessible(true);
                int steps=0,last=100,count=1;int[] chain={100,101,102,103,999,201,3,4};
                while(((Integer)get(c,"menu")).intValue()==-2&&steps++<20000){Story part=(Story)get(c,"story");if(part.waiting)c.keyPressed(Canvas.KEY_NUM5);else advance.invoke(c);
                    part=(Story)get(c,"story");if(part.id!=last){check(count<chain.length&&part.id==chain[count++],"original opening transition");last=part.id;}}
                check(count==chain.length&&((Integer)get(c,"menu")).intValue()==15,"ANI4 yields to field boundary, never auto-starts ANI5");
                c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_NUM5);check(((Integer)get(c,"menu")).intValue()==15,"completed checkpoint resumes boundary");
                c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_STAR);c.keyPressed(Canvas.KEY_NUM4);c.keyPressed(Canvas.KEY_NUM5);check(((Story)get(c,"story")).id==100,"confirmed overwrite starts fresh");
            }
            c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_NUM5);check(((Story)get(c,"story")).id==100,"campaign slot resumes");
            c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_STAR);check(((Integer)get(c,"selected")).intValue()==1,"overwrite defaults to no");
            c.keyPressed(Canvas.KEY_NUM5);check(((Integer)get(c,"menu")).intValue()==12,"cancel overwrite");
            c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_POUND);paint(c,"menu-"+w+"x"+h);
            c.keyPressed(Canvas.KEY_NUM5);check(((Integer)get(c,"menu")).intValue()==-1,"start scene");
            paint(c,"canvas-"+w+"x"+h);
            c.keyPressed(Canvas.KEY_NUM6);check(((Integer)get(c,"keys")).intValue()==Session.RIGHT,"held right");c.keyReleased(Canvas.KEY_NUM6);check(((Integer)get(c,"keys")).intValue()==0,"release right");
            c.keyPressed(Canvas.KEY_NUM5);check(s.hero.animation.clip==20,"native slash");c.keyPressed(Canvas.KEY_NUM5);check(s.hero.animation.nextOverride==21,"combo queued");
            c.keyPressed(Canvas.KEY_STAR);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM5);
            check(((Integer)get(c,"menu")).intValue()==2,"save screen");c.keyPressed(Canvas.KEY_NUM5);int savedX=s.x,savedY=s.y;s.x+=32;
            c.keyPressed(Canvas.KEY_STAR);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM5);c.keyPressed(Canvas.KEY_NUM5);
            check(s.x==savedX&&s.y==savedY,"save and load through actual canvas menu");
            if(Viewport.defaultTouch(w,h)){
                c.pointerPressed(5,h-5);check(((Integer)get(c,"keys")).intValue()==Session.LEFT,"touch direction");c.pointerDragged(-200,h-5);check(((Integer)get(c,"keys")).intValue()==0,"drag outside clears key");c.pointerReleased(5,h-5);
                c.pointerPressed(w-3,h-5);check(((Integer)get(c,"menu")).intValue()==0,"touch menu");
                c.pointerPressed(w-3,h-5);check(((Integer)get(c,"menu")).intValue()==-1,"touch back");
            }else {c.pointerPressed(5,h-5);check(((Integer)get(c,"keys")).intValue()==0,"touch disabled by default");}
            c.keyPressed(Canvas.KEY_NUM6);c.hideNotify();check(((Integer)get(c,"keys")).intValue()==0,"focus loss clears keys");
            set(c,"menu",Integer.valueOf(0));set(c,"selected",Integer.valueOf(7));c.keyPressed(Canvas.KEY_NUM5);
            check(((Integer)get(c,"menu")).intValue()==7,"story menu reachable");set(c,"storyIndex",Integer.valueOf(2));c.keyPressed(Canvas.KEY_NUM5);
            Story story=(Story)get(c,"story");while(!story.waiting&&!story.finished)story.advance();check(story.waiting,"story dialogue appears");
            check(story.nativeText,"runtime uses native Chinese layout");check(story.nodes[story.dialogue].text.indexOf("天气")>=0,"translated original dialogue");
            paint(c,"story-canvas-"+w+"x"+h);int storyTick=story.tick;String text=story.nodes[story.dialogue].text;
            c.keyPressed(Canvas.KEY_NUM0);check(((Integer)get(c,"menu")).intValue()==0,"story back saves and returns");
            c.keyPressed(Canvas.KEY_NUM5);c.keyPressed(Canvas.KEY_NUM1);Story restored=(Story)get(c,"story");
            check(restored.tick==storyTick&&restored.nodes[restored.dialogue].text.equals(text),"RMS resumes exact dialogue");
            if(Viewport.defaultTouch(w,h)){c.pointerPressed(10,100);check(!restored.waiting||restored.pageStart>0,"touch advances dialogue/page");}
            c.keyPressed(Canvas.KEY_NUM0);set(c,"menu",Integer.valueOf(8));c.keyPressed(Canvas.KEY_NUM5);paint(c,"journal-native-"+w+"x"+h);
            check(((Integer)get(c,"journalEnd")).intValue()>0,"native journal paginates");c.keyPressed(Canvas.KEY_NUM0);
            set(c,"menu",Integer.valueOf(0));set(c,"selected",Integer.valueOf(9));paint(c,"menu-scrolled-"+w+"x"+h);c.keyPressed(Canvas.KEY_NUM5);
            c.keyPressed(Canvas.KEY_NUM5);Audio audio=(Audio)get(c,"audio");check(audio.error.length()==0,"audio preview opens original file");
            audio.resume();int active=0;for(Player p:Manager.created)if(!p.closed){active++;check(p.started,"audio resumes after focus");}check(active<=3,"bounded audio channels");
            audio.volume(0);for(Player p:Manager.created)if(!p.closed)check(p.volume==0,"mute all live channels");
            audio.suspend();for(Player p:Manager.created)if(!p.closed)check(!p.started,"focus loss pauses audio");
            audio.stop();for(Player p:Manager.created)check(p.closed,"all audio players released");
            int resource=audio.resources[0];audio.resources[0]=65534;audio.preview(0);check(audio.error.indexOf("Missing audio resource")>=0,"missing primary audio reports failure");audio.resources[0]=resource;
            Manager.fail=true;audio.preview(0);check(audio.error.length()>0,"unsupported codec safely reported");Manager.fail=false;
            set(c,"menu",Integer.valueOf(5));set(c,"selected",Integer.valueOf(2));c.keyPressed(Canvas.KEY_NUM5);check(audio.volume==25,"third setting changes volume");
        }finally{c.stop();((Thread)get(c,"thread")).join(2000);check(!((Thread)get(c,"thread")).isAlive(),"canvas thread terminates");}
    }
    public static void main(String[] args)throws Exception{
        Font f=Font.getFont(0,0,0);String value="第一行\n$A4$中文高亮内容$，继续阅读。\n尾行";
        int offset=0,pages=0;while(offset<value.length()){int end=NativeText.draw(null,f,value,offset,0,0,31,2,0xffffff);check(end>offset,"native pagination always advances");offset=end;check(++pages<20,"finite native pages");}
        check(NativeText.draw(null,f,"中",0,0,0,1,1,0xffffff)==1,"narrow viewport does not deadlock");
        run(240,320);run(320,240);run(360,640);run(640,360);System.out.println("PASS canvas/RMS "+checks+" checks in 4 resolutions (desktop adapter)");}
}
