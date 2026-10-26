package javax.microedition.lcdui;
import java.io.*;import java.awt.image.BufferedImage;import javax.imageio.ImageIO;
public class Image {
 private BufferedImage image;
 public static Image createImage(String path)throws IOException{InputStream in=Image.class.getResourceAsStream(path);if(in==null)throw new IOException(path);try{Image im=new Image();im.image=ImageIO.read(in);return im;}finally{in.close();}}
 public int getWidth(){return image.getWidth();}public int getHeight(){return image.getHeight();}
 public void getRGB(int[] a,int offset,int stride,int x,int y,int w,int h){image.getRGB(x,y,w,h,a,offset,stride);}
}
