package bio.original;
import java.io.*;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;

/** Executes production renderer/font without MIDP mocks; writes a visual review artifact. */
public final class OriginalPreview {
    static int[] png(String path)throws Exception{
        BufferedImage im=ImageIO.read(new File(path));return im.getRGB(0,0,im.getWidth(),im.getHeight(),null,0,im.getWidth());
    }
    public static void main(String[] args)throws Exception{
        File raw=new File(args[0]);String images=args[1]+"/images/";
        OriginalLevel level=new OriginalLevel(52000,OriginalTest.read(new File(raw,"52000.bin")));
        int[][] tiles=new int[75][];for(int i=0;i<tiles.length;i++)tiles[i]=png(images+(1101+i)+".png");
        OriginalRenderer r=new OriginalRenderer(176,173,OriginalTest.read(new File(raw,"51000.bin")),tiles,png(images+"1000.png"));
        OriginalFont font=new OriginalFont(OriginalTest.read(new File(raw,"10000.bin")));
        OriginalText text=new OriginalText(OriginalTest.read(new File(raw,"0.bin")));
        BufferedImage out=new BufferedImage(176*3,220,BufferedImage.TYPE_INT_RGB);
        int[] positions={80,848,0,912,80,270,80,848,270};
        for(int i=0;i<3;i++){
            r.render(level,positions[i*3],positions[i*3+1],positions[i*3+2]);int[] canvas=new int[176*220];
            System.arraycopy(r.pixels,0,canvas,176*47,r.pixels.length);
            font.draw(canvas,176,220,"ORIGINAL LEVEL / ARM PORT",4,2,168,0x00ff00,0,1);
            font.draw(canvas,176,220,"52000 "+positions[i*3]+","+positions[i*3+1]+" "+positions[i*3+2],4,18,168,0xffffff,0,1);
            if(i==2){for(int y=110;y<220;y++)for(int x=0;x<176;x++)canvas[y*176+x]=0x202424;
                font.draw(canvas,176,220,text.get(6020),5,114,166,0xffff00,0,1);
                font.draw(canvas,176,220,text.get(6026),5,132,166,0xffffff,0,5);}
            out.setRGB(i*176,0,176,220,canvas,0,176);
        }
        ImageIO.write(out,"png",new File(args[2]));System.out.println("Original geometry / bitmap-font preview: "+args[2]);
    }
}
