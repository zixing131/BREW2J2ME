package dnf;
import java.io.*;
/** Original quest (225-byte records) and npcInfo; only translated, implemented objectives are offered. */
public final class QuestBook {
    public final byte[] records;
    public final int count;
    private int[][] maps,npcs,offers,returns;
    public QuestBook()throws IOException {
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
    public boolean available(int id,Campaign c){
        if(!supported(id)||c.state[id]!=0)return false;
        for(int i=0;i<3;i++){int p=165+i*5,type=value(id,p),arg=value(id,p+1),v=word(id,p+2);
            if(type==1&&(v>=c.state.length||c.state[v]!=arg))return false;
            if(type==2&&c.level<arg)return false;if(type>2)return false;}
        return true;
    }
    public int find(int field,int stage,int npc,Campaign c,boolean turnin){
        for(int m=0;m<maps.length;m++)if(maps[m][0]==field&&maps[m][1]==stage){
            for(int j=maps[m][2];j<maps[m][2]+maps[m][3];j++)if(npcs[j][0]==npc){int[] ids=turnin?returns[j]:offers[j];
                for(int k=0;k<ids.length;k++){int id=ids[k];if(supported(id)&&(turnin?c.state[id]==1&&complete(id,c):available(id,c)))return id;}}}
        return -1;
    }
    public boolean complete(int id,Campaign c){
        for(int i=0;i<3;i++){int p=180+6*i,type=value(id,p);if(type==0||type==12)continue;
            if(type!=3||c.kills[id*3+i]<word(id,p+3))return false;}
        return true;
    }
    public static boolean supported(int id){return id==2||id==3||id==4||id==7||id==8;}
    public static String title(int id){switch(id){case 0:return "研究日志";case 1:return "胶囊破坏";case 2:return "赫顿玛尔的风振";case 3:return "鬼剑士 G.S.D";case 4:return "铁匠林纳斯";case 7:return "风振的请求";case 8:return "鬼剑士之路：试炼一";}return "任务 "+id;}
    public String description(int id,Campaign c){switch(id){case 2:return "前往赫顿玛尔，寻找风振。";case 3:return "去赫顿玛尔北街寻找 G.S.D。";case 4:return "去南街寻找铁匠林纳斯。";case 7:return "在幽暗密林击败哥布林："+c.kills[id*3]+" / 10";case 8:return "在幽暗密林击败牛头前锋："+c.kills[id*3]+" / 4";}return title(id);}
    public static String npcName(int id){switch(id){case 0:return "风振";case 1:return "卡妮娜";case 9:return "G.S.D";case 14:return "林纳斯";case 29:return "玛丽";case 25:return "奥尔卡";case 26:return "雷诺";case 28:return "瓦尔娜";case 11:return "罗顿";case 10:return "莎兰";}return "居民";}
    /** Faithful translations of the early SC quest sequences, references in docs/06. */
    public static String conversation(int id,boolean turnin){
        if(id==2&&!turnin)return "巴隆：走吧，玛丽……\n玛丽：哥哥，我们为什么要离开研究所？妈妈和爸爸呢？\n巴隆：那里很危险……\n玛丽：危险？哥哥，你在说什么？\n巴隆：你很快就会明白。先去找能帮助我们的人。\n玛丽：我们就这样走了，爸爸妈妈会没事吗……？";
        if(id==2)return "风振：我从两位身上感觉到不寻常的气息……你们相信道吗？";
        if(id==3&&!turnin)return "巴隆：……走吧，玛丽。不用听这个光头假和尚胡说。\n玛丽：嗯……\n巴隆：奥尔卡居然介绍这种人给我们……\n风振：斯顿雪域的奥尔卡？把事情告诉我吧，也许我能帮忙。\n巴隆：你知道希洛克的思念之石吗？\n风振：果然，那是希洛克的魔力。格兰之森的异变可能也与它有关。\n风振：听说幽暗密林的牛头巨兽变得异常凶暴。去见它也许有帮助，但你还不够强。先去北街找鬼剑士 G.S.D，他会帮助你。";
        if(id==3)return "G.S.D：……令人不快的气息，正在不断涌出。";
        if(id==4&&!turnin)return "巴隆：我是风振介绍来的。\nG.S.D：风振……想必有他的理由。我能教像你这样的鬼剑士一些剑术，需要力量就来找我。\n巴隆：谢谢。\nG.S.D：不过，你的武器也太寒酸了。这样连牛头怪的角都砍不断！去找西南方的铁匠林纳斯，让他帮你打造一把好武器。";
        if(id==4)return "林纳斯：嗯？年轻的冒险家，找我有什么事？\n林纳斯：G.S.D 推荐你来的？哈哈！我可是贝尔玛尔公国最好的铁匠！那个老头真有眼光！";
        if(id==7&&!turnin)return "风振：大火之后，格兰之森出现了越来越多来自地下的魔物。数量众多的哥布林不断侵蚀精灵从前的栖息地。我的许多弟子正在与它们战斗。\n风振：你似乎也是初学武艺的人，愿意助我们一臂之力吗？";
        if(id==7)return "风振：干得漂亮！你的实力比看起来还要出色。";
        if(id==8&&!turnin)return "G.S.D：年轻人，你与我背负着同样悲哀的命运。看着你手臂上的锁链，让我想起年轻时努力战胜鬼神的自己。\nG.S.D：没有其他办法，只有让自己变强。想让我指引你的道路，就向我证明你战胜命运的决心吧。";
        return "G.S.D：怎么样……做好心理准备了吗？";
    }
}
