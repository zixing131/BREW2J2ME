package dnf;
/** RGB565 software surface. Native anchors/flips: 0x6adb8; rotations: 0x69e04. */
public final class Surface {
    public final int w,h;
    public final int[] pixels;
    private static final int[] TINT={0,65535,31727,0,65504,64480,63488,63519,2016,30751,2047,31};
    public Surface(int w,int h){this.w=w;this.h=h;pixels=new int[w*h];}
    public void clear(int color){for(int i=0;i<pixels.length;i++)pixels[i]=color;}
    public void rect(int x,int y,int width,int height,int color,int weight){
        int x0=Math.max(0,x),y0=Math.max(0,y),x1=Math.min(w,x+width),y1=Math.min(h,y+height);
        for(int yy=y0;yy<y1;yy++)for(int xx=x0;xx<x1;xx++){int p=yy*w+xx;pixels[p]=weight==0?color:blend(color,pixels[p],weight);}
    }
    public static int blend(int source,int dest,int weight){
        return ((((source&0xf81f)*(32-weight)+(dest&0xf81f)*weight)>>>5)&0xf81f)
            |((((source&0x7e0)*(32-weight)+(dest&0x7e0)*weight)>>>5)&0x7e0);
    }
    public static int color(int src,int dst,int style,int param,int weight) {
        if(style==0)return src;
        if(style==3)return blend(src,dst,weight);
        if(style==4)return param>0&&param<TINT.length?blend(TINT[param],src,weight):src;
        int sr=(src>>11)&31,sg=(src>>5)&63,sb=src&31,dr=(dst>>11)&31,dg=(dst>>5)&63,db=dst&31;
        if(style==1)return ((sr*(31-dr)/31+dr)<<11)|((sg*(63-dg)/63+dg)<<5)|(sb*(31-db)/31+db);
        if(style==2)return ((sr*dr/31)<<11)|((sg*dg/63)<<5)|(sb*db/31);
        return src;
    }
    public void tile(Dat dat,int index,int palette,int ax,int ay,int transform,boolean mirror,int scale,int style,int param,int weight,boolean map) {
        if(index<0||index>=dat.tiles.length||palette<0||palette>=dat.palettes.length)return;
        Dat.Tile t=dat.tiles[index];int tw=t.w,th=t.h,tx=t.x,ty=t.y;
        if(transform==4){tw=t.h;th=t.w;tx=t.y;ty=t.w-t.x-1;}
        else if(transform==5){tw=t.h;th=t.w;tx=t.h-t.y-1;ty=t.x;}
        else if(transform==6){tx=t.w-t.x-1;ty=t.h-t.y-1;}
        boolean flipX=transform==1||transform==2,flipY=transform==2||transform==3;
        int dw=tw*scale,dh=th*scale;tx*=scale;ty*=scale;
        int left=ax-tx,top=ay-ty;
        if(flipX)left=ax-(dw-scale-tx)+(map?15:0);
        if(flipY)top=ay-(dh-scale-ty)+(map?15:0);
        if(mirror){flipX=!flipX;left=flipX?ax-(dw-scale-tx):ax-tx;}
        int x0=left<0?0:left,y0=top<0?0:top,x1=left+dw>w?w:left+dw,y1=top+dh>h?h:top+dh;
        int[] pal=dat.palettes[palette];
        for(int y=y0;y<y1;y++){
            int ry=(y-top)/scale;if(flipY)ry=th-ry-1;
            for(int x=x0;x<x1;x++){
                int rx=(x-left)/scale;if(flipX)rx=tw-rx-1;
                int sx=rx,sy=ry;
                if(transform==4){sx=t.w-ry-1;sy=rx;}
                else if(transform==5){sx=ry;sy=t.h-rx-1;}
                else if(transform==6){sx=t.w-rx-1;sy=t.h-ry-1;}
                int c=pal[t.pixels[sy*t.w+sx]&255];
                if(c!=Dat.KEY){int i=y*w+x;pixels[i]=color(c,pixels[i],style,param,weight);}
            }
        }
    }
    public static int rgb(int c){int r=(c>>11)&31,g=(c>>5)&63,b=c&31;return ((r<<3|r>>2)<<16)|((g<<2|g>>4)<<8)|(b<<3|b>>2);}
}
