package javax.microedition.lcdui;
/** Desktop-only MIDP adapter; never packaged in the device JAR. */
public abstract class Canvas {
    public static final int UP=1,DOWN=6,LEFT=2,RIGHT=5,FIRE=8,KEY_NUM0=48,KEY_NUM1=49,KEY_NUM2=50,KEY_NUM3=51,KEY_NUM4=52,KEY_NUM5=53,KEY_NUM6=54,KEY_NUM7=55,KEY_NUM8=56,KEY_NUM9=57,KEY_STAR=42,KEY_POUND=35;
    public static int testWidth=240,testHeight=320;
    public int getWidth(){return testWidth;}public int getHeight(){return testHeight;}
    public void setFullScreenMode(boolean b){}public void repaint(){}public void serviceRepaints(){}
    public int getGameAction(int k){switch(k){case -1:return UP;case -2:return DOWN;case -3:return LEFT;case -4:return RIGHT;case -5:return FIRE;default:return 0;}}
    protected abstract void paint(Graphics g);
}
