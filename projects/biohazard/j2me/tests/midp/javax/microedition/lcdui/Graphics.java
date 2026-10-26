package javax.microedition.lcdui;
import java.awt.image.BufferedImage;
public class Graphics {
 public static final int TOP=16,LEFT=4;public final BufferedImage image;private int color;
 public Graphics(int w,int h){image=new BufferedImage(w,h,BufferedImage.TYPE_INT_RGB);}
 public void setColor(int c){color=c;}public void fillRect(int x,int y,int w,int h){java.awt.Graphics g=image.getGraphics();g.setColor(new java.awt.Color(color));g.fillRect(x,y,w,h);g.dispose();}
 public void drawString(String s,int x,int y,int anchor){}
 public void drawRGB(int[] a,int o,int stride,int x,int y,int w,int h,boolean alpha){image.setRGB(x,y,w,h,a,o,stride);}
}
