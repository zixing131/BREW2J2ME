package dnf;
import java.io.*;
/** Original quest (225-byte records) and npcInfo; only translated, implemented objectives are offered. */
public final class QuestBook {
    public final byte[] records;
    public final int count;
    private int[][] maps,npcs,offers,returns;
    private static String[] titles;
    private int[][] events=new int[530][2];
    public static final int[] MAIN={0,1,2,3,4,5,6,9,10,18,19,20,21,22,28,29,30,31,40,41,52,53,63,64,65,66,67,68,77,78,79,85,86,87,89,90,98,115,116,117,129,130,142,146,147,160,161,165,171,172,173,177,180,182,190,194,198,211,214,215,220,252,253,254,255,256,257,258,259};
    public QuestBook()throws IOException {
        MonsterData.loadNames();
        for(int i=0;i<events.length;i++){events[i][0]=-1;events[i][1]=-1;}
        DataInputStream es=new DataInputStream(new ByteArrayInputStream(Bytes.resource("/quest-events.bin")));int ec=es.readUnsignedShort();for(int i=0;i<ec;i++){int q=es.readUnsignedShort(),phase=es.readUnsignedByte(),op=es.readUnsignedByte(),value=es.readUnsignedShort();if(op==6||op==7)events[q][phase]=value;}es.close();
        if(titles==null){DataInputStream d=new DataInputStream(new ByteArrayInputStream(Bytes.resource("/quest-titles.bin")));titles=new String[d.readUnsignedShort()];for(int i=0;i<titles.length;i++)titles[i]=d.readUTF();d.close();}
        records=Bytes.resource("/original/quest");count=u16(0);
        if(records.length!=2+count*225)throw new IOException("Quest table length");
        Bytes r=new Bytes(Bytes.resource("/original/npcInfo"));int n=r.u8();maps=new int[n][];
        int[][] ns=new int[64][],os=new int[64][],rs=new int[64][];int index=0;
        for(int i=0;i<n;i++){int size=r.u8(),mode=r.u8(),zone=r.u8(),field=r.u8(),stage=r.u8(),sc=r.u16();maps[i]=new int[]{field,stage,index,size,sc};
            for(int j=0;j<size;j++){ns[index]=new int[]{r.u8(),i};os[index]=list(r);rs[index]=list(r);index++;}}
        r.end();npcs=new int[index][];offers=new int[index][];returns=new int[index][];
        System.arraycopy(ns,0,npcs,0,index);System.arraycopy(os,0,offers,0,index);System.arraycopy(rs,0,returns,0,index);
    }
    private int[] list(Bytes r)throws IOException{int[] a=new int[r.u8()];for(int i=0;i<a.length;i++)a[i]=r.u16();return a;}
    private int u16(int p){return (records[p]&255)|((records[p+1]&255)<<8);}
    public int value(int id,int offset){return records[2+id*225+offset]&255;}
    public int word(int id,int offset){return u16(2+id*225+offset);}
    public int reward(int id,boolean money){int p=2+id*225+(money?202:198);return u16(p)|(u16(p+2)<<16);}
    public int story(int id,boolean turnin){return events[id][turnin?1:0];}
    public int choiceCount(int id){int n=0;for(int i=0;i<4;i++)if(value(id,213+3*i+2)>0)n++;return n;}
    public int choiceOffset(int id,int choice){for(int i=0;i<4;i++){int p=213+3*i;if(value(id,p+2)>0&&choice--==0)return p;}return -1;}
    public boolean available(int id,Campaign c){
        if(!supported(id)||c.state[id]!=0)return false;
        for(int i=0;i<3;i++){int p=165+i*5,type=value(id,p),arg=value(id,p+1),v=word(id,p+2);
            if(type==1&&(v>=c.state.length||c.state[v]!=arg))return false;
            if(type==2&&c.level<arg)return false;if(type==3&&c.bag.count(arg,v)<value(id,p+4))return false;}
        return true;
    }
    public int find(int field,int stage,int npc,Campaign c,boolean turnin){
        for(int m=0;m<maps.length;m++)if(maps[m][0]==field&&maps[m][1]==stage){
            for(int j=maps[m][2];j<maps[m][2]+maps[m][3];j++)if(npcs[j][0]==npc){int[] ids=turnin?returns[j]:offers[j];
                for(int k=0;k<ids.length;k++){int id=ids[k];if(supported(id)&&(turnin?c.state[id]==1&&complete(id,c):available(id,c)))return id;}}}
        return -1;
    }
    public boolean complete(int id,Campaign c){
        for(int i=0;i<3;i++){int p=180+6*i,type=value(id,p),a=word(id,p+1),b=word(id,p+3),n=value(id,p+5);
            if(type==0)continue;
            if(type==1){if(c.bag.count(a,b)<n)return false;}
            else if(type==2){if(c.kills[id*3+i]<n)return false;}
            else if(type==3){if(c.kills[id*3+i]<b)return false;}
            else if(type==5){if(c.gold<a)return false;}
            else if(type==7||type==15){if(c.kills[id*3+i]==0)return false;}
            else if(type==12){if(b>=c.state.length||c.state[b]!=a)return false;}
            else if(type==13){if(c.level<a)return false;}
            else return false;
        }return true;
    }
    public static boolean supported(int id){if(id==7||id==8||id==213)return true;for(int i=2;i<MAIN.length;i++)if(MAIN[i]==id)return true;return false;}
    public static String title(int id){return titles!=null&&id>=0&&id<titles.length?titles[id]:"任务 "+id;}
    public int[] contact(int id,boolean turnin){for(int j=0;j<npcs.length;j++){int[] ids=turnin?returns[j]:offers[j];for(int i=0;i<ids.length;i++)if(ids[i]==id){int[] m=maps[npcs[j][1]];return new int[]{m[0],m[1],npcs[j][0]};}}return new int[]{-1,1,-1};}
    public String description(int id,Campaign c){String s="";for(int i=0;i<3;i++){int p=180+6*i,t=value(id,p),a=word(id,p+1),b=word(id,p+3),n=value(id,p+5);String v="";
        if(t==1)v=c.bag.items.name(a,b)+"："+c.bag.count(a,b)+" / "+n;
        else if(t==2)v=Adventure.zoneName(a)+" · "+Adventure.difficultyName(b)+"："+c.kills[id*3+i]+" / "+n;
        else if(t==3)v="击败 "+MonsterData.name(a+1)+"（"+Adventure.difficultyName(n)+"）："+c.kills[id*3+i]+" / "+b;
        else if(t==5)v="支付金币："+c.gold+" / "+a;
        else if(t==7)v="在 "+a+" 秒内通关"+Adventure.zoneName(b)+(c.kills[id*3+i]>0?"（完成）":"");
        else if(t==15)v="护送克莱尔安全离开地下城"+(c.kills[id*3+i]>0?"（完成）":"");
        if(v.length()>0)s+=(s.length()>0?"\n":"")+v;
    }int[] where=contact(id,true);return s+(s.length()>0?"\n":"")+"交付："+npcName(where[2])+" · "+Adventure.townName(where[0]);}
    public static String npcName(int id){switch(id){case 0:return "风振";case 1:return "卡妮娜";case 4:return "凯丽";case 100:return "巴隆";case 30:return "巴隆";case 5:return "索西雅";case 8:return "辛达";case 9:return "G.S.D";case 10:return "夏洛克";case 11:return "罗顿";case 14:return "林纳斯";case 20:return "克莱尔";case 23:return "莎兰";case 24:return "奥菲利亚";case 25:return "瓦尔娜";case 26:return "雷诺";case 27:return "敏泰";case 28:return "奥尔卡";case 29:return "玛丽";}return "居民 "+id;}

    /** Read only the requested SC sequence; retain no duplicate dialogue corpus in CLDC heap. */
    public String conversation(int id,boolean turnin,int npc)throws IOException {
        DataInputStream d=new DataInputStream(QuestBook.class.getResourceAsStream("/quest-dialogues.bin"));
        try{int n=d.readUnsignedShort();for(int i=0;i<n;i++){int q=d.readUnsignedShort(),phase=d.readUnsignedByte(),who=d.readUnsignedByte(),lines=d.readUnsignedShort();boolean match=q==id&&phase==(turnin?1:0)&&who==npc;String out="";
            for(int j=0;j<lines;j++){int speaker=d.readUnsignedByte();String text=d.readUTF();if(match)out+=(out.length()==0?"":"\n")+npcName(speaker)+"："+text;}if(match)return out;
        }}finally{d.close();}return title(id);
    }
}
