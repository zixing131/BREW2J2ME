package bio.original;
import java.io.*;
import java.util.Arrays;
public class OriginalTest {
    public static void main(String[] args)throws Exception{
        DataInputStream in=new DataInputStream(new FileInputStream(args[0]+"/arm-motion.bin"));int n=in.readInt();
        for(int i=0;i<n;i++){
            int w=in.readInt(),h=in.readInt();int[] xy={in.readInt(),in.readInt()};int angle=in.readInt(),speed=in.readInt();
            boolean entity=in.readInt()!=0,ghost=in.readInt()!=0;int nx=in.readInt(),ny=in.readInt();
            byte[] grid=new byte[w*h*4],expected=new byte[grid.length];in.readFully(grid);in.readFully(expected);
            OriginalMotion.move(w,h,grid,angle,speed,xy,entity,ghost);
            if(xy[0]!=nx||xy[1]!=ny||!Arrays.equals(grid,expected))throw new Exception("ARM motion mismatch case "+i+": "+xy[0]+","+xy[1]+" expected "+nx+","+ny);
        }
        in.close();in=new DataInputStream(new FileInputStream(args[0]+"/arm-trig.bin"));int t=in.readInt();
        for(int i=0;i<t;i++){int a=in.readInt();if(OriginalTrig.cos(a)!=in.readInt()||OriginalTrig.sin(a)!=in.readInt())throw new Exception("ARM trig mismatch "+a);}
        in.close();
        System.out.println("PASS original ARM differential: "+n+" motion cases (coordinates AND all occupancy bytes), "+t+" trig cases");
        in=new DataInputStream(new FileInputStream(args[0]+"/arm-script-action.bin"));int sc=in.readInt();
        for(int i=0;i<sc;i++){
            ScriptAction a=new ScriptAction();a.kind=in.readInt();a.frame=in.readInt();a.duration=in.readInt();
            a.targetAngle=in.readInt();a.direction=in.readInt();a.startX=in.readInt();a.startY=in.readInt();a.targetX=in.readInt();a.targetY=in.readInt();
            a.x=in.readInt();a.y=in.readInt();a.angle=in.readInt();a.renderFlags=in.readInt();a.tick();
            int[] got={a.kind,a.frame,a.x,a.y,a.angle,a.renderFlags};
            for(int j=0;j<got.length;j++){int expected=in.readInt();if(got[j]!=expected)throw new Exception("ARM script action mismatch case "+i+" field "+j+": "+got[j]+" != "+expected);}
        }in.close();System.out.println("PASS original ARM differential: "+sc+" script action frames");
        for(int id=52000;id<52016;id++){
            byte[] b=read(new File(args[1],id+".bin"));OriginalLevel l=new OriginalLevel(id,b);
            if(l.id==52000&&(l.width!=60||l.height!=30||l.actorCount!=30||l.surfaceCount!=944))throw new Exception("Hospital schema");
            System.out.println("Level "+id+": "+l.width+"x"+l.height+", records="+l.surfaceCount+"/"+l.objectCount+"/"+l.boxCount+"/"+l.actorCount);
            new OriginalScript(read(new File(args[1],(id-41000)+".bin")));
        }
        OriginalText texts=new OriginalText(read(new File(args[1],"0.bin")));
        if(!texts.get(8900).equals("开始游戏")||!texts.get(5000).equals("按确认键继续"))throw new Exception("Text end-offset regression");
        OriginalVM vm=new OriginalVM(new OriginalScript(read(new File(args[1],"11000.bin"))));
        vm.action.x=80;vm.action.y=848;vm.action.angle=0;vm.trigger(2,80,848);
        int[] dialogue={6018,6021,6022,6023,6024,6025,6026,6027,6028,6030,6031,6032,6300,6301,6033};int d=0,frames=0;
        while(vm.busy()&&frames++<10000){
            vm.step();
            if(vm.unsupported>=0)throw new Exception("Intro blocked opcode "+vm.unsupported);
            if(vm.action.kind==4||vm.action.kind==17){if(d>=dialogue.length||vm.textId!=dialogue[d++])throw new Exception("Original dialogue order");vm.acknowledge();}
            if(vm.action.kind==18)vm.acknowledge();
        }
        if(frames>=10000||d!=dialogue.length||vm.action.x!=912||vm.action.y!=80||vm.action.angle!=270||vm.variables[0]!=1||vm.variables[21]!=1||vm.variables[22]!=1)throw new Exception("Intro end state "+vm.action.x+","+vm.action.y+","+vm.action.angle+" dialogues "+d);
        System.out.println("PASS original hospital intro: 15 dialogue IDs, scripted path -> (912,80,270), variables 0/21/22=1; "+frames+" ticks (UI acknowledged)");
    }
    static byte[] read(File f)throws Exception{FileInputStream i=new FileInputStream(f);byte[] b=new byte[(int)f.length()];new DataInputStream(i).readFully(b);i.close();return b;}
}
