package bio.original;
import java.io.IOException;

/** Original player state and the 8 + 788 + 60 byte BREW save layout. */
public final class OriginalPlayer {
    public int level=1,x=80,y=848,angle,hp=50,maxHp=50,money,reserve,medicines,count,current=-1,premiumSlot=-1;
    public boolean invisible,infiniteAmmo;
    public int invisibilityTicks;
    public final byte[] variables=new byte[500],slots=new byte[256],global=new byte[60],header=new byte[8],tutorials=new byte[3];
    public final OriginalData data;
    public OriginalPlayer(OriginalData data){this.data=data;header[0]=1;}
    public int addWeapon(int id){
        int index=data.weaponIndex(id);if(index<0)return -1;
        for(int i=0;i<count;i++)if((slots[8*i]&255)==id){current=i;return i;}
        if(count>=32)return -1;int p=count*8;for(int i=0;i<8;i++)slots[p+i]=0;
        slots[p]=(byte)id;slots[p+1]=(byte)index;current=count++;return current;
    }
    public void removeWeapon(int id){
        for(int i=0;i<count;i++)if((slots[i*8]&255)==id){
            System.arraycopy(slots,(i+1)*8,slots,i*8,(count-i-1)*8);count--;
            if(premiumSlot>i)premiumSlot--;if(current==i)current=0;else if(current>i)current--;if(count==0)current=-1;return;
        }
    }
    public boolean medicine(){if(medicines<=0)return false;medicines--;hp=Math.min(maxHp,hp+40*maxHp/100);return true;}
    public boolean useInvisibility(){int n=Binary.u16(global,44);if(n<=0||invisible)return false;put16(global,44,n-1);invisible=true;invisibilityTicks=0;return true;}
    public static final int[] PRICES={120,200,500,100,150,650},QUANTITIES={1,2,6,50,100,500};
    public boolean buySupply(int item){
        if(item<0||item>=6||money<PRICES[item])return false;money-=PRICES[item];
        if(item<3)medicines=Math.min(999,medicines+QUANTITIES[item]);else reserve=Math.min(99999,reserve+QUANTITIES[item]);return true;
    }
    public boolean upgrade(int slot,int attribute){
        if(slot<0||slot>=count||attribute<0||attribute>=5)return false;
        int at=slot*8+2+attribute,old=slots[at]&255,index=slots[slot*8+1]&255;
        if(old>=data.maxUpgrade(index,attribute))return false;
        int cost=data.upgradeCost(this,slot,attribute,old+1);if(cost<0||money<cost)return false;
        money-=cost;slots[at]=(byte)(old+1);return true;
    }
    /** Offline replacement for the retired billing callback, applies original 0x1293C effects. */
    public boolean grantPremium(int item){
        if(item<0||item>=data.shopCount)return false;int p=2+20*item,flags=Binary.u16(data.weapons,p+14);
        int limit=data.weapons[p+6]&255;if(limit>0&&(global[4+item]&255)>=limit)return false;
        if((flags&256)!=0&&(data.weaponIndex(data.weapons[p+16]&255)<0||(premiumSlot<0&&count>=32)))return false;
        int variable=data.weapons[p+7]&255;variables[variable]++;
        if((flags&2)!=0){infiniteAmmo=true;global[47]=1;}
        if((flags&4)!=0)put16(global,44,Binary.u16(global,44)+1);
        if((flags&32)!=0){maxHp*=2;hp=maxHp;put32(global,0,maxHp);}
        if((flags&16)!=0)global[46]=1;
        if((flags&64)!=0)money+=5000*(data.weapons[p+10]&255);
        if((flags&8)!=0){hp=maxHp;invisible=true;invisibilityTicks=50;}
        if((flags&1024)!=0)reserve+=10*(data.weapons[p+13]&255);
        if((flags&256)!=0){
            int id=data.weapons[p+16]&255,index=data.weaponIndex(id);if(index<0)return false;
            if(premiumSlot<0){if(count>=32)return false;premiumSlot=count++;}
            int at=premiumSlot*8;slots[at]=(byte)id;slots[at+1]=(byte)index;
            for(int i=0;i<5;i++)slots[at+2+i]=(byte)data.maxUpgrade(index,i);slots[at+7]=0;
            global[56]=1;global[57]++;variables[82]=global[57];System.arraycopy(slots,at,global,48,8);current=premiumSlot;
        }
        global[4+item]++;global[24+item]=0;return true;
    }
    public byte[] brewSave(){
        byte[] b=new byte[856];System.arraycopy(header,0,b,0,8);int p=8;
        put16(b,p,level);put16(b,p+2,x);put16(b,p+4,y);put16(b,p+6,angle);
        put32(b,p+8,money);put32(b,p+12,hp);put32(b,p+16,reserve);System.arraycopy(variables,0,b,p+20,500);
        put16(b,p+520,medicines);put16(b,p+522,current);put16(b,p+524,count);put16(b,p+526,premiumSlot);
        System.arraycopy(slots,0,b,p+528,256);b[p+784]=1;System.arraycopy(tutorials,0,b,p+785,3);
        System.arraycopy(global,0,b,796,60);return b;
    }
    public static OriginalPlayer fromBrew(OriginalData data,byte[] b)throws IOException{
        if(b.length!=856)throw new IOException("BREW save must be 856 bytes");OriginalPlayer s=new OriginalPlayer(data);int p=8;
        System.arraycopy(b,0,s.header,0,8);s.level=Binary.u16(b,p);s.x=Binary.s16(b,p+2);s.y=Binary.s16(b,p+4);s.angle=Binary.s16(b,p+6);
        s.money=Binary.i32(b,p+8);s.hp=Binary.i32(b,p+12);s.reserve=Binary.i32(b,p+16);
        System.arraycopy(b,p+20,s.variables,0,500);s.medicines=Binary.u16(b,p+520);s.current=Binary.s16(b,p+522);s.count=Binary.u16(b,p+524);s.premiumSlot=Binary.s16(b,p+526);
        System.arraycopy(b,p+528,s.slots,0,256);System.arraycopy(b,p+785,s.tutorials,0,3);System.arraycopy(b,796,s.global,0,60);
        s.maxHp=Binary.i32(s.global,0);if(s.maxHp<=0)s.maxHp=50;s.infiniteAmmo=s.global[47]!=0;
        s.validate();return s;
    }
    public void validate()throws IOException{
        if(level<1||level>16||x<16||y<16||angle<0||angle>=360||hp<0||hp>1000000||maxHp<1||maxHp>1000000||money<0||reserve<0||medicines>999||count<0||count>32||current< -1||current>=count||premiumSlot< -1||premiumSlot>=count)throw new IOException("Invalid player save fields");
        for(int i=0;i<count;i++)if((slots[i*8+1]&255)>=data.weaponCount||data.w(slots[i*8+1]&255,48)!=(slots[i*8]&255))throw new IOException("Invalid weapon slot");
    }
    public static void put16(byte[] b,int p,int v){b[p]=(byte)v;b[p+1]=(byte)(v>>8);}
    public static void put32(byte[] b,int p,int v){put16(b,p,v);put16(b,p+2,v>>16);}
}
