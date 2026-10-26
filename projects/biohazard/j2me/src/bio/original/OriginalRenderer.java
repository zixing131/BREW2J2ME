package bio.original;
import java.io.IOException;

/** Original geometry/material/frame descriptors, with a portable Java software rasterizer. */
public final class OriginalRenderer {
    public static final class Picture {
        public final int width,height;public final int[] pixels;
        public Picture(int w,int h,int[] p){width=w;height=h;pixels=p;}
    }
    public interface Images {Picture get(int id)throws IOException;}
    public final int width,height;
    public final int[] pixels,depth;
    private final byte[] metadata;
    private final int[][] tiles;
    private final int[] atlas;
    private final int descriptorBase,boxBase,spriteBase,actorBase;
    private OriginalLevel prepared;
    private boolean preparedBoxes;
    private int[][] segments;
    private Picture[] textures;
    private int segmentCount;
    private int[] hitIndex;
    private double[] hitDistance,hitU;
    public OriginalRenderer(int w,int h,byte[] metadata,int[][] tiles,int[] atlas){
        width=w;height=h;pixels=new int[w*h];depth=new int[w*h];this.metadata=metadata;this.tiles=tiles;this.atlas=atlas;
        spriteBase=8;int p=8+36*Binary.i32(metadata,4);boxBase=p+4;p+=4+32*Binary.i32(metadata,p);actorBase=p+4;
        p+=4+84*Binary.i32(metadata,p);p+=4+116*Binary.i32(metadata,p);descriptorBase=p+8;
    }
    /** 0x2319C rotates/reverses source pixels; 0x4F8C + 0x9990 apply the face flag.
     * In unrotated PNG coordinates: flag0 reverses U, flag1 preserves it. */
    public static double textureU(double u,int flags){return (flags&1)==0?1-u:u;}
    private void prepare(OriginalLevel l,Images images)throws IOException{
        if(prepared==l&&(images==null||preparedBoxes))return;
        int n=l.surfaceCount+(images==null?0:l.boxCount*4);segments=new int[n][8];textures=new Picture[n];segmentCount=n;
        hitIndex=new int[n];hitDistance=new double[n];hitU=new double[n];
        Picture[] composed=new Picture[(metadata.length-descriptorBase)/16];
        for(int i=0;i<l.surfaceCount;i++){
            int p=i*12,t=Binary.u16(l.surfaces,p),d=descriptorBase+16*t,v=metadata[d+1]&255,h=metadata[d+2]&255;
            if(composed[t]==null){int tw=h*32,th=v*32;int[] rgb=new int[tw*th];
                for(int y=0;y<th;y++)for(int x=0;x<tw;x++){
                    int at=d+4+(v-1-y/32)*h+x/32,id=at<d+16?metadata[at]&255:0;
                    if(id<tiles.length&&tiles[id]!=null)rgb[y*tw+x]=tiles[id][(y&31)*32+(x&31)];
                }composed[t]=new Picture(tw,th,rgb);
            }
            int[] s=segments[i];for(int j=0;j<4;j++)s[j]=Binary.s16(l.surfaces,p+4+2*j);
            s[4]=Binary.u16(l.surfaces,p+2);s[5]=v*32;s[7]=metadata[d]&1;textures[i]=composed[t];
        }
        if(images!=null)for(int i=0;i<l.boxCount;i++){
            int p=i*12,type=Binary.u16(l.boxes,p),d=boxBase+32*type,a=Binary.u16(l.boxes,p+2),x=Binary.s16(l.boxes,p+4),y=Binary.s16(l.boxes,p+6);
            int hw=Binary.u16(metadata,d+24)/2,hh=Binary.u16(metadata,d+26)/2,sn=OriginalTrig.sin(a),cs=OriginalTrig.cos(a);
            int[] xs={x+((-sn*hh-cs*hw)>>16),x+((-sn*hh+cs*hw)>>16),x+((sn*hh+cs*hw)>>16),x+((sn*hh-cs*hw)>>16)};
            int[] ys={y+((cs*hh-sn*hw)>>16),y+((cs*hh+sn*hw)>>16),y+((-cs*hh+sn*hw)>>16),y+((-cs*hh-sn*hw)>>16)};
            int[] from={0,3,2,1},to={3,2,1,0},idOff={4,12,8,16},flagOff={20,22,21,23};
            for(int j=0;j<4;j++){int k=l.surfaceCount+i*4+j;int[] s=segments[k];s[0]=xs[from[j]];s[1]=ys[from[j]];s[2]=xs[to[j]];s[3]=ys[to[j]];
                boolean bit=metadata[d+flagOff[j]]!=0;s[4]=(j<2?bit:!bit)?1:0;s[5]=Binary.u16(metadata,d+28);textures[k]=images.get(Binary.i32(metadata,d+idOff[j]));}
        }
        prepared=l;preparedBoxes=images!=null;
    }
    private int floor(OriginalLevel l,int x,int y,boolean ceiling){
        if(x<0||y<0||x>=l.width*32||y>=l.height*32)return 0x16191b;byte[] layer=ceiling?l.layer1:l.layer0;if(layer==null)return 0x242627;
        int index=layer[y/32*l.width+x/32]&255;if(index>=l.palette.length)return 0x242627;int packed=l.palette[index],tile=packed&255;
        if(tile*1024+1023>=atlas.length)return 0x242627;int rgb=atlas[tile*1024+(y&31)*32+(x&31)];if((packed>>>24)>=13)rgb=(rgb>>1)&0x7f7f7f;return rgb;
    }
    public void render(OriginalLevel l,int x,int y,int angle){try{prepare(l,null);world(l,x,y,angle,1);}catch(IOException e){throw new RuntimeException(e.toString());}}
    public void render(OriginalSession session,Images images)throws IOException{
        OriginalPlayer p=session.player;prepare(session.level,images);world(session.level,p.x,p.y,p.angle,session.combat.zoom!=0?2:1);
        for(int i=0;i<session.level.objectCount;i++){
            int at=i*8,kind=session.level.objects[at+1]&255,var=Binary.u16(session.level.objects,at+2),idx=session.level.objects[at]&255;
            if(kind!=0&&var<500&&p.variables[var]==1)continue;int d=spriteBase+36*idx;if(metadata[d+30]!=0)continue;
            sprite(images,d,Binary.s16(session.level.objects,at+4),Binary.s16(session.level.objects,at+6),0,session);
        }
        for(int i=0;i<session.combat.actors.length;i++){
            int[] a=session.combat.actors[i];sprite(images,actorBase+84*session.combat.type(i),a[OriginalCombat.X],a[OriginalCombat.Y],a[OriginalCombat.STATE],session);
        }
    }
    private void world(OriginalLevel l,int x,int y,int angle,int zoom){
        double dx=OriginalTrig.cos(angle)/65536.0,dy=OriginalTrig.sin(angle)/65536.0,planeX=-dy*.66/zoom,planeY=dx*.66/zoom,proj=width*zoom/1.32;
        int mid=height/2;for(int i=0;i<depth.length;i++)depth[i]=Integer.MAX_VALUE;
        for(int col=0;col<width;col++){
            double camera=2.0*col/width-1,rx=dx+planeX*camera,ry=dy+planeY*camera;
            for(int row=0;row<height;row++){double d=48*proj/(Math.abs(row-mid)+.5);pixels[row*width+col]=floor(l,(int)(x+rx*d),(int)(y+ry*d),row<mid);}
            int hits=0;
            for(int i=0;i<segmentCount;i++){
                int[] s=segments[i];double ax=s[0]-x,ay=s[1]-y,sx=s[2]-s[0],sy=s[3]-s[1],cross=rx*sy-ry*sx;
                if(cross==0||(cross>0&&s[7]==0))continue;
                double d=(ax*sy-ay*sx)/cross,u=(ax*ry-ay*rx)/cross;if(d<=.01||d>8192||u<0||u>1)continue;
                int j=hits++;while(j>0&&hitDistance[j-1]<d){hitDistance[j]=hitDistance[j-1];hitIndex[j]=hitIndex[j-1];hitU[j]=hitU[j-1];j--;}
                hitDistance[j]=d;hitIndex[j]=i;hitU[j]=u;
            }
            for(int k=0;k<hits;k++){
                int i=hitIndex[k];int[] s=segments[i];Picture tex=textures[i];if(tex==null||tex.width<1||tex.height<1)continue;double d=hitDistance[k];
                int top=(int)(mid-(s[5]-48)*proj/d),bottom=(int)(mid+48*proj/d),dist=(int)(d*256);
                int tx=Math.min(tex.width-1,Math.max(0,(int)(textureU(hitU[k],s[4])*tex.width)));
                for(int row=Math.max(0,top);row<=bottom&&row<height;row++){
                    int ty=(int)((row-top)*d*tex.height/(proj*s[5]));if(ty<0||ty>=tex.height)continue;int rgb=tex.pixels[ty*tex.width+tx];
                    if((rgb>>>24)!=0){int at=row*width+col;pixels[at]=rgb;depth[at]=dist;}
                }
            }
        }
    }
    private void sprite(Images images,int descriptor,int x,int y,int state,OriginalSession s)throws IOException{
        OriginalPlayer p=s.player;double cs=OriginalTrig.cos(p.angle)/65536.0,sn=OriginalTrig.sin(p.angle)/65536.0;
        double vx=x-p.x,vy=y-p.y,d=vx*cs+vy*sn;if(d<4)return;double side=cs*vy-sn*vx,proj=width*(s.combat.zoom!=0?2:1)/1.32,scale=proj/d;
        Picture image=images.get(Binary.i32(metadata,descriptor));if(image==null)return;int frames=metadata[descriptor+4]&255;if(frames==0)return;
        int fh=image.height/frames,period=metadata[descriptor+12+16*state];if(period<=0)return;
        int frame=metadata[descriptor+13+16*state+s.combat.ticks%period];if(frame==0)return;boolean mirror=frame<0;frame=Math.abs(frame)-1;if(frame>=frames)return;
        int left=(int)(width/2+side*scale-Binary.s16(metadata,descriptor+8)*scale),top=(int)(height/2+48*scale-Binary.s16(metadata,descriptor+10)*scale);
        int dw=Math.max(1,(int)(image.width*scale)),dh=Math.max(1,(int)(fh*scale)),dist=(int)(d*256);
        for(int yy=Math.max(0,top);yy<top+dh&&yy<height;yy++)for(int xx=Math.max(0,left);xx<left+dw&&xx<width;xx++){
            int at=yy*width+xx;if(dist>=depth[at])continue;int tx=(int)((long)(xx-left)*image.width/dw);if(mirror)tx=image.width-1-tx;
            int ty=(int)((long)(yy-top)*fh/dh);int rgb=image.pixels[(frame*fh+ty)*image.width+tx];if((rgb>>>24)!=0){pixels[at]=rgb;depth[at]=dist;}
        }
    }
}
