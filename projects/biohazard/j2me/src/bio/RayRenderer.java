package bio;

/** Platform-independent Q10 raycaster; 176x160 framebuffer, two-pixel wall columns. */
public final class RayRenderer {
    public static final int W=176,H=160;
    public final int[] pixels=new int[W*H];
    private final int[] depth=new int[W];
    private final int[][] walls;
    private final int[] enemy, weapon;
    private final int ew,eh,ww,wh;
    private final int[] order=new int[4], distances=new int[4];
    public RayRenderer(int[][] walls,int[] enemy,int ew,int eh,int[] weapon,int ww,int wh){
        this.walls=walls;this.enemy=enemy;this.ew=ew;this.eh=eh;this.weapon=weapon;this.ww=ww;this.wh=wh;
    }
    public void render(GameState s){
        for(int y=0;y<H;y++){
            int c=y<H/2 ? 0x111922+(y/12)*0x010101 : 0x222522+((H-y)/8)*0x010101;
            for(int x=0;x<W;x++)pixels[y*W+x]=c;
        }
        int fx=GameState.cos(s.angle),fy=GameState.sin(s.angle);
        for(int column=0;column<W;column+=2){
            int camera=(column*2-W)*676/W;
            int rx=fx-fy*camera/1024,ry=fy+fx*camera/1024;
            int cx=s.x>>10,cy=s.y>>10,sx=rx<0?-1:1,sy=ry<0?-1:1;
            int deltaX=rx==0?1<<26:1048576/GameState.abs(rx);
            int deltaY=ry==0?1<<26:1048576/GameState.abs(ry);
            int tx=rx==0?1<<26:((rx<0?s.x-cx*1024:(cx+1)*1024-s.x)*1024)/GameState.abs(rx);
            int ty=ry==0?1<<26:((ry<0?s.y-cy*1024:(cy+1)*1024-s.y)*1024)/GameState.abs(ry);
            int distance=1024,side=0;
            for(int step=0;step<64;step++){
                if(tx<ty){distance=tx;tx+=deltaX;cx+=sx;side=0;}
                else{distance=ty;ty+=deltaY;cy+=sy;side=1;}
                if(GameState.wall(cx,cy))break;
            }
            distance=Math.max(80,distance);depth[column]=depth[column+1]=distance;
            int size=H*1024/distance,top=(H-size)/2;
            int hit=side==0?s.y+ry*distance/1024:s.x+rx*distance/1024;
            int texX=((hit&1023)*32)>>10;
            int[] tex=walls[(GameState.abs(cx*3+cy)+(side==0?0:1))%walls.length];
            int shade=Math.max(65,255-distance/64-(side==1?35:0));
            for(int y=Math.max(0,top);y<Math.min(H,top+size);y++){
                int texY=(y-top)*32/size,c=tex[texY*32+texX];
                c=((((c>>16)&255)*shade/255)<<16)|((((c>>8)&255)*shade/255)<<8)|((c&255)*shade/255);
                pixels[y*W+column]=pixels[y*W+column+1]=c;
            }
        }
        for(int i=0;i<4;i++){
            int dx=s.enemyX[i]-s.x,dy=s.enemyY[i]-s.y;order[i]=i;distances[i]=(dx*fx+dy*fy)/1024;
        }
        for(int i=0;i<4;i++)for(int j=i+1;j<4;j++)if(distances[order[i]]<distances[order[j]]){
            int temp=order[i];order[i]=order[j];order[j]=temp;
        }
        for(int k=0;k<4;k++){
            int i=order[k],distance=distances[i];if(s.enemyHealth[i]<=0 || distance<160)continue;
            int dx=s.enemyX[i]-s.x,dy=s.enemyY[i]-s.y;
            int side=(-dx*fy+dy*fx)/1024;
            int center=W/2+(int)((long)side*W*1024/((long)distance*1352));
            int height=Math.min(650,H*900/distance),width=height*ew/eh;
            int top=H/2+(H*1024/distance)/2-height;
            sprite(enemy,ew,eh,center-width/2,top,width,height,distance);
        }
        sprite(weapon,ww,wh,W/2-ww/2,H-wh,ww,wh,0);
        if(s.flash>0){for(int y=H-55;y<H-47;y++)for(int x=W/2-3;x<W/2+3;x++)pixels[y*W+x]=0xffe7a1;}
        for(int i=-3;i<=3;i++){pixels[(H/2)*W+W/2+i]=0xdde9da;pixels[(H/2+i)*W+W/2]=0xdde9da;}
    }
    private void sprite(int[] src,int sw,int sh,int left,int top,int width,int height,int distance){
        if(width<=0 || height<=0)return;
        for(int x=Math.max(0,left);x<Math.min(W,left+width);x++){
            if(distance>0 && distance>=depth[x])continue;
            int u=(x-left)*sw/width;
            for(int y=Math.max(0,top);y<Math.min(H,top+height);y++){
                int c=src[((y-top)*sh/height)*sw+u];
                if((c>>>24)!=0)pixels[y*W+x]=c&0xffffff;
            }
        }
    }
}
