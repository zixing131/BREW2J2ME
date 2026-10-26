package dnf;
import java.io.*;
/** Campaign routes. All room geometry, exits, spawns and animation events remain native assets. */
public final class Adventure {
    private static byte[] mapEvents;
    public static final int[] ZONES={1,2,3,4,5,9,6,7,21,22,23,24,25,26,28,29,30,31,32,33,12,45};
    private static final int[] UNLOCK={4,9,29,40,52,65,68,79,90,98,129,130,142,160,172,177,182,194,198,215,252,258};
    private static final String[] NAMES={"幽暗密林","幽暗密林深处","雷鸣废墟","猛毒雷鸣废墟","冰霜幽暗密林","格拉卡","烈焰格拉卡","暗黑雷鸣废墟","龙人之塔","人偶玄关","石巨人塔","黑暗玄廊","悬空城","城主宫殿","神殿外围","树精丛林","炼狱","极昼","第一脊椎","第二脊椎","山脊","GBL秘密地下城"};
    public static String zoneName(int id){for(int i=0;i<ZONES.length;i++)if(ZONES[i]==id)return NAMES[i];return "地下城 "+id;}
    public static String difficultyName(int n){return n==6?"任意难度":n>=0&&n<4?new String[]{"普通","冒险","勇士","王者"}[n]:"难度 "+n;}
    public static String townName(int f){return f==79?"斯顿雪域":f==1?"赫顿玛尔北街":f==3?"赫顿玛尔南街":f==2?"魔法公会":f==4||f==5?"西海岸":"赫顿玛尔";}
    public static boolean unlocked(Campaign c,int index){return index>=0&&index<ZONES.length&&c.state[UNLOCK[index]]==2;}
    public static int nextQuest(Campaign c){for(int i=2;i<QuestBook.MAIN.length;i++){int q=QuestBook.MAIN[i];if(c.state[q]!=2)return q;}return -1;}
    public static int mapStory(Campaign c,int field,int stage,int dispatch,int monster,boolean boss,boolean clear)throws IOException {
        if(mapEvents==null)mapEvents=Bytes.resource("/original/mapAni");byte[] raw=mapEvents;int n=Items.word(raw,0);if(raw.length!=2+n*20)throw new IOException("Map story table");
        for(int i=0;i<n;i++){int p=2+i*20,id=raw[p]&255;if(id>=c.storySeen.length||c.storySeen[id]||(raw[p+1]&255)!=dispatch)continue;boolean ok=true;
            for(int j=0;j<3;j++){int o=p+2+j*6,t=raw[o]&255,a=Items.word(raw,o+1),b=Items.word(raw,o+3),v=raw[o+5]&255;
                if(t==0)continue;
                if(t==1){if(b>=c.state.length||c.state[b]!=1)ok=false;}
                else if(t==2){if(field!=a||stage!=b||c.difficulty<v||!clear)ok=false;}
                else if(t==3){if(field!=a||stage!=b)ok=false;}
                else if(t==4){if(c.dungeon!=a||stage!=b||c.difficulty<v||!boss)ok=false;}
                else if(t==6){if(monster!=a||stage!=b||c.difficulty<v)ok=false;}
                else ok=false;
            }if(ok){c.storySeen[id]=true;return id;}
        }return -1;
    }
}
