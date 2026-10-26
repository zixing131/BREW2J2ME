package dnf;
import java.io.*;
/** Native 6.bd / 0x844d0 fields. Unknown parameters remain in the source record. */
public final class MonsterData {
    private static String[] names;
    private static byte[] ranges,behaviors,effectTable;
    public final int id,level,hp;
    public final byte[] record;
    public final int[] attackClip=new int[3],attackWeight=new int[3],attackDamage=new int[3];
    public final int[][] range=new int[3][3];
    public final int[] behaviorId=new int[5];
    public final byte[][] behavior=new byte[5][],effect=new byte[5][];
    public MonsterData(int id,byte[] table)throws IOException {
        loadNames();Bytes r=new Bytes(table);int count=r.u16(),stride=r.u16();
        if(id<1||id>count||stride!=145||table.length!=4+count*stride)throw new IOException("Monster table");
        this.id=id;record=new byte[stride];System.arraycopy(table,4+(id-1)*stride,record,0,stride);
        level=record[0]&255;hp=u16(50)|(u16(52)<<16);
        if(ranges==null){ranges=table(5,3);behaviors=table(7,14);effectTable=table(2,8);}
        for(int i=0;i<3;i++){int p=78+i*15;attackWeight[i]=record[p]&255;attackClip[i]=record[p+6]&255;attackDamage[i]=u16(p+9);
            int rangeAt=4+(record[p+7]&255)*3;if(rangeAt+3>ranges.length)throw new IOException("Monster range");for(int j=0;j<3;j++)range[i][j]=ranges[rangeAt+j]&255;
            }
        for(int i=0;i<5;i++){
            behaviorId[i]=record[i<3?92+15*i:127+5*(i-3)]&255;
            if(behaviorId[i]!=255){int at=4+behaviorId[i]*14;if(at+14>behaviors.length){if(i>=3)continue;throw new IOException("Monster behavior");}behavior[i]=new byte[14];System.arraycopy(behaviors,at,behavior[i],0,14);
                if((behavior[i][0]&255)<3||(behavior[i][0]&255)>6){at=4+(behavior[i][13]&255)*8;if(at+8>effectTable.length)throw new IOException("Monster effect");effect[i]=new byte[8];System.arraycopy(effectTable,at,effect[i],0,8);}}
        }
    }
    private static byte[] table(int id,int stride)throws IOException{byte[] b=Assets.read(id,"bd");if(Story.u16(b,2)!=stride||b.length!=4+Story.u16(b,0)*stride)throw new IOException("Monster behavior table");return b;}
    public int selectAttack(int roll){int sum=0;for(int i=0;i<3;i++){sum+=attackWeight[i];if(roll<sum)return i;}return -1;}
    /** 0x81bb8: facing-sensitive asymmetric reach and ground-plane depth, from 5.bd. */
    public boolean inRange(int slot,int dx,int dy,boolean mirror){if(slot<0)return false;int front=range[slot][0],back=range[slot][1];return dx>=-(mirror?front:back)&&dx<=(mirror?back:front)&&Math.abs(dy)<=range[slot][2];}
    public boolean stationary(int slot){return behavior[slot]!=null&&(behavior[slot][0]==0||behavior[slot][0]==1||behavior[slot][0]==2)&&effect[slot]!=null;}
    public boolean lightning(int slot){return behavior[slot]!=null&&behavior[slot][0]==0&&effect[slot]!=null&&Items.word(effect[slot],2)==36000;}
    private int u16(int p){return (record[p]&255)|((record[p+1]&255)<<8);}
    static void loadNames()throws IOException{if(names!=null)return;DataInputStream in=new DataInputStream(MonsterData.class.getResourceAsStream("/monster-names.bin"));try{String[] parsed=new String[in.readUnsignedShort()];for(int i=0;i<parsed.length;i++)parsed[i]=in.readUTF();names=parsed;}finally{in.close();}}
    public static String name(int id){return names!=null&&id>0&&id<=names.length?names[id-1]:"敌人 "+id;}
    public String name(){return name(id);}
}
