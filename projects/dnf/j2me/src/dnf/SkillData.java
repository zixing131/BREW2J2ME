package dnf;
import java.io.IOException;
/** 0x2490c: record zero is the unlearned preview, effective ranks start at one. */
public final class SkillData {
    public final int id,rank,maxRank,cost,cooldown,requiredLevel,prerequisite,prerequisiteRank,crystals,school,spCost;
    public final int[] power=new int[3],kind=new int[3];
    public final byte[] runtime=new byte[48];
    public SkillData(int id)throws IOException {this(id,1);}
    public SkillData(int id,int rank)throws IOException {
        this.id=id;this.rank=rank;byte[] b=Assets.read(100+id,"bd");
        if(b.length<46||Story.u16(b,1)!=42||b.length!=4+(b[0]&255)*42)throw new IOException("Skill table");
        maxRank=(b[0]&255)-1;if(rank<0||rank>maxRank)throw new IOException("Skill rank");int p=4+rank*42;
        System.arraycopy(b,p,runtime,0,11);runtime[11]=b[p+41];
        cost=Story.u16(b,p+2);cooldown=Story.u16(b,p+4);requiredLevel=b[p+6]&255;prerequisite=b[p+7]&255;prerequisiteRank=b[p+8]&255;crystals=b[p+9]&255;school=b[p+10]&255;
        for(int i=0;i<3;i++){kind[i]=b[p+11+3*i]&255;power[i]=Story.u16(b,p+12+3*i);runtime[12+4*i]=(byte)kind[i];runtime[14+4*i]=(byte)power[i];runtime[15+4*i]=(byte)(power[i]>>8);System.arraycopy(b,p+20+7*i,runtime,24+8*i,1);System.arraycopy(b,p+21+7*i,runtime,26+8*i,6);}
        byte[] prices=Assets.read(175,"bd");if(prices.length!=901||id<0||id>=75)throw new IOException("Skill prices");spCost=prices[2+12*id]&255;
    }
    /** Original name table 0x1400388, localized by skill identity (includes variants/passives). */
    private static final String[] NAMES={"普通攻击","血之狂暴普攻","刺击","突刺","三段斩","三段斩（连击）","上挑","地裂·波动剑","裂波斩","鬼斩","噬灵鬼斩","月光斩","满月斩","刀魂之卡赞","十字斩","崩山击","波动刻印","冰刃·波动剑","邪光斩","修罗邪光斩","鬼印珠","大鬼印珠","爆炎·波动剑","邪光波动阵","不动明王阵","波动之眼","里·鬼剑术","破极兵刃","拔刀斩","破军升龙击","猛龙断空斩","幻影剑舞","极·鬼剑术（暴风式）","嗜魂之手","暴走","怒气爆发","血之狂暴","嗜魂封魔斩","崩山裂地斩","魔狱血刹","残影之凯贾","侵蚀之普戾蒙","冰霜之萨亚","死亡墓碑","鬼影闪","冥炎之卡洛","冥炎剑","第七鬼神：邪神之怖拉修","远古记忆","不屈意志","短剑精通","太刀精通","巨剑精通","光剑精通","强制上挑","强制裂波斩","强制三段斩","强制破军升龙击","强制波动剑","强制崩山击","强制十字斩","强制嗜魂之手","强制怒气爆发","强制鬼斩","强制月光斩","强制鬼印珠","暴击","武器奥义","血气旺盛","血气唤醒","解除封印","布甲精通","轻甲精通","重甲精通","板甲精通"};
    public static String name(int id){return id>=0&&id<NAMES.length?NAMES[id]:"技能 "+id;}
}
