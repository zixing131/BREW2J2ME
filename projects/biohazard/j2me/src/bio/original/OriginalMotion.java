package bio.original;

/** Semantic translation of ARM 0x1BAB8, including occupancy updates and corner sliding. */
public final class OriginalMotion {
    private static boolean blocked(byte[] grid,int stride,int x,int y,int mask){return (grid[y*stride+x]&mask)!=0;}
    private static void mark(byte[] grid,int stride,int x,int y,int bit,boolean set){
        for(int j=0;j<2;j++)for(int i=0;i<2;i++){
            int p=(y+j)*stride+x+i;grid[p]=(byte)(set?(grid[p]|bit):(grid[p]&~bit));
        }
    }
    public static void move(int w,int h,byte[] grid,int angle,int speed,int[] xy,boolean entity,boolean ghost){
        int stride=w*2,mask=!entity&&ghost?1:13,bit=entity?4:8;
        int ox=(xy[0]-8)/16,oy=(xy[1]-8)/16;
        mark(grid,stride,ox,oy,bit,false);
        int nx=xy[0]+((speed*OriginalTrig.cos(angle))>>16);
        int ny=xy[1]+((speed*OriginalTrig.sin(angle))>>16);
        boolean negX=xy[0]>nx,negY=xy[1]>ny;
        nx=Math.max(16,Math.min(w*32-17,nx));ny=Math.max(16,Math.min(h*32-17,ny));
        int tx=(nx-8)/16,ty=(ny-8)/16;
        boolean tl=blocked(grid,stride,tx,ty,mask),tr=blocked(grid,stride,tx+1,ty,mask);
        boolean bl=blocked(grid,stride,tx,ty+1,mask),br=blocked(grid,stride,tx+1,ty+1,mask);
        if(tx==ox || ty==oy){
            if(ty==oy){
                if(negY){
                    if(ty<=0 || blocked(grid,stride,ox,ty-1,mask)||blocked(grid,stride,ox+1,ty-1,mask))ny=Math.max(ny,16*ty+16);
                }else{
                    if(ty>=h*2-2 || blocked(grid,stride,ox,ty+2,mask)||blocked(grid,stride,ox+1,ty+2,mask))ny=Math.min(ny,16*ty+16);
                }
            }
            if(tx==ox){
                if(negX){
                    if(tx<=0 || blocked(grid,stride,tx-1,oy,mask)||blocked(grid,stride,tx-1,oy+1,mask))nx=Math.max(nx,16*tx+16);
                }else{
                    if(tx>=w*2-2 || blocked(grid,stride,tx+2,oy,mask)||blocked(grid,stride,tx+2,oy+1,mask))nx=Math.min(nx,16*tx+16);
                }
            }
            if((ty<oy&&(tl||tr)) || (ty>oy&&(bl||br)))ny=16*oy+16;
            if((tx<ox&&(tl||bl)) || (tx>ox&&(tr||br)))nx=16*ox+16;
        }else{
            boolean stopX=false,stopY=false;
            if(tx>ox&&ty>oy)stopX=tr || (br&&blocked(grid,stride,tx+1,ty-1,mask));
            if(tx>ox&&ty<oy)stopX=br || (tr&&blocked(grid,stride,tx+1,ty+2,mask));
            if(tx<ox&&ty>oy)stopX=tl || (bl&&blocked(grid,stride,tx,ty-1,mask));
            if(tx<ox&&ty<oy)stopX=bl || (tl&&blocked(grid,stride,tx,ty+2,mask));
            if(stopX)nx=16*ox+16;
            if(tx>ox&&ty>oy)stopY=bl || (br&&blocked(grid,stride,tx-1,ty+1,mask));
            if(tx>ox&&ty<oy)stopY=tl || (tr&&blocked(grid,stride,tx-1,ty,mask));
            if(tx<ox&&ty>oy)stopY=br || (bl&&blocked(grid,stride,tx+2,ty+1,mask));
            if(tx<ox&&ty<oy)stopY=tr || (tl&&blocked(grid,stride,tx+2,ty,mask));
            if(stopY)ny=16*oy+16;
            else if(!stopX && ((tx>ox&&ty>oy&&br)||(tx>ox&&ty<oy&&tr)||(tx<ox&&ty>oy&&bl)||(tx<ox&&ty<oy&&tl))){
                int a=angle;if(a<0)a=(short)(a+360);a%=360;
                if((a>=46&&a<=134)||(a>=226&&a<=314))nx=16*ox+16;else ny=16*oy+16;
            }
        }
        mark(grid,stride,(nx-8)/16,(ny-8)/16,bit,true);xy[0]=nx;xy[1]=ny;
    }
    /** ARM 0x20458 movement branch: priority 8 > 4 > 2 > 1, then turn. */
    public static int tick(OriginalLevel level,int[] xy,int angle,int mask,boolean ghost){
        int direction=angle;boolean moving=false;
        if((mask&1)!=0){direction=angle;moving=true;}
        if((mask&2)!=0){direction=angle+180;moving=true;}
        if((mask&4)!=0){direction=angle+270;moving=true;}
        if((mask&8)!=0){direction=angle+90;moving=true;}
        if(moving)move(level.width,level.height,level.collision,direction,10,xy,false,ghost);
        if((mask&0x100)!=0)angle-=4;else if((mask&0x200)!=0)angle+=4;
        if(angle<0)angle+=360;if(angle>=360)angle-=360;return angle;
    }
}
