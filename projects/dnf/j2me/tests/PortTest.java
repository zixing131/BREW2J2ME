package dnf;
import java.io.*;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
public final class PortTest {
    private static int checks;
    private static void check(boolean condition,String label){checks++;if(!condition)throw new AssertionError(label);}
    private static int[] row(String line){String[] s=line.split(",");int[] out=new int[s.length];for(int i=0;i<out.length;i++)out[i]=Integer.parseInt(s[i]);return out;}
    private static void animation()throws Exception {
        ActionSet actions=new ActionSet(Assets.read(0,"act"));Animation a=new Animation(actions);
        BufferedReader r=new BufferedReader(new FileReader("tests/fixtures/animation-arm.csv"));String line;int ci=-1,override=-1,count=0,changed=0;
        while((line=r.readLine())!=null){if(line.startsWith("#"))continue;int[] f=row(line);
            if(ci!=f[0]||override!=f[1]){ci=f[0];override=f[1];a.start(ci);a.nextOverride=override;}
            a.tick();int[] actual={a.active?1:0,a.finished?1:0,a.elapsed,a.duration,a.clip,a.frame,a.nextDefault,a.nextOverride};
            for(int i=0;i<actual.length;i++)check(actual[i]==f[i+3],"ARM animation clip="+ci+" tick="+f[2]+" field="+i+" java="+actual[i]+" arm="+f[i+3]);
            if(a.frame>0)changed++;count++;
        }r.close();check(count==5472&&changed>1000,"nontrivial native trace");System.out.println("ARM animation: "+count+" states match");
    }
    private static void blend()throws Exception {
        BufferedReader r=new BufferedReader(new FileReader("tests/fixtures/blend-arm.csv"));String line;
        while((line=r.readLine())!=null){if(line.startsWith("#"))continue;int[] f=row(line);int actual=f[1]==Dat.KEY?f[2]:Surface.color(f[1],f[2],f[0],0,f[3]);check(actual==f[4],"ARM pixel blend");}r.close();
    }
    private static void saves()throws Exception {
        SaveData s=new SaveData();s.map=2;s.x=100;s.y=240;s.family=19;s.speed=4;s.touchMode=2;byte[] raw=s.encode();SaveData v=SaveData.decode(raw);
        check(v.map==2&&v.x==100&&v.y==240&&v.family==19&&v.speed==4&&v.touchMode==2,"save roundtrip");
        for(int i=0;i<raw.length;i++){byte[] corrupt=(byte[])raw.clone();corrupt[i]^=1;boolean bad=false;try{SaveData.decode(corrupt);}catch(IOException e){bad=true;}check(bad,"save corruption byte "+i);}
        check(!Viewport.defaultTouch(240,320)&&!Viewport.defaultTouch(320,240)&&Viewport.defaultTouch(360,640)&&Viewport.defaultTouch(640,360),"touch defaults");
    }
    public static void png(Surface s,String name)throws Exception {
        BufferedImage out=new BufferedImage(s.w,s.h,BufferedImage.TYPE_INT_RGB);int[] rgb=new int[s.pixels.length];for(int i=0;i<rgb.length;i++)rgb[i]=Surface.rgb(s.pixels[i]);out.setRGB(0,0,s.w,s.h,rgb,0,s.w);ImageIO.write(out,"png",new File("build/"+name+".png"));
    }
    private static void world()throws Exception {
        DataInputStream list=new DataInputStream(new ByteArrayInputStream(Bytes.resource("/maps.bin")));int count=list.readUnsignedShort();Session s=new Session();
        for(int i=0;i<count;i++){int id=list.readUnsignedShort();s.load(id);Surface image=new Surface(240,320);s.draw(image);check(s.world.width>0&&s.world.height>0,"map dimensions "+id);}
        list.close();check(count==169,"all original maps loaded");
        s.load(0);Surface image=new Surface(240,320);s.draw(image);png(image,"scene-240x320");
        s.x=480;s.y=280;s.draw(image);png(image,"scene-scroll");s.mirror=true;s.draw(image);png(image,"scene-mirror");
        s.hero.animation.start(20);s.hero.animation.tick();s.draw(image);png(image,"scene-attack");
        image=new Surface(320,240);s.draw(image);png(image,"scene-320x240");
        Surface sheet=new Surface(720,480);sheet.clear(0x2104);
        for(int a=0;a<30;a++){s.hero.animation.start(a);s.hero.draw(sheet,40+(a%10)*72,100+(a/10)*150,false);}png(sheet,"actions");
        for(int family=0;family<20;family++){s.hero.setFamily(family);s.hero.animation.start(0);s.hero.draw(sheet,30,100,false);}check(true,"20 original families render");
        s.load(0);s.attack();s.attack();boolean sawSecond=false;for(int i=0;i<40;i++){s.tick(0);if(s.hero.animation.clip==21)sawSecond=true;}check(sawSecond&&s.hero.animation.clip==0,"queued slash and native return to idle");
        System.out.println("Loaded/rendered all "+count+" original maps and 20 hero families");
    }
    public static void main(String[] args)throws Exception {animation();blend();saves();world();System.out.println("PASS "+checks+" checks");}
}
