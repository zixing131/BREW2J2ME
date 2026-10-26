package dnf;
import java.io.IOException;
/** Native 0x244e8 catalog, 0x797e8 actions, 0x7adf0 effect resource selection. */
public final class SkillTree {
    private static byte[] table;
    public static final String[] JOBS={"鬼剑士","剑魂","鬼泣","狂战士","阿修罗","剑圣","弑魂","狱血魔神","大暗黑天"};
    public static final String[] PAGES={"波动","武器技","血气","鬼神","通用"};
    private static void load()throws IOException{if(table==null){table=Bytes.resource("/skill-catalog.bin");if(table.length!=555)throw new IOException("Skill catalog");}}
    public static int family(int job){return job==0?0:(job-1)%4+1;}
    public static int[] catalog(int job)throws IOException{load();int c=family(job),n=table[6*c]&255;int[] out=new int[n];int k=0;for(int p=0;p<5;p++)for(int i=0;i<(table[6*c+p+1]&255);i++)out[k++]=table[30+90*c+18*p+i]&255;if(k!=n)throw new IOException("Skill catalog count");return out;}
    public static boolean contains(int job,int id)throws IOException{int[] ids=catalog(job);for(int i=0;i<ids.length;i++)if(ids[i]==id)return true;return false;}
    public static int page(int job,int id)throws IOException{load();int c=family(job);for(int p=0;p<5;p++)for(int i=0;i<(table[6*c+p+1]&255);i++)if((table[30+90*c+18*p+i]&255)==id)return p;return -1;}
    public static int action(int id)throws IOException{load();return id<0||id>=75?255:table[480+id]&255;}
    public static int front(int clip){return (clip==38||clip==39||clip==59||clip==61||clip==62||clip==63||clip==64||clip==83||clip==101?32000:30000)+clip;}
    public static int back(int clip){return (clip==61||clip==64?33000:31000)+clip;}
    public static int transfer(int q){return q==425?2:q==428?1:q==431?3:q==434?4:q==441?6:q==448?5:q==455?7:q==462?8:-1;}
    public static int questJob(int q){if(q>=423&&q<=434)return new int[]{2,1,3,4}[(q-423)/3];if(q>=435&&q<=462)return new int[]{2,1,3,4}[(q-435)/7];return -1;}
}
