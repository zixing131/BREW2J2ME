package dnf;
import java.io.*;
/** Persistent character/quest state, independent of the current scene and story player. */
public final class Campaign {
    public final QuestBook book;
    public final byte[] state;
    public final int[] kills;
    public int level=1,xp,gold,completedRuns;
    public int returnField=0,returnStage=1,returnZone=0,returnMode=0,returnX=40,returnY=250;
    public int dungeon,bossField=-1,bossStage=-1;
    private int[] cleared=new int[128];
    private int clearCount;
    public Campaign()throws IOException{book=new QuestBook();state=new byte[book.count];kills=new int[book.count*3];}
    public int needed(){return 230*level*level*level/100+700*level;}
    /** 0x7cf20: at most one level per award, cap surplus at the next threshold minus one. */
    public void experience(int amount){if(amount<=0||level>=60)return;int n=needed();xp+=amount;if(xp>=n){xp-=n;level++;xp=Math.min(xp,needed()-1);}}
    public boolean finish(int id){if(state[id]==2)return false;state[id]=2;experience(book.reward(id,false));gold+=book.reward(id,true);return true;}
    public void openingCheckpoint(){finish(0);finish(1);}
    public void kill(MonsterData monster){
        for(int q=0;q<state.length;q++)if(state[q]==1)for(int i=0;i<3;i++){
            int p=180+6*i;if(book.value(q,p)==3&&book.word(q,p+1)+1==monster.id&&(book.value(q,p+5)==6||book.value(q,p+5)==0))kills[q*3+i]=Math.min(book.word(q,p+3),kills[q*3+i]+1);
        }
        // 0x8a400, ordinary difficulty: category multipliers at 0x9d0f8, no equipment bonuses.
        int type=monster.record[29]&255;if(type<=2){int reward=monster.level*new int[]{5,6,10}[type];if(level-monster.level>10)reward/=5;experience(reward);}
    }
    public boolean cleared(int field,int stage){int id=field*100+stage;for(int i=0;i<clearCount;i++)if(cleared[i]==id)return true;return false;}
    public void clear(int field,int stage){if(!cleared(field,stage)&&clearCount<cleared.length)cleared[clearCount++]=field*100+stage;}
    public void newRun(){clearCount=0;}
    public String journal(){String out="等级 "+level+"   经验 "+xp+" / "+needed()+"\n金币 "+gold+"   通关 "+completedRuns+" 次\n";boolean active=false;
        for(int i=0;i<state.length;i++)if(state[i]==1&&QuestBook.supported(i)){active=true;out+="\n【"+QuestBook.title(i)+"】\n"+book.description(i,this)+(book.complete(i,this)?"\n可以回去交付。":"")+"\n";}
        if(!active)out+="\n暂无进行中的委托。与玛丽、风振、G.S.D 或林纳斯交谈。";
        return out;
    }
    public void write(DataOutputStream d)throws IOException {
        d.writeInt(1);int[] v={level,xp,gold,completedRuns,returnField,returnStage,returnZone,returnMode,returnX,returnY,dungeon,bossField,bossStage};for(int i=0;i<v.length;i++)d.writeInt(v[i]);
        d.writeInt(state.length);d.write(state);for(int i=0;i<kills.length;i++)d.writeInt(kills[i]);d.writeInt(clearCount);for(int i=0;i<clearCount;i++)d.writeInt(cleared[i]);
    }
    public static Campaign read(DataInputStream d)throws IOException {
        if(d.readInt()!=1)throw new IOException("Campaign version");Campaign c=new Campaign();c.level=d.readInt();c.xp=d.readInt();c.gold=d.readInt();c.completedRuns=d.readInt();c.returnField=d.readInt();c.returnStage=d.readInt();c.returnZone=d.readInt();c.returnMode=d.readInt();c.returnX=d.readInt();c.returnY=d.readInt();c.dungeon=d.readInt();c.bossField=d.readInt();c.bossStage=d.readInt();
        if(c.level<1||c.level>60||c.xp<0||c.xp>=c.needed()||c.gold<0||c.completedRuns<0||c.returnField<0||c.returnField>168||c.returnStage<1||c.returnStage>99||c.returnZone<0||c.returnZone>45||c.returnMode<0||c.returnMode>7||c.returnX<0||c.returnX>10000||c.returnY<0||c.returnY>10000||c.dungeon<0||c.dungeon>1||c.bossField< -1||c.bossField>168||c.bossStage< -1||c.bossStage>99)throw new IOException("Campaign bounds");
        if(d.readInt()!=c.state.length)throw new IOException("Quest count");d.readFully(c.state);for(int i=0;i<c.state.length;i++)if(c.state[i]<0||c.state[i]>2)throw new IOException("Quest state");
        for(int i=0;i<c.kills.length;i++){c.kills[i]=d.readInt();if(c.kills[i]<0||c.kills[i]>65535)throw new IOException("Quest counter");}
        c.clearCount=d.readInt();if(c.clearCount<0||c.clearCount>c.cleared.length)throw new IOException("Room count");for(int i=0;i<c.clearCount;i++){c.cleared[i]=d.readInt();if(c.cleared[i]<0||c.cleared[i]>16899)throw new IOException("Room id");}return c;
    }
    public static int checksum(byte[] b,int len){int hash=0x514e46;for(int i=0;i<len;i++)hash=hash*31+(b[i]&255);return hash;}
}
