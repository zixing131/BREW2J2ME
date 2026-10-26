package bio.original;

/** 0x9990 draw geometry and 0x20458 muzzle offset; independent of rasterizer. */
public final class OriginalEffects {
    /** left, top, width, height, source Y, source height. flash=0 is a projectile. */
    public static void sprite(int sw,int sh,int scale,int flash,int cx,int cy,int[] out){
        int fh=flash==0?sh:sh/3,w=(sw*scale)>>8,h=(fh*scale)>>8;
        if(flash>=4){w/=2;h/=2;}
        out[0]=cx-w/2;out[1]=cy-h/2;out[2]=w;out[3]=h;
        out[4]=flash==0||flash>=4?0:(3-flash)*fh;out[5]=fh;
    }
    public static int muzzleX(int x,int angle){int sn=16*OriginalTrig.sin(angle),cs=16*OriginalTrig.cos(angle);return (short)(x-((sn/5)>>16)+((cs+(cs>>>31))>>17));}
    public static int muzzleY(int y,int angle){int sn=16*OriginalTrig.sin(angle),cs=16*OriginalTrig.cos(angle);return (short)(y+((cs/5)>>16)+((sn+(sn>>>31))>>17));}
    public static int tracerColor(int age){return age==1?0xffff:age==2?0xe71c:0xc618;}
    /** Same two triangles as 0x9990, before viewport clipping. */
    public static void tracer(int x1,int y1,int x2,int y2,int w1,int w2,int[] out){
        out[0]=x1;out[1]=y1-w1/2;out[2]=x1;out[3]=y1+w1/2;out[4]=x2;out[5]=y2-w2/2;
        out[6]=x2;out[7]=y2-w2/2;out[8]=x1;out[9]=y1+w1/2;out[10]=x2;out[11]=y2+w2/2;
    }
    public static void hurt(int[] pixels,int offset,int length,int phase){
        if(phase<=0)return;int amount=Math.min(3,phase)*8;
        for(int i=offset;i<offset+length;i++)pixels[i]=OriginalMaterials.fog(pixels[i],0xf800,amount);
    }
}
