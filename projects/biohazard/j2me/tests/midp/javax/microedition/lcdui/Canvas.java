package javax.microedition.lcdui;
/** Desktop test surface only. Never packaged in the MIDlet. */
public abstract class Canvas extends Displayable {
 public static final int KEY_NUM0=48,KEY_NUM1=49,KEY_NUM2=50,KEY_NUM3=51,KEY_NUM4=52,KEY_NUM5=53,KEY_NUM6=54,KEY_NUM7=55,KEY_NUM8=56,KEY_NUM9=57,KEY_STAR=42,KEY_POUND=35,UP=1,DOWN=6,LEFT=2,RIGHT=5,FIRE=8;
 public static int width=240,height=320;public static boolean pointer=true;
 public void setFullScreenMode(boolean b){}public int getWidth(){return width;}public int getHeight(){return height;}public boolean hasPointerEvents(){return pointer;}
 public void repaint(){}public int getGameAction(int k){return 0;}
 public void resizeTest(int w,int h){width=w;height=h;sizeChanged(w,h);}
 protected void sizeChanged(int w,int h){}protected abstract void paint(Graphics g);
}
