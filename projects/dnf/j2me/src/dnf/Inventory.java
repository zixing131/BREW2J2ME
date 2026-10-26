package dnf;
import java.io.*;
/** Stable original type/index identity. Equipment stays in the bag while equipped. */
public final class Inventory {
    public final Items items;
    private final int[][] quantities=new int[20][];
    public final int[] equipment=new int[8];
    public Inventory()throws IOException {items=Items.get();for(int t=0;t<20;t++)quantities[t]=new int[items.data[t].length];for(int i=0;i<equipment.length;i++)equipment[i]=-1;}
    public int count(int t,int id){return items.valid(t,id)?quantities[t][id]:0;}
    public boolean add(int t,int id,int amount){if(!items.valid(t,id)||amount<0||amount>9999-count(t,id))return false;quantities[t][id]+=amount;return true;}
    public boolean remove(int t,int id,int amount){if(!items.valid(t,id)||amount<0||count(t,id)<amount)return false;quantities[t][id]-=amount;if(count(t,id)==0){int s=items.slot(t);if(s>=0&&equipment[s]==t*256+id)equipment[s]=-1;}return true;}
    public boolean equipped(int t,int id){int slot=items.slot(t);return slot>=0&&equipment[slot]==t*256+id;}
    public String equip(int t,int id,int level){if(count(t,id)==0||items.slot(t)<0)return "无法装备此物品";if(items.level(t,id)>level)return "等级不足，需要 "+items.level(t,id)+" 级";int s=items.slot(t);equipment[s]=equipped(t,id)?-1:t*256+id;return equipment[s]<0?"已卸下":"已装备 "+items.name(t,id);}
    public int attack(){int key=equipment[0];return key<0?0:items.stat(key/256,key%256,0);}
    public int weaponStat(boolean magic){int key=equipment[0];return key<0?0:items.stat(key/256,key%256,magic?1:0);}
    public int weaponLevel(){int key=equipment[0];return key<0?0:items.level(key/256,key%256);}
    public int defence(){int sum=0;for(int i=1;i<equipment.length;i++){int k=equipment[i];if(k>=0)sum+=items.stat(k/256,k%256,0);}return sum;}
    public int bonus(int effect){int sum=0;for(int i=0;i<equipment.length;i++){int k=equipment[i];if(k>=0){byte[] b=items.data[k/256][k%256];for(int j=0;j<3;j++){int p=15+j*7;if((b[p]&255)==effect)sum+=Items.word(b,p+1);}}}return sum;}
    public int[] entries(){int n=0;for(int t=0;t<20;t++)for(int i=1;i<quantities[t].length;i++)if(quantities[t][i]>0)n++;int[] out=new int[n];n=0;for(int t=0;t<20;t++)for(int i=1;i<quantities[t].length;i++)if(quantities[t][i]>0)out[n++]=t*256+i;return out;}
    public String buy(Campaign c,int t,int id){int price=items.price(t,id);if(price<=0)return "此物品不出售";if(c.gold<price)return "金币不足";if(!add(t,id,1))return "物品数量已满";c.gold-=price;return "购入 "+items.name(t,id);}
    public String sell(Campaign c,int t,int id){int price=Math.max(1,items.price(t,id)/4);if(t==19||items.price(t,id)==0)return "任务物品不可出售";if(equipped(t,id))return "请先卸下装备";if(count(t,id)<1)return "物品不足";if(c.gold>2000000000-price)return "金币已达上限";remove(t,id,1);c.gold+=price;return "出售获得 "+price+" 金币";}
    public String craft(Campaign c,int recipe){if(recipe<0||recipe>=items.recipes.length)return "配方不存在";byte[] b=items.recipes[recipe];int q=Items.word(b,2);if(q>=c.state.length||c.state[q]!=2)return "尚未完成解锁委托";int cost=items.recipeCost(recipe),t=b[4]&255,id=b[5]&255,n=b[6]&255;
        if(cost<0||c.gold<cost)return "金币不足";if(!items.valid(t,id)||count(t,id)>9999-n)return "成品数量已满";
        int[] needed=new int[quantities[11].length];for(int i=0;i<5;i++){int m=b[11+2*i]&255;if(m!=0){if(m>=needed.length)return "配方材料无效";needed[m]+=b[12+2*i]&255;}}
        for(int i=1;i<needed.length;i++)if(count(11,i)<needed[i])return "缺少 "+items.name(11,i)+" ×"+(needed[i]-count(11,i));
        for(int i=1;i<needed.length;i++)if(needed[i]>0)remove(11,i,needed[i]);c.gold-=cost;add(t,id,n);return "合成成功："+items.name(t,id);
    }
    public void write(DataOutputStream d)throws IOException {int[] a=entries();d.writeInt(a.length);for(int i=0;i<a.length;i++){d.writeShort(a[i]);d.writeShort(count(a[i]/256,a[i]%256));}for(int i=0;i<equipment.length;i++)d.writeInt(equipment[i]);}
    public void read(DataInputStream d)throws IOException {int n=d.readInt();if(n<0||n>2000)throw new IOException("Inventory count");for(int i=0;i<n;i++){int k=d.readUnsignedShort(),a=d.readUnsignedShort();if(a<1||count(k/256,k%256)>0||!add(k/256,k%256,a))throw new IOException("Inventory entry");}for(int i=0;i<equipment.length;i++){int k=d.readInt();if(k!=-1&&(k<0||count(k/256,k%256)==0||items.slot(k/256)!=i))throw new IOException("Equipment slot");equipment[i]=k;}}
}
