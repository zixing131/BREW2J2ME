package dnf;
import java.io.*;
/** Native weighted monster/region drops (0x82b10/0x829d4) and quest drops (0x851b8). */
public final class Loot {
    public int seed=0x514e46;
    public final int[][] ground=new int[128][];
    public String notice="";
    private final Items items;
    private final byte[] regions;
    public Loot()throws IOException {items=Items.get();regions=Assets.read(10,"bd");}
    public int random(int n){seed=seed*1103515245+12345;return ((seed>>>1)&0x7fffffff)%n;}
    public void clear(){for(int i=0;i<ground.length;i++)ground[i]=null;}
    private void drop(Campaign c,int field,int stage,int x,int y,int t,int id,int amount){if(amount<=0||t>=0&&!items.valid(t,id))return;for(int i=0;i<ground.length;i++)if(ground[i]==null){ground[i]=new int[]{field,stage,x,y,t,id,amount};return;}collect(c,new int[]{field,stage,x,y,t,id,amount});}
    private void range(Campaign c,int field,int stage,int x,int y,int drop){if(drop<=0||drop>=Items.word(items.drops,0))return;int p=4+4*drop,t=items.drops[p]&255,t1=items.drops[p+1]&255,a=items.drops[p+2]&255,b=items.drops[p+3]&255;if(t1<t||b<a)return;drop(c,field,stage,x,y,t+random(t1-t+1),a+random(b-a+1),1);}
    private int weighted(byte[] b,int offset,int count,int bonus){int sum=0;for(int i=0;i<count;i++)sum+=Items.word(b,offset+4*i);if(sum==0||random(10000)>=sum+bonus)return 0;int roll=random(sum);for(int i=0;i<count;i++){roll-=Items.word(b,offset+4*i);if(roll<0)return Items.word(b,offset+4*i+2);}return 0;}
    public void defeated(Campaign c,MonsterData m,int field,int stage,int x,int y){
        int bonus=new int[]{0,30,50,80}[c.difficulty];equipment(c,m,field,stage,x,y,bonus);range(c,field,stage,x-8,y,weighted(m.record,133,3,bonus));
        int p=4+c.dungeon*40;if(p+40<=regions.length)range(c,field,stage,x+8,y,weighted(regions,p,10,bonus));
        int category=m.record[29]&255;if(category<=2&&random(10000)<2000){int base=m.level*new int[]{3,7,12}[category];drop(c,field,stage,x,y+8,-1,0,base+base*new int[]{0,500,1000,4000}[c.difficulty]/10000+new int[]{0,1,2,4}[c.difficulty]);}
        byte[] b=items.questDrops;for(int i=0;i<Items.word(b,0);i++){int o=2+22*i,q=Items.word(b,o),diff=b[o+2]&255;if(q>=c.state.length||c.state[q]!=1||diff!=6&&c.difficulty<diff||m.id<Items.word(b,o+3)+1||m.id>Items.word(b,o+5)+1)continue;
            for(int j=0;j<5;j++){int a=o+7+3*j,id=b[a]&255,needed=0;for(int k=0;k<3;k++){int r=180+6*k;if(c.book.value(q,r)==1&&c.book.word(q,r+1)==19&&c.book.word(q,r+3)==id)needed=c.book.value(q,r+5);}
                if(id!=0&&c.bag.count(19,id)<needed&&random(100)+1<=(b[a+1]&255)){c.bag.add(19,id,1);notice="取得 "+items.name(19,id);}}
        }
    }
    /** 0x85708 and 0x35f0c, including the original unsigned-byte rarity roll. */
    private void equipment(Campaign c,MonsterData m,int field,int stage,int x,int y,int bonus){if(random(10000)>=150+bonus)return;int category=random(15)/5,roll=random(10000)&255,sum=0,rarity=-1;
        int[] weights={62,184,232,40,10};for(int i=0;i<5;i++){sum=(sum+weights[i])&255;if(sum>=roll){rarity=i;break;}}if(rarity<0)return;
        int[] startTypes={0,4,7},endTypes={3,6,8};int[][] bands={{0,13,29,53,77,92},{0,42,84,108,132,156},{0,11,23,39,55,61}};
        int t=startTypes[category]+random(endTypes[category]-startTypes[category]+1),start=bands[category][rarity]+1,end=bands[category][rarity+1],n=0;int[] choices=new int[50];
        for(int id=start;id<=end&&id<items.data[t].length;id++)if(items.level(t,id)>=Math.max(0,m.level-5)&&items.level(t,id)<=Math.min(60,m.level+5)&&items.data[t][id][3]==0)choices[n++]=id;
        if(n>0)drop(c,field,stage,x,y-10,t,choices[random(n)],1);
    }
    private boolean collect(Campaign c,int[] a){if(a[4]<0){c.gold=(int)Math.min(999999999L,(long)c.gold+a[6]);notice="金币 +"+a[6];return true;}if(c.bag.add(a[4],a[5],a[6])){notice="拾取 "+items.name(a[4],a[5])+" ×"+a[6];return true;}return false;}
    public boolean pickup(Campaign c,int field,int stage,int x,int y){boolean changed=false;for(int i=0;i<ground.length;i++){int[] a=ground[i];if(a!=null&&a[0]==field&&a[1]==stage&&Math.abs(a[2]-x)<=22&&Math.abs(a[3]-y)<=18&&collect(c,a)){ground[i]=null;changed=true;}}return changed;}
    public void write(DataOutputStream d)throws IOException {d.writeInt(seed);int n=0;for(int i=0;i<ground.length;i++)if(ground[i]!=null)n++;d.writeInt(n);for(int i=0;i<ground.length;i++)if(ground[i]!=null)for(int j=0;j<7;j++)d.writeInt(ground[i][j]);}
    public void read(DataInputStream d)throws IOException {seed=d.readInt();int n=d.readInt();if(n<0||n>ground.length)throw new IOException("Loot count");for(int i=0;i<n;i++){int[] a=new int[7];for(int j=0;j<7;j++)a[j]=d.readInt();if(a[0]<0||a[0]>168||a[1]<1||a[1]>99||a[2]<0||a[2]>10000||a[3]<0||a[3]>10000||a[4]<-1||a[4]>=0&&!items.valid(a[4],a[5])||a[6]<1||a[6]>999999999)throw new IOException("Loot entry");ground[i]=a;}}
}
