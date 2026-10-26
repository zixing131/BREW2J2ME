package bio.original;
import java.io.IOException;

/** 0x16860 weapon/shop tables and 0x189E8 scene tables; offsets are serialized bytes. */
public final class OriginalData {
    public final byte[] weapons,scene;
    public final int shopCount,weaponCount,weaponBase,spriteBase,boxBase,actorBase,effectBase,wallBase;
    public final int spriteCount,boxCount,actorCount,effectCount;
    public OriginalData(byte[] weapons,byte[] scene)throws IOException{
        this.weapons=weapons;this.scene=scene;shopCount=Binary.u16(weapons,0);weaponBase=4+shopCount*20;
        weaponCount=Binary.u16(weapons,weaponBase-2);
        if(weaponBase+weaponCount*72!=weapons.length)throw new IOException("Weapon table size");
        spriteCount=Binary.i32(scene,4);spriteBase=8;int p=spriteBase+36*spriteCount;
        boxCount=Binary.i32(scene,p);boxBase=p+4;p=boxBase+32*boxCount;
        actorCount=Binary.i32(scene,p);actorBase=p+4;p=actorBase+84*actorCount;
        effectCount=Binary.i32(scene,p);effectBase=p+4;p=effectBase+116*effectCount;
        wallBase=p+8;if(wallBase+16*Binary.i32(scene,p+4)!=scene.length)throw new IOException("Scene table size");
    }
    public int weaponIndex(int id){for(int i=0;i<weaponCount;i++)if(w(i,48)==id)return i;return -1;}
    public int w(int index,int offset){return Binary.u16(weapons,weaponBase+index*72+offset);}
    public int a(int type,int offset){return Binary.u16(scene,actorBase+84*type+offset);}
    public int ab(int type,int offset){return scene[actorBase+84*type+offset]&255;}
    public int ai(int type,int offset){return Binary.i32(scene,actorBase+84*type+offset);}
    public int e(int index,int offset){return scene[effectBase+116*index+offset]&255;}
    public int effectImage(int index){return Binary.i32(scene,effectBase+116*index);}
    /** Exact 18-byte result of 0x12F30 represented as six unsigned shorts + six bytes. */
    public void resolve(OriginalPlayer p,int slot,int[] out){
        int s=slot*8,index=p.slots[s+1]&255;
        int[] fields={4,12,20,28,36,44}, upgrades={2,4,3,3,5,6};
        for(int i=0;i<6;i++)out[i]=(w(index,54+2*i)+w(index,fields[i])*(p.slots[s+upgrades[i]]&255))&65535;
        out[6]=weapons[weaponBase+72*index+66]&255;out[7]=weapons[weaponBase+72*index+67]&255;
        out[8]=p.slots[s+7]&255;out[9]=weapons[weaponBase+72*index+68]&255;
        out[10]=weapons[weaponBase+72*index+69]&255;out[11]=w(index,70)&255;
    }
    public int maxUpgrade(int index,int attribute){int[] offsets={6,22,14,38,46};return w(index,offsets[attribute]);}
    public static int cumulativeCost(int base,int growth,int level){int sum=0;for(int i=0;i<level;i++){base=base*(100+growth)/100;sum+=base;}return sum;}
    public int upgradeCost(OriginalPlayer p,int slot,int attribute,int target){
        int[] offsets={0,16,8,32,40};int index=p.slots[slot*8+1]&255,o=offsets[attribute],old=p.slots[slot*8+2+attribute]&255;
        return cumulativeCost(w(index,o),w(index,o+2),target)-cumulativeCost(w(index,o),w(index,o+2),old);
    }
}
