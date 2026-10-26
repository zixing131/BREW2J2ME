package dnf;
import java.io.*;
/** Persistent character/quest state, independent of the current scene and story player. */
public final class Campaign {
    public final QuestBook book;
    public final byte[] state;
    public final int[] kills;
    public final Inventory bag;
    public final Loot loot;
    public int difficulty,runMillis,escortHp=-1,escortX,escortY,rewardChoice;
    public final boolean[] storySeen=new boolean[64];
    public int level=1,xp,gold,completedRuns;
    public int returnField=0,returnStage=1,returnZone=0,returnMode=0,returnX=40,returnY=250;
    public int dungeon,bossField=-1,bossStage=-1;
    private int[] cleared=new int[128];
    private int clearCount;
    public Campaign()throws IOException{book=new QuestBook();state=new byte[book.count];kills=new int[book.count*3];bag=new Inventory();loot=new Loot();}
    public int needed(){return 230*level*level*level/100+700*level;}
    /** 0x222ac: condition kind 5 grants the loaned quest item on acceptance. */
    public boolean accept(int id){if(id<0||id>=state.length||!book.available(id,this))return false;int active=0;for(int i=0;i<state.length;i++)if(state[i]==1)active++;if(active>=20)return false;
        for(int i=0;i<3;i++){int p=165+5*i;if(book.value(id,p)==5&&bag.count(book.value(id,p+1),book.word(id,p+2))>9999-book.value(id,p+4))return false;}
        for(int i=0;i<3;i++){int p=165+5*i;if(book.value(id,p)==5)bag.add(book.value(id,p+1),book.word(id,p+2),book.value(id,p+4));}state[id]=1;return true;}
    /** 0x7cf20: at most one level per award, cap surplus at the next threshold minus one. */
    public void experience(int amount){if(amount<=0||level>=60)return;int n=needed();xp+=amount;if(xp>=n){xp-=n;level++;xp=Math.min(xp,needed()-1);}}
    public boolean finish(int id){return finish(id,0);}
    public boolean finish(int id,int choice){if(id<0||id>=state.length||state[id]==2||choice<0||choice>=Math.max(1,book.choiceCount(id)))return false;if(id>=2&&(state[id]!=1||!book.complete(id,this)))return false;
        int[] rewardKeys=new int[3],rewardAmounts=new int[3];int rewards=0;
        for(int i=0;i<3;i++){int p=i<2?207+3*i:book.choiceOffset(id,choice);if(p<0)continue;int t=book.value(id,p),item=book.value(id,p+1),n=book.value(id,p+2);if(n>0){if(!bag.items.valid(t,item))return false;rewardKeys[rewards]=t*256+item;rewardAmounts[rewards++]=n;}}
        for(int i=0;i<rewards;i++){int key=rewardKeys[i],amount=bag.count(key/256,key%256);for(int j=0;j<rewards;j++)if(rewardKeys[j]==key)amount+=rewardAmounts[j];if(state[id]==1)for(int j=0;j<3;j++){int p=180+6*j;if(book.value(id,p)==1&&book.word(id,p+1)*256+book.word(id,p+3)==key)amount-=book.value(id,p+5);}if(amount>9999)return false;}
        if(state[id]==1)for(int i=0;i<3;i++){int p=180+6*i,t=book.value(id,p);if(t==1)bag.remove(book.word(id,p+1),book.word(id,p+3),book.value(id,p+5));else if(t==5)gold-=book.word(id,p+1);}
        state[id]=2;experience(book.reward(id,false));gold=(int)Math.min(999999999L,(long)gold+book.reward(id,true));for(int i=0;i<rewards;i++)bag.add(rewardKeys[i]/256,rewardKeys[i]%256,rewardAmounts[i]);return true;}
    private void rewardItems(int id){for(int i=0;i<3;i++){int p=i<2?207+i*3:book.choiceOffset(id,0);if(p>=0&&book.value(id,p+2)>0)bag.add(book.value(id,p),book.value(id,p+1),book.value(id,p+2));}}
    public void openingCheckpoint(){finish(0);finish(1);}
    public void kill(MonsterData monster){
        for(int q=0;q<state.length;q++)if(state[q]==1)for(int i=0;i<3;i++){
            int p=180+6*i;if(book.value(q,p)==3&&book.word(q,p+1)+1==monster.id&&(book.value(q,p+5)==6||book.value(q,p+5)<=difficulty))kills[q*3+i]=Math.min(book.word(q,p+3),kills[q*3+i]+1);
        }
        // 0x8a400, ordinary difficulty: category multipliers at 0x9d0f8, no equipment bonuses.
        int type=monster.record[29]&255;if(type<=2){int reward=monster.level*new int[]{5,6,10}[type];if(level-monster.level>10)reward/=5;experience(reward);}
    }
    public boolean cleared(int field,int stage){int id=field*100+stage;for(int i=0;i<clearCount;i++)if(cleared[i]==id)return true;return false;}
    public void clear(int field,int stage){if(!cleared(field,stage)&&clearCount<cleared.length)cleared[clearCount++]=field*100+stage;}
    public void newRun(){clearCount=0;runMillis=0;loot.clear();escortHp=-1;if(state[130]==1)storySeen[26]=false;}
    public void clearedDungeon(){completedRuns++;if(dungeon==23&&escortHp>0&&state[130]==1)kills[130*3+1]=1;for(int q=0;q<state.length;q++)if(state[q]==1)for(int i=0;i<3;i++){int p=180+6*i,t=book.value(q,p),a=book.word(q,p+1),b=book.word(q,p+3),c=book.value(q,p+5);
        if(t==2&&dungeon==a&&difficulty>=b)kills[q*3+i]=Math.min(c,kills[q*3+i]+1);
        if(t==7&&dungeon==b&&(c==6||difficulty>=c)&&runMillis<=a*1000)kills[q*3+i]=1;
    }}
    public String journal(){String out="等级 "+level+"   经验 "+xp+" / "+needed()+"\n金币 "+gold+"   通关 "+completedRuns+" 次\n";boolean active=false;
        for(int i=0;i<state.length;i++)if(state[i]==1&&QuestBook.supported(i)){active=true;out+="\n【"+QuestBook.title(i)+"】\n"+book.description(i,this)+(book.complete(i,this)?"\n可以回去交付。":"")+"\n";}
        if(!active)out+="\n暂无进行中的委托。与玛丽、风振、G.S.D 或林纳斯交谈。";
        return out;
    }
    public void write(DataOutputStream d)throws IOException {
        d.writeInt(2);int[] v={level,xp,gold,completedRuns,returnField,returnStage,returnZone,returnMode,returnX,returnY,dungeon,bossField,bossStage};for(int i=0;i<v.length;i++)d.writeInt(v[i]);
        d.writeInt(state.length);d.write(state);for(int i=0;i<kills.length;i++)d.writeInt(kills[i]);d.writeInt(clearCount);for(int i=0;i<clearCount;i++)d.writeInt(cleared[i]);
        bag.write(d);loot.write(d);d.writeInt(difficulty);d.writeInt(runMillis);d.writeInt(escortHp);d.writeInt(escortX);d.writeInt(escortY);d.writeInt(rewardChoice);for(int i=0;i<storySeen.length;i++)d.writeBoolean(storySeen[i]);
    }
    public static Campaign read(DataInputStream d)throws IOException {
        int version=d.readInt();if(version<1||version>2)throw new IOException("Campaign version");Campaign c=new Campaign();c.level=d.readInt();c.xp=d.readInt();c.gold=d.readInt();c.completedRuns=d.readInt();c.returnField=d.readInt();c.returnStage=d.readInt();c.returnZone=d.readInt();c.returnMode=d.readInt();c.returnX=d.readInt();c.returnY=d.readInt();c.dungeon=d.readInt();c.bossField=d.readInt();c.bossStage=d.readInt();
        if(c.level<1||c.level>60||c.xp<0||c.xp>=c.needed()||c.gold<0||c.completedRuns<0||c.returnField<0||c.returnField>168||c.returnStage<1||c.returnStage>99||c.returnZone<0||c.returnZone>45||c.returnMode<0||c.returnMode>7||c.returnX<0||c.returnX>10000||c.returnY<0||c.returnY>10000||c.dungeon<0||c.dungeon>45||c.bossField< -1||c.bossField>168||c.bossStage< -1||c.bossStage>99)throw new IOException("Campaign bounds");
        if(d.readInt()!=c.state.length)throw new IOException("Quest count");d.readFully(c.state);for(int i=0;i<c.state.length;i++)if(c.state[i]<0||c.state[i]>2)throw new IOException("Quest state");
        for(int i=0;i<c.kills.length;i++){c.kills[i]=d.readInt();if(c.kills[i]<0||c.kills[i]>65535)throw new IOException("Quest counter");}
        c.clearCount=d.readInt();if(c.clearCount<0||c.clearCount>c.cleared.length)throw new IOException("Room count");for(int i=0;i<c.clearCount;i++){c.cleared[i]=d.readInt();if(c.cleared[i]<0||c.cleared[i]>16899)throw new IOException("Room id");}
        if(version==2){c.bag.read(d);c.loot.read(d);c.difficulty=d.readInt();c.runMillis=d.readInt();if(c.difficulty<0||c.difficulty>3||c.runMillis<0||c.runMillis>86400000)throw new IOException("Run bounds");c.escortHp=d.readInt();c.escortX=d.readInt();c.escortY=d.readInt();if(c.escortHp< -1||c.escortHp>10000||c.escortX<0||c.escortX>10000||c.escortY<0||c.escortY>10000)throw new IOException("Escort bounds");c.rewardChoice=d.readInt();if(c.rewardChoice<0||c.rewardChoice>3)throw new IOException("Reward choice");for(int i=0;i<c.storySeen.length;i++)c.storySeen[i]=d.readBoolean();}
        else for(int i=0;i<c.state.length;i++)if(c.state[i]==2)c.rewardItems(i);
        return c;
    }
    public static int checksum(byte[] b,int len){int hash=0x514e46;for(int i=0;i<len;i++)hash=hash*31+(b[i]&255);return hash;}
}
