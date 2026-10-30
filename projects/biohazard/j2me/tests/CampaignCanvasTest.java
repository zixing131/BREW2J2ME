package bio;

import bio.original.*;
import java.io.*;
import java.lang.reflect.*;
import java.util.Arrays;
import javax.imageio.ImageIO;
import javax.microedition.lcdui.*;

/** Replays a full campaign through production key handlers, menus and tick().
 * Reflection only reads state, stops the background clock and calls tick;
 * it never changes the player, VM, enemies, screen or menu selection.
 * Desktop adapters are not a KEmulator/device playthrough.
 */
public final class CampaignCanvasTest {
    private final OriginalCanvas canvas;
    private final Method update;
    private final File output;
    private int frames, checkpoints, lines, clicks, visited;

    private static Field field(String name)throws Exception {
        Field f=OriginalCanvas.class.getDeclaredField(name);f.setAccessible(true);return f;
    }
    private OriginalSession session()throws Exception{return (OriginalSession)field("session").get(canvas);}
    private int screen()throws Exception{return field("screen").getInt(canvas);}
    private void check(boolean ok,String message)throws Exception {
        if(!ok)throw new Exception("trace line="+lines+" frame="+frames+" screen="+screen()+": "+message);
    }
    private void key(int n){int code=n==11?42:n==10?35:48+n;canvas.keyPressed(code);canvas.keyReleased(code);clicks++;}
    private void down(int n){for(int i=0;i<n;i++)key(8);}
    private void capture(String name)throws Exception {
        Graphics g=new Graphics(canvas.getWidth(),canvas.getHeight());canvas.paint(g);
        check(screen()!=5,"Canvas error: "+field("info").get(canvas));
        ImageIO.write(g.image,"png",new File(output,name+".png"));
    }
    private void premium(int item)throws Exception {
        if(session().vm.action.kind==22){check(session().vm.offer==item,"Story offer matches");key(5);key(5);}
        else {
            check(item>=0&&item<=4,"Only public mall categories used");
            key(11);down(5);key(5);down(item+1);key(5);key(5);key(0);key(0);
        }
        check(screen()==2,"Purchase returns to play");
    }
    private void supply(int item)throws Exception {
        key(11);down(4);key(5);down(item);key(5);
        check(((String)field("notice").get(canvas)).equals("购买成功"),"Supply purchase succeeded");
        key(0);key(0);check(screen()==2,"Supply returns to play");
    }
    private void tick(int input)throws Exception {
        check(screen()==2,"Clock advances only in play");
        int[] keys={2,8,1,3,4,6},bits={1,2,4,8,256,512};
        for(int i=0;i<bits.length;i++)if((input&bits[i])!=0)canvas.keyPressed(48+keys[i]);
        update.invoke(canvas);frames++;
        for(int i=0;i<bits.length;i++)if((input&bits[i])!=0)canvas.keyReleased(48+keys[i]);
        check(screen()!=5&&session().player.hp>0,"Game remains alive without errors");
        if(frames%1000==0)capture("frame-"+frames);
    }
    private void checkpoint(int expectedFrame,int expectedCrc)throws Exception {
        check(frames==expectedFrame,"Frame count");OriginalSession s=session();
        byte[] actual=SaveCodec.encode(s,123456789L,frames);
        check(SaveCodec.crc(actual,actual.length-4)==expectedCrc,"Full campaign state differs from session run");
        OriginalSaves.save(0,s);OriginalSession copy=OriginalSaves.load(0,s.data,canvas);
        check(Arrays.equals(actual,SaveCodec.encode(copy,123456789L,frames)),"Production RMS snapshot roundtrip");
        visited|=1<<(s.player.level-1);checkpoints++;
        capture("checkpoint-"+checkpoints+"-L"+s.player.level+"-P"+(s.player.variables[0]&255));
    }
    private CampaignCanvasTest(File output,int width,int height)throws Exception {
        this.output=output;output.mkdirs();Canvas.width=width;Canvas.height=height;
        canvas=new OriginalCanvas(new BioMIDlet());
        synchronized(canvas){field("active").setBoolean(canvas,false);field("running").setBoolean(canvas,false);}
        update=OriginalCanvas.class.getDeclaredMethod("tick");update.setAccessible(true);
        check(field("touch").getBoolean(canvas)==ScreenLayout.defaultTouch(width,height),"Default touch mode");
        key(5);key(5);check(screen()==2,"New game from cover and main menu");
    }
    private void run(File trace)throws Exception {
        BufferedReader in=new BufferedReader(new FileReader(trace));
        try {
            String line;
            while((line=in.readLine())!=null){
                lines++;String[] words=line.split(" ");char op=words[0].charAt(0);
                if(op=='T')tick(Integer.parseInt(words[1]));
                else if(op=='F'||op=='N')key(5);
                else if(op=='D'){
                    int presses=0;
                    do{key(5);check(++presses<200,"Dialogue finishes through paging");}while(session().vm.action.kind==4||session().vm.action.kind==17);
                }else if(op=='Z')key(0);
                else if(op=='X')key(words[1].equals("1")?5:0);
                else if(op=='P')premium(Integer.parseInt(words[1]));
                else if(op=='B')supply(Integer.parseInt(words[1]));
                else if(op=='M')key(0);
                else if(op=='C')checkpoint(Integer.parseInt(words[1]),Integer.parseInt(words[2]));
                else throw new Exception("Unknown trace command: "+line);
            }
            OriginalSession s=session();
            check(s.vm.ended&&s.player.level==14&&(s.player.variables[0]&255)==35&&visited==65535,"All 16 maps and original ending");
            check(screen()==3&&((String)field("notice").get(canvas)).equals("恭喜完成全部任务"),"Actual victory UI");
            OriginalSession auto=OriginalSaves.load(3,s.data,canvas);
            check(auto.vm.ended&&Arrays.equals(SaveCodec.encode(s,0,0),SaveCodec.encode(auto,0,0)),"Ending autosave");
            capture("ending");
            // Leave the finished game and continue through the normal load screen.
            down(8);key(5);down(1);key(5);down(3);key(5);tick(0);
            check(session().vm.ended&&screen()==3,"Continue completed autosave preserves ending");
            capture("ending-reloaded");
            System.out.println("PASS full campaign via Canvas "+canvas.getWidth()+"x"+canvas.getHeight()+": "+frames+" ticks, "+checkpoints+" matching snapshots, "+clicks+" key clicks; all 16 maps, RMS and ending");
        }finally{in.close();canvas.shutdown();}
    }
    public static void main(String[] args)throws Exception {
        new CampaignCanvasTest(new File(args[1]),Integer.parseInt(args[2]),Integer.parseInt(args[3])).run(new File(args[0]));
    }
}
