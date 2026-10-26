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
    public int permanentHp,permanentMp,skillPoints,totalSkillPoints;
    public final byte[] skillRanks=new byte[75];
    public int entryRoute,bossRoute,specialRoute,gridX=-1,gridY=-1;
    public int returnField=0,returnStage=1,returnZone=0,returnMode=0,returnX=40,returnY=250;
    public int dungeon,bossField=-1,bossStage=-1;
    private int[] cleared=new int[128];
    private int clearCount;
    public Campaign()throws IOException{book=new QuestBook();state=new byte[book.count];kills=new int[book.count*3];bag=new Inventory();loot=new Loot();skillRanks[0]=skillRanks[6]=skillRanks[9]=1;}
    public int needed(){return 230*level*level*level/100+700*level;}
    /** 0x222ac: condition kind 5 grants the loaned quest item on acceptance. */
    public boolean accept(int id){if(id<0||id>=state.length||!book.available(id,this))return false;int active=0;for(int i=0;i<state.length;i++)if(state[i]==1)active++;if(active>=20)return false;
        for(int i=0;i<3;i++){int p=165+5*i;if(book.value(id,p)==5&&bag.count(book.value(id,p+1),book.word(id,p+2))>9999-book.value(id,p+4))return false;}
        for(int i=0;i<3;i++){int p=165+5*i;if(book.value(id,p)==5)bag.add(book.value(id,p+1),book.word(id,p+2),book.value(id,p+4));}state[id]=1;return true;}
    /** 0x7cf20: at most one level per award, cap surplus at the next threshold minus one. */
    public void experience(int amount){if(amount<=0||level>=60)return;int n=needed(),quota=quota(level),step=n/quota+1;long next=(long)xp+amount;int gain;
        if(next>=n){gain=Math.max(0,quota-xp/step)&255;next-=n;level++;xp=(int)Math.min(next,needed()-1);int remainder=(short)(next/(needed()/quota(level)+1));gain+=remainder<0?0:remainder&255;}
        else {gain=((int)next/step-xp/step)&255;xp=(int)next;}
        skillPoints=(skillPoints+gain)&65535;totalSkillPoints=(totalSkillPoints+gain)&65535;
    }
    private static int quota(int level){return level<18?33:level<40?36:40;}
    public String train(int id)throws IOException {
        if(id!=6&&id!=9)return "此技能的战斗机制尚未开放";
        SkillData current=new SkillData(id,skillRanks[id]&255);if(current.rank>=current.maxRank)return "技能已达最高等级";
        SkillData next=new SkillData(id,current.rank+1);
        if(level<next.requiredLevel)return "需要角色等级 "+next.requiredLevel;
        if(next.prerequisite!=255&&(skillRanks[next.prerequisite]&255)<next.prerequisiteRank)return "前置技能等级不足";
        if(skillPoints<next.spCost)return "技能点不足，需要 "+next.spCost+" SP";
        skillPoints-=next.spCost;skillRanks[id]++;return SkillData.name(id)+"提升至 "+(skillRanks[id]&255)+" 级";
    }
    /** Native 0x34410 starter equipment table at 0x9670d/0x9670f. */
    private void starterWeapon(){if(bag.equipment[0]>=0)return;int[] entries=bag.entries();for(int i=0;i<entries.length;i++)if(entries[i]/256<=3)return;bag.add(1,1,1);bag.equip(1,1,level);}

    public boolean finish(int id){return finish(id,0);}
    public boolean finish(int id,int choice){if(id<0||id>=state.length||state[id]==2||choice<0||choice>=Math.max(1,book.choiceCount(id)))return false;if(id>=2&&(state[id]!=1||!book.complete(id,this)))return false;
        int[] rewardKeys=new int[3],rewardAmounts=new int[3];int rewards=0;
        for(int i=0;i<3;i++){int p=i<2?207+3*i:book.choiceOffset(id,choice);if(p<0)continue;int t=book.value(id,p),item=book.value(id,p+1),n=book.value(id,p+2);if(n>0){if(!bag.items.valid(t,item))return false;rewardKeys[rewards]=t*256+item;rewardAmounts[rewards++]=n;}}
        for(int i=0;i<rewards;i++){int key=rewardKeys[i],amount=bag.count(key/256,key%256);for(int j=0;j<rewards;j++)if(rewardKeys[j]==key)amount+=rewardAmounts[j];if(state[id]==1)for(int j=0;j<3;j++){int p=180+6*j;if(book.value(id,p)==1&&book.word(id,p+1)*256+book.word(id,p+3)==key)amount-=book.value(id,p+5);}if(amount>9999)return false;}
        if(state[id]==1)for(int i=0;i<3;i++){int p=180+6*i,t=book.value(id,p);if(t==1)bag.remove(book.word(id,p+1),book.word(id,p+3),book.value(id,p+5));else if(t==5)gold-=book.word(id,p+1);}
        state[id]=2;if(id==0)starterWeapon();experience(book.reward(id,false));gold=(int)Math.min(999999999L,(long)gold+book.reward(id,true));for(int i=0;i<rewards;i++)bag.add(rewardKeys[i]/256,rewardKeys[i]%256,rewardAmounts[i]);return true;}
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
    public void newRun(){entryRoute=bossRoute=specialRoute=0;gridX=gridY=-1;clearCount=0;runMillis=0;loot.clear();escortHp=-1;if(state[130]==1)storySeen[26]=false;}
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
        d.writeInt(4);int[] v={level,xp,gold,completedRuns,returnField,returnStage,returnZone,returnMode,returnX,returnY,dungeon,bossField,bossStage};for(int i=0;i<v.length;i++)d.writeInt(v[i]);
        d.writeInt(state.length);d.write(state);for(int i=0;i<kills.length;i++)d.writeInt(kills[i]);d.writeInt(clearCount);for(int i=0;i<clearCount;i++)d.writeInt(cleared[i]);
        bag.write(d);loot.write(d);d.writeInt(difficulty);d.writeInt(runMillis);d.writeInt(escortHp);d.writeInt(escortX);d.writeInt(escortY);d.writeInt(rewardChoice);for(int i=0;i<storySeen.length;i++)d.writeBoolean(storySeen[i]);
        d.writeInt(permanentHp);d.writeInt(permanentMp);
        d.writeInt(skillPoints);d.writeInt(totalSkillPoints);d.write(skillRanks);d.writeInt(entryRoute);d.writeInt(bossRoute);d.writeInt(specialRoute);d.writeInt(gridX);d.writeInt(gridY);
    }
    public static Campaign read(DataInputStream d)throws IOException {
        int version=d.readInt();if(version<1||version>4)throw new IOException("Campaign version");Campaign c=new Campaign();c.level=d.readInt();c.xp=d.readInt();c.gold=d.readInt();c.completedRuns=d.readInt();c.returnField=d.readInt();c.returnStage=d.readInt();c.returnZone=d.readInt();c.returnMode=d.readInt();c.returnX=d.readInt();c.returnY=d.readInt();c.dungeon=d.readInt();c.bossField=d.readInt();c.bossStage=d.readInt();
        if(c.level<1||c.level>60||c.xp<0||c.xp>=c.needed()||c.gold<0||c.completedRuns<0||c.returnField<0||c.returnField>168||c.returnStage<1||c.returnStage>99||c.returnZone<0||c.returnZone>45||c.returnMode<0||c.returnMode>7||c.returnX<0||c.returnX>10000||c.returnY<0||c.returnY>10000||c.dungeon<0||c.dungeon>45||c.bossField< -1||c.bossField>168||c.bossStage< -1||c.bossStage>99)throw new IOException("Campaign bounds");
        if(d.readInt()!=c.state.length)throw new IOException("Quest count");d.readFully(c.state);for(int i=0;i<c.state.length;i++)if(c.state[i]<0||c.state[i]>2)throw new IOException("Quest state");
        for(int i=0;i<c.kills.length;i++){c.kills[i]=d.readInt();if(c.kills[i]<0||c.kills[i]>65535)throw new IOException("Quest counter");}
        c.clearCount=d.readInt();if(c.clearCount<0||c.clearCount>c.cleared.length)throw new IOException("Room count");for(int i=0;i<c.clearCount;i++){c.cleared[i]=d.readInt();if(c.cleared[i]<0||c.cleared[i]>16899)throw new IOException("Room id");}
        if(version>=2){c.bag.read(d);c.loot.read(d);c.difficulty=d.readInt();c.runMillis=d.readInt();if(c.difficulty<0||c.difficulty>3||c.runMillis<0||c.runMillis>86400000)throw new IOException("Run bounds");c.escortHp=d.readInt();c.escortX=d.readInt();c.escortY=d.readInt();if(c.escortHp< -1||c.escortHp>10000||c.escortX<0||c.escortX>10000||c.escortY<0||c.escortY>10000)throw new IOException("Escort bounds");c.rewardChoice=d.readInt();if(c.rewardChoice<0||c.rewardChoice>3)throw new IOException("Reward choice");for(int i=0;i<c.storySeen.length;i++)c.storySeen[i]=d.readBoolean();}
        else for(int i=0;i<c.state.length;i++)if(c.state[i]==2)c.rewardItems(i);
        if(version>=3){c.permanentHp=d.readInt();c.permanentMp=d.readInt();if(c.permanentHp<0||c.permanentHp>1000000||c.permanentMp<0||c.permanentMp>1000000)throw new IOException("Permanent stat bounds");}
        if(version>=4){c.skillPoints=d.readInt();c.totalSkillPoints=d.readInt();d.readFully(c.skillRanks);c.entryRoute=d.readInt();c.bossRoute=d.readInt();c.specialRoute=d.readInt();c.gridX=d.readInt();c.gridY=d.readInt();
            if(c.skillPoints<0||c.skillPoints>65535||c.totalSkillPoints<c.skillPoints||c.totalSkillPoints>65535||c.entryRoute<0||c.entryRoute>2||c.bossRoute<0||c.bossRoute>2||c.specialRoute<0||c.specialRoute>2||c.gridX< -1||c.gridX>9||c.gridY< -1||c.gridY>9)throw new IOException("Skill/route bounds");
            for(int i=0;i<75;i++){int rank=c.skillRanks[i]&255;if(i==0||i==6||i==9){if(rank<1||rank>new SkillData(i).maxRank)throw new IOException("Skill rank bounds");}else if(rank!=0)throw new IOException("Unsupported learned skill");}
        }else {for(int i=1;i<c.level;i++)c.skillPoints+=quota(i);c.skillPoints+=c.xp/(c.needed()/quota(c.level)+1);c.totalSkillPoints=c.skillPoints;if(c.state[0]==2)c.starterWeapon();}
        return c;
    }
    public static int checksum(byte[] b,int len){int hash=0x514e46;for(int i=0;i<len;i++)hash=hash*31+(b[i]&255);return hash;}
}
