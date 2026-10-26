package dnf;
import java.io.*;
/** Native 6.bd / 0x844d0 fields. Unknown parameters remain in the source record. */
public final class MonsterData {
    private static String[] names;
    public final int id,level,hp;
    public final byte[] record;
    public final int[] attackClip=new int[3],attackWeight=new int[3],attackDamage=new int[3];
    public MonsterData(int id,byte[] table)throws IOException {
        loadNames();Bytes r=new Bytes(table);int count=r.u16(),stride=r.u16();
        if(id<1||id>count||stride!=145||table.length!=4+count*stride)throw new IOException("Monster table");
        this.id=id;record=new byte[stride];System.arraycopy(table,4+(id-1)*stride,record,0,stride);
        level=record[0]&255;hp=u16(50)|(u16(52)<<16);
        for(int i=0;i<3;i++){int p=78+i*15;attackWeight[i]=record[p]&255;attackClip[i]=record[p+6]&255;attackDamage[i]=u16(p+9);}
    }
    private int u16(int p){return (record[p]&255)|((record[p+1]&255)<<8);}
    static void loadNames()throws IOException{if(names!=null)return;DataInputStream in=new DataInputStream(MonsterData.class.getResourceAsStream("/monster-names.bin"));try{String[] parsed=new String[in.readUnsignedShort()];for(int i=0;i<parsed.length;i++)parsed[i]=in.readUTF();names=parsed;}finally{in.close();}}
    public static String name(int id){return names!=null&&id>0&&id<=names.length?names[id-1]:"敌人 "+id;}
    public String name(){return name(id);}
}
