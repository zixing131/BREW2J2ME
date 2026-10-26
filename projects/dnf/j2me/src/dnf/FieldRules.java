package dnf;
/** Original ARM field rules; independent execution fixtures in field-*-arm.csv. */
public final class FieldRules {
    // binary.mod 0x1402042: eight groups of ten dungeon ids.
    private static final int[] REGIONS={0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,1,2,3,4,5,9,6,8,7,41,21,22,23,24,25,26,27,42,0,0,28,29,30,31,32,33,34,43,0,0,12,45,13,14,17,15,16,19,18,44,35,0,0,0,0,0,0,0,0,0,36,0,0,0,0,0,0,0,0,0};
    public static int region(int zone){if(zone==0)return 0;for(int i=10;i<REGIONS.length;i++)if(REGIONS[i]==zone)return i/10;return 0;}
    /** 0x39724; room 0=ordinary, 1=boss, 2=special. */
    public static int music(int field,int stage,int group,int room){
        if(stage==1){if(field>=0&&field<=3)return 13;if(field==4||field==5)return 14;if(field==79)return 15;}
        if(group<2||group>7)return -1;
        return room==2?27:room==1?(group==7?26:2*group+15):2*group+14;
    }
    /** Unpromoted growth: table 0x1402fa4, calculations 0x79e14/0x79c88. */
    public static int maxHp(int level,int vitality,int flat,int permanent){return 31*level+8*vitality+flat+permanent;}
    public static int maxMp(int level,int spirit,int flat,int permanent){return 16*level+20+3*spirit+flat+permanent;}
    /** 0x7cc4c: coin can also injure a character whose HP is full. */
    public static int coin(int hp,int max,int roll,int chance,int heal,int harm,boolean immune){
        if(roll<chance)return Math.min(max,hp+(int)((long)max*heal/100));
        return immune?hp:Math.max(0,hp-(int)((long)max*harm/100));
    }
}
