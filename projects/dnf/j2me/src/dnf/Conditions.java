package dnf;
import java.io.*;
/** Negative states: 0.bd, ARM 0x75074/751d8. Positive states: 0x71684/75494. */
public final class Conditions {
    private static byte[] definitions;
    private static int levels;
    public final int[] rank=new int[12],elapsed=new int[12],interval=new int[12],duration=new int[12];
    public final boolean[] active=new boolean[12];
    public final int[] buffTime,buffValue;
    public Conditions(int buffs)throws IOException {buffTime=new int[buffs];buffValue=new int[buffs];if(definitions==null){byte[] b=Assets.read(0,"bd");levels=Story.u16(b,0);if(Story.u16(b,2)!=12||b.length!=124+24*levels)throw new IOException("Status definitions");definitions=b;}}
    private static int field(int id,int p){return definitions[4+10*id+p]&255;}
    public static int value(int id,int rank){if(rank==0)return field(id,9);return Story.u16(definitions,124+2*(id*levels+rank-1));}
    public static int lifetime(int id,int rank,boolean enemy){int base=Story.u16(definitions,4+10*id+5),mode=field(id,8);return (mode==4?base+value(id,rank):mode==3?(enemy?0:base)+value(id,rank):base)&65535;}
    public boolean apply(int id,int level,int chance,int resistance,int roll,boolean enemy){if(id<0||id>=12||level<0||level>levels||Math.max(0,Math.min(100,(chance&255)-resistance))<=roll||active[id]&&rank[id]>level)return false;rank[id]=level;elapsed[id]=interval[id]=0;duration[id]=lifetime(id,level,enemy);active[id]=true;return true;}
    public void buff(int id,int time,int value){if(id<0||id>=buffTime.length||time<0||time>65535||value<0||value>65535)return;if(buffTime[id]>0&&buffValue[id]>value)return;buffTime[id]=time+1;buffValue[id]=value;}
    public int bonus(int id){return buffTime[id]>0?buffValue[id]:0;}
    public boolean stopped(){return active[6]||active[7]||active[8]||active[9];}
    public int slow(){return active[11]?value(11,rank[11]):0;}
    public int tick(){int damage=0;for(int i=0;i<12;i++)if(active[i]){if(elapsed[i]>=duration[i]){active[i]=false;elapsed[i]=interval[i]=0;}else if(interval[i]>=field(i,4)){if(field(i,8)==0)damage+=value(i,rank[i]);interval[i]=0;}interval[i]=(interval[i]+1)&255;elapsed[i]++;}for(int i=0;i<buffTime.length;i++)if(buffTime[i]>0&&--buffTime[i]==0)buffValue[i]=0;return damage;}
    public void write(DataOutputStream d)throws IOException{for(int i=0;i<12;i++){d.writeBoolean(active[i]);d.writeByte(rank[i]);d.writeInt(elapsed[i]);d.writeInt(interval[i]);d.writeInt(duration[i]);}for(int i=0;i<buffTime.length;i++){d.writeInt(buffTime[i]);d.writeInt(buffValue[i]);}}
    public void read(DataInputStream d)throws IOException{for(int i=0;i<12;i++){active[i]=d.readBoolean();rank[i]=d.readUnsignedByte();elapsed[i]=d.readInt();interval[i]=d.readInt();duration[i]=d.readInt();if(rank[i]>levels||elapsed[i]<0||elapsed[i]>65536||interval[i]<0||interval[i]>255||duration[i]<0||duration[i]>65535)throw new IOException("Status bounds");}for(int i=0;i<buffTime.length;i++){buffTime[i]=d.readInt();buffValue[i]=d.readInt();if(buffTime[i]<0||buffTime[i]>65536||buffValue[i]<0||buffValue[i]>65535)throw new IOException("Buff bounds");}}
}
