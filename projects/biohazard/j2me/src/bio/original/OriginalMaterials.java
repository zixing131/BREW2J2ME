package bio.original;

/** 0x235F4: RGB565 palette composition, twelve blend/shadow masks. */
public final class OriginalMaterials {
    public static int pack(int rgb){return ((rgb>>8)&0xf800)|((rgb>>5)&0x7e0)|((rgb>>3)&31);}
    public static int rgb(int value){return ((value>>11)*255/31)<<16|(((value>>5)&63)*255/63)<<8|(value&31)*255/31;}
    public static int mix(int a,int b,int weight){
        int other=32-weight;
        return ((((a>>11)*weight+(b>>11)*other)>>5)<<11)|(((((a>>5)&63)*weight+((b>>5)&63)*other)>>5)<<5)|(((a&31)*weight+(b&31)*other)>>5);
    }
    public static int mask(int id,int x,int y){
        if(id==1)return 31-x;if(id==2)return 31-y;if(id==3)return x;if(id==4)return y;
        boolean inverse=id>=9;if(inverse)id-=4;
        if(id==6||id==8)y=31-y;if(id==7||id==8)x=31-x;
        int value=Math.max(0,32-OriginalMath.sqrt(x*x+y*y));return inverse?32-value:value;
    }
    public static int compose(int packed,int x,int y,int[] atlas){
        int at=y*32+x,base=pack(atlas[(packed&255)*1024+at]),blend=(packed>>>16)&255,shadow=packed>>>24;
        if(blend!=0)base=mix(base,pack(atlas[((packed>>>8)&255)*1024+at]),mask(blend,x,y));
        if(shadow!=0)base=shadow<13?mix(base,0,32-(mask(shadow,x,y)>>1)):(base>>1)&0x7bef;
        return base;
    }
    public static int fogAmount(OriginalLevel l,double distance,int zoom){
        int start=(l.header[19]&255)*zoom,density=(l.header[18]&255)/(zoom==2?2:1);
        int d=(int)(distance*4)-4*start;if(d<=0)return 0;
        return Math.min(32,(density*32*d/100/1600)&255);
    }
    public static int fog(int rgb,int color,int amount){return amount==0?rgb:rgb(mix(pack(rgb),color,32-amount));}
}
