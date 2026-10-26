package dnf;
import java.io.IOException;
/** Resolution-independent menu model; native-font rendering lives in DnfCanvas. */
public final class GameMenu {
    public static final String[] TABS={"背包装备","城镇商店","林纳斯合成","地下城","主线导航","技能修炼","职业委托"};
    public int tab,selected,difficulty;
    public boolean confirming,selling;
    private int bindSlot;
    public String result="";
    public int[] entries=new int[0];
    private final Battle battle;
    public GameMenu(Battle b){battle=b;refresh();}
    public void changeTab(int delta){tab=(tab+delta+TABS.length)%TABS.length;selected=0;confirming=false;selling=false;result="";refresh();}
    public void refresh(){Campaign c=battle.campaign;Items it=c.bag.items;int[] temp=new int[2400];int n=0;
        if(tab==0)entries=c.bag.entries();
        else if(tab==1){for(int t=0;t<=15;t++)if(t<=8||t==11||t==13||t==14||t==15)for(int id=1;id<it.data[t].length;id++)if(it.price(t,id)>0&&it.level(t,id)<=c.level+5&&(t>10||it.data[t][id][3]==0)&&(t!=11||id<=30)&&(t<13||it.recoverySupported(t,id)))temp[n++]=t*256+id;}
        else if(tab==2){for(int i=0;i<it.recipes.length;i++){int q=Items.word(it.recipes[i],2);if(q<c.state.length&&c.state[q]==2)temp[n++]=i;}}
        else if(tab==3){for(int i=0;i<Adventure.ZONES.length;i++)if(Adventure.unlocked(c,i))temp[n++]=i;}
        else if(tab==5){try{int[] tree=SkillTree.catalog(c.job);for(int i=0;i<tree.length;i++)temp[n++]=tree[i];}catch(IOException e){result="技能目录读取失败";}}
        else if(tab==6){for(int q=423;q<=462;q++)if(c.state[q]==1||c.book.available(q,c))temp[n++]=q;}
        else{for(int i=2;i<QuestBook.MAIN.length;i++){int q=QuestBook.MAIN[i];if(c.state[q]==1||c.book.available(q,c))temp[n++]=q;}}
        if(tab!=0){entries=new int[n];System.arraycopy(temp,0,entries,0,n);}selected=Math.max(0,Math.min(selected,entries.length-1));
    }
    public void move(int delta){if(entries.length>0)selected=(selected+delta+entries.length)%entries.length;confirming=false;selling=false;result="";}
    public String row(int index){Campaign c=battle.campaign;int key=entries[index],t=key/256,id=key%256;Items it=c.bag.items;
        if(tab==0)return (c.bag.equipped(t,id)?"◆ ":"")+it.name(t,id)+" ×"+c.bag.count(t,id);
        if(tab==1)return it.name(t,id)+"  "+it.price(t,id)+"金";
        if(tab==2){byte[] r=it.recipes[key];return it.name(r[4]&255,r[5]&255);}
        if(tab==3)return Adventure.zoneName(Adventure.ZONES[key]);
        if(tab==5)return (c.bindings[0]==key?"[1] ":c.bindings[1]==key?"[3] ":"")+SkillData.name(key);
        return (c.state[key]==0?"可接：":c.book.complete(key,c)?"可交：":"进行：")+QuestBook.title(key);
    }
    public String rankLabel(int index){return (battle.campaign.skillRanks[entries[index]]&255)+"级";}
    public String detail(){if(entries.length==0)return tab==4&&battle.campaign.state[259]==2?"主线已完成。可以继续探索地下城。":"暂无条目，先完成当前主线委托。";Campaign c=battle.campaign;int key=entries[selected],t=key/256,id=key%256;Items it=c.bag.items;
        if(tab==0)return it.detail(t,id)+"\n"+(selling?"出售 1 件，获得 "+Math.max(1,it.price(t,id)/4)+" 金币？":t<=10?"确认装备 / 卸下；# 出售":it.usable(t,id)?"确认使用；# 出售":"# 出售；任务物品不能出售");
        if(tab==1)return it.detail(t,id)+"\n购买 1 件："+it.price(t,id)+" 金币";
        if(tab==2)return it.recipeText(key);
        if(tab==3)return Adventure.zoneName(Adventure.ZONES[key])+"\n难度："+Adventure.difficultyName(difficulty)+"\n按 # 切换难度。确认进入。";
        if(tab==5){try{SkillData current=new SkillData(key,c.skillRanks[key]&255);String text=SkillTree.JOBS[c.job]+" · "+SkillTree.PAGES[SkillTree.page(c.job,key)]+"\n可用技能点："+c.skillPoints+" SP\n"+SkillData.name(key)+" "+current.rank+" / "+current.maxRank+"级\n"+(SkillTree.action(key)==255?"被动技能":current.school==255?"状态 / 辅助技能   MP "+current.cost:(current.school==0?"物理":"魔法")+(current.kind[0]==0?"攻击 "+current.power[0]+"%":"固定伤害 "+current.power[0])+"   MP "+current.cost);
            if(current.rank<current.maxRank){SkillData next=new SkillData(key,current.rank+1);text+="\n下一级需要角色 "+next.requiredLevel+" 级、"+next.spCost+" SP\n确认提升技能等级";}else text+="\n已达最高等级";text+="\n# 绑定按键 "+(bindSlot==0?1:3);return text;}catch(IOException e){return "技能资源读取失败";}}
        int[] who=c.book.contact(key,c.state[key]==1);return c.book.description(key,c)+"\n"+(c.state[key]==0?"接取":"交付")+"地点："+Adventure.townName(who[0])+" · "+QuestBook.npcName(who[2]);
    }
    /** First press opens details; second confirms. No commerce transaction runs in battle. */
    public boolean confirm()throws IOException {if(entries.length==0)return false;if(!confirming){confirming=true;return false;}Campaign c=battle.campaign;int key=entries[selected],t=key/256,id=key%256;
        if(tab!=0&&tab!=4&&(battle.zone!=0&&battle.zone!=20)){result="请返回城镇后使用";return false;}
        if(tab==0){if(selling){if(battle.zone!=0&&battle.zone!=20){result="出售物品需要返回城镇";return false;}result=c.bag.sell(c,t,id);}else if(t<=10)result=c.bag.equip(t,id,c.level);else result=battle.useItem(t,id);}
        else if(tab==1)result=c.bag.buy(c,t,id);
        else if(tab==2)result=c.bag.craft(c,key);
        else if(tab==3){battle.startDungeon(Adventure.ZONES[key],difficulty);return true;}
        else if(tab==5){if(battle.casting()){result="请等待当前技能结束后再修炼";return false;}result=c.train(key);}
        else if(tab==6){int[] who=c.book.contact(key,c.state[key]==1);if(battle.field!=who[0]||battle.stage!=who[1]){result="请前往"+Adventure.townName(who[0])+" · "+QuestBook.npcName(who[2]);return false;}battle.show(QuestBook.title(key)+"\n"+c.book.description(key,c),c.state[key]==1?2:1,key);return true;}
        else{result="请前往对应地点，与NPC交谈";return false;}
        battle.refreshSkills();battle.refreshStats();battle.sceneChanged=true;confirming=false;selling=false;refresh();return false;
    }
    public void alternate(){if(tab==5&&entries.length>0){if(battle.casting()){result="请等待当前技能结束后再绑定";return;}try{result=battle.campaign.bind(entries[selected],bindSlot);battle.refreshSkills();battle.sceneChanged=true;if(battle.campaign.bindings[bindSlot]==entries[selected])bindSlot=1-bindSlot;}catch(IOException e){result="技能读取失败";}return;}if(tab==3){difficulty=(difficulty+1)%4;return;}if(tab==0&&entries.length>0){selling=true;confirming=true;}}
}
