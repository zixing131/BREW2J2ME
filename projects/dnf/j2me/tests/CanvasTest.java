package dnf;
import java.lang.reflect.*;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import java.io.File;
import javax.microedition.lcdui.*;
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
            paint(c,"menu-"+w+"x"+h);
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
        }finally{c.stop();((Thread)get(c,"thread")).join(2000);check(!((Thread)get(c,"thread")).isAlive(),"canvas thread terminates");}
    }
    public static void main(String[] args)throws Exception{run(240,320);run(320,240);run(360,640);run(640,360);System.out.println("PASS canvas/RMS "+checks+" checks in 4 resolutions (desktop adapter)");}
}
