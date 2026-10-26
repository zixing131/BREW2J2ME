package javax.microedition.lcdui;
import java.io.IOException;
import javax.imageio.ImageIO;
public final class Image {
    java.awt.image.BufferedImage image;
    public static Image createImage(String path)throws IOException {Image out=new Image();out.image=ImageIO.read(Image.class.getResourceAsStream(path));return out;}
}
