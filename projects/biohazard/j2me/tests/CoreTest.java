package bio;

import java.io.*;
import java.util.Random;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;

/** Desktop tests of the production simulation/renderer, without fake MIDP classes. */
public final class CoreTest {
    private static int checks;
    private static void check(boolean ok,String label){checks++;if(!ok)throw new RuntimeException(label);}
    private static byte[] save(GameState s)throws Exception{
        ByteArrayOutputStream out=new ByteArrayOutputStream();s.write(new DataOutputStream(out));return out.toByteArray();
    }
    private static void reject(byte[] data)throws Exception{
        boolean rejected=false;try{GameState.read(new DataInputStream(new ByteArrayInputStream(data)));}catch(IOException ex){rejected=true;}
        check(rejected,"invalid save accepted");
    }
    private static BufferedImage image(String root,int id)throws Exception{return ImageIO.read(new File(root+"/images/"+id+".png"));}
    private static int[] rgb(BufferedImage i){return i.getRGB(0,0,i.getWidth(),i.getHeight(),null,0,i.getWidth());}
    public static void main(String[] args)throws Exception{
        GameState s=new GameState();int old=s.x;s.update(GameState.FORWARD);check(s.x>old,"forward");
        s.x=1024+180;s.y=1536;s.angle=128;
        for(int i=0;i<100;i++)s.update(GameState.FORWARD);
        check(s.x>=1024+180 && GameState.fits(s.x,s.y),"wall penetration");
        check(!GameState.visible(6*1024,3*1024,8*1024,3*1024),"occlusion");
        s=new GameState();for(int i=0;i<15;i++)s.update(GameState.FIRE);
        check(s.kills==1 && s.enemyHealth[0]==0 && s.ammo==45,"shoot nearest target");
        s=new GameState();s.enemyX[0]=8*1024;s.enemyY[0]=s.y;
        for(int i=0;i<20;i++)s.update(GameState.FIRE);
        check(s.enemyHealth[0]==3,"shoot through wall");
        s=new GameState();s.enemyX[0]=s.x+100;s.enemyY[0]=s.y;s.health=8;s.update(0);
        check(s.status==GameState.DEAD,"death");old=s.ticks;s.update(GameState.FIRE);check(s.ticks==old,"dead simulation advanced");
        s=new GameState();for(int i=0;i<4;i++)s.enemyHealth[i]=0;s.kills=4;s.x=GameState.EXIT_X;s.y=GameState.EXIT_Y;s.update(0);
        check(s.status==GameState.WON,"win condition");
        s=new GameState();s.update(GameState.FIRE);byte[] bytes=save(s);
        GameState restored=GameState.read(new DataInputStream(new ByteArrayInputStream(bytes)));
        check(restored.x==s.x && restored.ammo==s.ammo && restored.enemyHealth[0]==s.enemyHealth[0],"save round trip");
        for(int n=0;n<bytes.length;n++){
            byte[] cut=new byte[n];System.arraycopy(bytes,0,cut,0,n);reject(cut);
        }
        bytes[0]=0;reject(bytes);
        bytes=save(s);bytes[8]=(byte)0x7f;reject(bytes);
        bytes=save(s);byte[] extra=new byte[bytes.length+1];System.arraycopy(bytes,0,extra,0,bytes.length);reject(extra);
        int[] ids={1101,1103,1106,1113,1128,1154};int[][] walls=new int[ids.length][];
        for(int i=0;i<ids.length;i++)walls[i]=rgb(image(args[0],ids[i]));
        BufferedImage enemy=image(args[0],2201),weapon=image(args[0],4003);
        RayRenderer renderer=new RayRenderer(walls,rgb(enemy),enemy.getWidth(),enemy.getHeight(),rgb(weapon),weapon.getWidth(),weapon.getHeight());
        s=new GameState();renderer.render(s);
        BufferedImage frame=new BufferedImage(176,160,BufferedImage.TYPE_INT_RGB);frame.setRGB(0,0,176,160,renderer.pixels,0,176);ImageIO.write(frame,"png",new File(args[1]));
        Random r=new Random(42);int renders=0;
        for(int i=0;i<3000;i++){
            s=new GameState();s.x=r.nextInt(16*1024);s.y=r.nextInt(16*1024);s.angle=r.nextInt(256);
            if(!GameState.fits(s.x,s.y))continue;
            renderer.render(s);renders++;
            for(int j=0;j<4;j++)s.update(r.nextInt(128));
            check(GameState.fits(s.x,s.y),"random movement collision");
        }
        check(renders>1000,"insufficient renderer coverage");
        System.out.println("PASS: "+checks+" checks; "+renders+" randomized camera renders; snapshot "+args[1]);
    }
}
