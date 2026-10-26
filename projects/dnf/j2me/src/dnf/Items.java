package dnf;
import java.io.*;
/** Original 0.etc item records, 2.etc recipes, and 12.bd drop ranges. */
public final class Items {
    private static Items instance;
    public final byte[][][] data=new byte[20][][];
    public final byte[][] recipes;
    public final byte[] drops,questDrops;
    private String[][] names=new String[20][];
    public static final String[] TYPES={"短剑","太刀","巨剑","光剑","肩甲","上衣","下装","手镯","戒指","称号","宠物","材料","卡片","生命药水","魔力药水","恢复药剂","辅助药剂","特殊道具","罐子","任务物品"};
    public static Items get()throws IOException {if(instance==null)instance=new Items();return instance;}
    private Items()throws IOException {
        Bytes r=new Bytes(Assets.read(0,"etc"));
        for(int t=0;t<20;t++){int n=r.u8(),size=t<=10?36:t<=12?7:t<=17?15:t==18?7:6;data[t]=new byte[n][];for(int i=0;i<n;i++)data[t][i]=r.take(size);}r.end();
        r=new Bytes(Assets.read(2,"etc"));recipes=new byte[r.u16()][];for(int i=0;i<recipes.length;i++)recipes[i]=r.take(21);r.end();
        drops=Assets.read(12,"bd");questDrops=Bytes.resource("/original/questItem");
        if(drops.length!=4+word(drops,0)*4||word(drops,2)!=4||questDrops.length!=2+word(questDrops,0)*22)throw new IOException("Item drop table");
        DataInputStream in=new DataInputStream(new ByteArrayInputStream(Bytes.resource("/items-zh.bin")));
        for(int t=0;t<20;t++){int n=in.readUnsignedShort();if(n!=data[t].length)throw new IOException("Item names");names[t]=new String[n];for(int i=0;i<n;i++)names[t][i]=in.readUTF();}in.close();
    }
    public static int word(byte[] b,int p){return (b[p]&255)|((b[p+1]&255)<<8);}
    public boolean valid(int t,int id){return t>=0&&t<20&&id>0&&id<data[t].length;}
    public String name(int t,int id){return valid(t,id)?names[t][id]:"空";}
    public int level(int t,int id){return !valid(t,id)?0:t<=10?data[t][id][4]&255:t>=13&&t<=17?data[t][id][3]&255:1;}
    public int price(int t,int id){if(!valid(t,id)||t==19)return 0;return word(data[t][id],t<=10?5:t<=12?3:t<=17?4:2);}
    public int slot(int t){return t<4?0:t<=10?t-3:-1;}
    public int stat(int t,int id,int which){return valid(t,id)&&t<=10?word(data[t][id],11+which*2):0;}
    public int recipeCost(int id){byte[] b=recipes[id];return word(b,7)|(word(b,9)<<16);}
    public String recipeText(int id){byte[] b=recipes[id];String s=name(b[4]&255,b[5]&255)+"\n金币 "+recipeCost(id);for(int i=0;i<5;i++){int m=b[11+i*2]&255;if(m!=0)s+="\n"+name(11,m)+" ×"+(b[12+i*2]&255);}return s;}
    /** Native effect switch 0x80370; packed 7-byte effect expands to aligned runtime fields. */
    public int recovery(int t,int id,int maximum,boolean magic){if(!valid(t,id)||t<13||t>15)return 0;byte[] b=data[t][id];int effect=b[8]&255,n=word(b,9);
        if(effect==100||effect==(magic?49:48))return n;
        if(effect==52||effect==(magic?51:50))return (int)((long)maximum*n/100);
        return 0;
    }
    public boolean recoverySupported(int t,int id){return recovery(t,id,10000,false)>0||recovery(t,id,10000,true)>0;}
    public String detail(int t,int id){String s=name(t,id)+"\n"+TYPES[t]+" · 等级 "+level(t,id);if(t<=10)s+="\n"+(t<4?"物理 / 魔法攻击":"防御 / 魔法防御")+" "+stat(t,id,0)+" / "+stat(t,id,1);
        if(t>=13&&t<=15){int effect=data[t][id][8]&255,n=word(data[t][id],9);if(recoverySupported(t,id)){String target=effect==52||effect==100?"生命与魔力":effect==49||effect==51?"魔力":"生命";s+="\n恢复"+target+" "+n+(effect>=50&&effect<=52?"%":" 点");}else s+="\n特殊效果尚未恢复";}return s;}
}
