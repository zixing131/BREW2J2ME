package bio.original;
import java.io.IOException;

/** Original geometry/material/frame descriptors, with a portable Java software rasterizer. */
public final class OriginalRenderer implements OriginalSky.Sink {
    public static final class Picture {
        public final int width,height;public final int[] pixels;
        public Picture(int w,int h,int[] p){width=w;height=h;pixels=p;}
    }
    public interface Images {Picture get(int id)throws IOException;}
    public interface Labels {void drawLabel(int[] dest,int w,int h,int textId,int centerX,int centerY);}
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
    private int viewX,viewY;
    private OriginalCamera camera;
    private int[][] floorTiles;
    private int worldTicks,worldZoom;
    private final double[] rowDistance;
    private final int[] rowFog;
    private Images backgroundImages;
    private int[] labelBand;
    private final int[] effectRect=new int[6],effectPoint=new int[4],effectEnd=new int[4],effectTriangles=new int[12];
    public OriginalRenderer(int w,int h,byte[] metadata,int[][] tiles,int[] atlas){
        width=w;height=h;pixels=new int[w*h];depth=new int[w*h];rowDistance=new double[h];rowFog=new int[h];this.metadata=metadata;this.tiles=tiles;this.atlas=atlas;
        spriteBase=8;int p=8+36*Binary.i32(metadata,4);boxBase=p+4;p+=4+32*Binary.i32(metadata,p);actorBase=p+4;
        p+=4+84*Binary.i32(metadata,p);p+=4+116*Binary.i32(metadata,p);descriptorBase=p+8;
    }
    /** 0x2319C rotates/reverses source pixels; 0x4F8C + 0x9990 apply the face flag.
     * In unrotated PNG coordinates: flag0 reverses U, flag1 preserves it. */
    public static double textureU(double u,int flags){return (flags&1)==0?1-u:u;}
    private void prepare(OriginalLevel l,Images images)throws IOException{
        if(prepared==l&&(images==null||preparedBoxes))return;
        floorTiles=new int[l.palette.length][1024];
        for(int i=0;i<floorTiles.length;i++)for(int y=0;y<32;y++)for(int x=0;x<32;x++)floorTiles[i][y*32+x]=OriginalMaterials.rgb(OriginalMaterials.compose(l.palette[i],x,y,atlas));
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
    private int floor(OriginalLevel l,int x,int y,boolean ceiling,int amount){
        byte[] layer=ceiling?l.layer1:l.layer0;if(layer==null)return 0x242627;
        int index=x<0||y<0||x>=l.width*32||y>=l.height*32?(ceiling?1:0):layer[y/32*l.width+x/32]&255;
        if(index>=l.palette.length)return 0x242627;int base=l.palette[index]&255,rgb=floorTiles[index][(y&31)*32+(x&31)];
        boolean light=base>=7&&base<=10,blink=base==7||base==9;
        if(light&&(!blink||(worldTicks&4)!=0))return rgb;
        return OriginalMaterials.fog(rgb,Binary.u16(l.header,16),amount);
    }
    public void render(OriginalLevel l,int x,int y,int angle){try{backgroundImages=null;prepare(l,null);world(l,x,y,angle,1);}catch(IOException e){throw new RuntimeException(e.toString());}}
    public void render(OriginalSession session,Images images)throws IOException{
        OriginalPlayer p=session.player;OriginalCombat c=session.combat;worldTicks=c.ticks;backgroundImages=images;prepare(session.level,images);
        int x=p.x,y=p.y;
        if(p.current>=0){session.data.resolve(p,p.current,c.weapon);int base=session.data.effectBase+116*c.weapon[11];
            int shot=Math.max(0,(c.weapon[1]&255)-c.cooldown);
            if(c.cooldown>0&&shot<Binary.i32(metadata,base+56)){int recoil=Binary.s16(metadata,base+64+6*shot);x-=(recoil*OriginalTrig.cos(p.angle))>>16;y-=(recoil*OriginalTrig.sin(p.angle))>>16;}}
        world(session.level,x,y,p.angle,c.zoom!=0?2:1);
        for(int i=0;i<session.level.objectCount;i++){
            int at=i*8,kind=session.level.objects[at+1]&255,var=Binary.u16(session.level.objects,at+2),idx=session.level.objects[at]&255;
            if(kind!=0&&var<500&&p.variables[var]==1)continue;int d=spriteBase+36*idx;
            int flag=metadata[d+29];if(metadata[d+28]!=0&&flag>=0&&flag<p.variables.length&&p.variables[flag]==1)continue;
            int ox=Binary.s16(session.level.objects,at+4),oy=Binary.s16(session.level.objects,at+6);
            if(metadata[d+30]==0)sprite(images,d,ox,oy,0,session);
            if(metadata[d+31]==1&&images instanceof Labels)objectLabel((Labels)images,Binary.s16(metadata,d+32),ox,oy,p.angle);
        }
        for(int i=0;i<session.combat.actors.length;i++){
            int[] a=session.combat.actors[i];sprite(images,actorBase+84*session.combat.type(i),a[OriginalCombat.X],a[OriginalCombat.Y],a[OriginalCombat.STATE],session);
            if(a[OriginalCombat.FLASH]>0){
                int descriptor=actorBase+84*c.type(i);
                effectSprite(images,4201,a[OriginalCombat.X],a[OriginalCombat.Y],metadata[descriptor+6]&255,a[OriginalCombat.FLASH],session);
            }
        }
        for(int i=0;i<c.projectiles.length;i++){int[] b=c.projectiles[i];if(b[0]!=0&&c.projectileKinds[i]!=0)effectSprite(images,c.projectileKinds[i]==1?2501:2502,b[1],b[2],10,0,session);}
        for(int i=0;i<c.tracers.length;i++)if(c.tracers[i][0]!=0)tracer(c.tracers[i],p.angle);
    }
    /** 0x48A0 integer camera projection at original height 180 (45 map units). */
    private boolean effectPoint(int x,int y,int angle,int scale,int[] out){
        int dx=4*(x-viewX),dy=4*(y-viewY),cs=OriginalTrig.cos(angle)>>8,sn=OriginalTrig.sin(angle)>>8;
        int d=(dx*cs+dy*sn)>>8;if(d<=0||d>=4000)return false;int focal=(int)camera.focal;
        out[0]=width/2+(((dy*cs-dx*sn)>>8)*focal)/d;
        out[1]=height-((((10+(height>>1))<<8)-focal*(30<<8)/d)>>8);
        out[2]=((scale*focal/10)<<8)/Math.max(1,OriginalMath.distance(dx,dy));out[3]=d;
        return true;
    }
    private void effectSprite(Images images,int id,int x,int y,int scale,int flash,OriginalSession s)throws IOException{
        if(!effectPoint(x,y,s.player.angle,scale,effectPoint))return;
        Picture image=images.get(id);if(image==null)return;
        OriginalEffects.sprite(image.width,image.height,effectPoint[2],flash,effectPoint[0],effectPoint[1],effectRect);
        int left=effectRect[0],top=effectRect[1],w=effectRect[2],h=effectRect[3],dist=effectPoint[3]*64;
        int fog=flash==0?0:OriginalMaterials.fogAmount(s.level,effectPoint[3]/4.0,worldZoom);
        for(int yy=Math.max(0,top);yy<Math.min(height,top+h);yy++)for(int xx=Math.max(0,left);xx<Math.min(width,left+w);xx++){
            int at=yy*width+xx;if(dist>depth[at])continue;
            int sx=(int)((long)(xx-left)*image.width/w),sy=effectRect[4]+(int)((long)(yy-top)*effectRect[5]/h),color=image.pixels[sy*image.width+sx];
            if((color>>>24)!=0){pixels[at]=OriginalMaterials.fog(color,Binary.u16(s.level.header,16),fog);depth[at]=dist;}
        }
    }
    private void tracer(int[] t,int angle){
        if(!effectPoint(t[2],t[3],angle,10,effectPoint)||!effectPoint(t[4],t[5],angle,10,effectEnd))return;
        int spread=t[1]*8*(int)camera.focal/3,w1=spread/effectPoint[3],w2=spread/effectEnd[3];
        OriginalEffects.tracer(effectPoint[0],effectPoint[1],effectEnd[0],effectEnd[1],w1,w2,effectTriangles);
        int color=OriginalMaterials.rgb(OriginalEffects.tracerColor(t[1])),dist=Math.min(effectPoint[3],effectEnd[3])*64;
        triangle(effectTriangles,0,color,dist);triangle(effectTriangles,6,color,dist);
    }
    /** Portable clipped rasterization; original geometry/color, per-pixel world depth. */
    private void triangle(int[] a,int off,int color,int dist){
        int ax=a[off],ay=a[off+1],bx=a[off+2],by=a[off+3],cx=a[off+4],cy=a[off+5];
        long area=(long)(bx-ax)*(cy-ay)-(long)(by-ay)*(cx-ax);if(area==0)return;
        int left=Math.max(0,Math.min(ax,Math.min(bx,cx))),right=Math.min(width-1,Math.max(ax,Math.max(bx,cx)));
        int top=Math.max(0,Math.min(ay,Math.min(by,cy))),bottom=Math.min(height-1,Math.max(ay,Math.max(by,cy)));
        for(int y=top;y<=bottom;y++)for(int x=left;x<=right;x++){
            long p=(long)(bx-ax)*(y-ay)-(long)(by-ay)*(x-ax),q=(long)(cx-bx)*(y-by)-(long)(cy-by)*(x-bx),r=(long)(ax-cx)*(y-cy)-(long)(ay-cy)*(x-cx);
            if(area>0?p<0||q<0||r<0:p>0||q>0||r>0)continue;int at=y*width+x;
            if(dist<=depth[at]){pixels[at]=color;depth[at]=dist;}
        }
    }
    private void objectLabel(Labels labels,int id,int x,int y,int angle){
        double cs=OriginalTrig.cos(angle)/65536.0,sn=OriginalTrig.sin(angle)/65536.0;
        double vx=x-viewX,vy=y-viewY,d=vx*cs+vy*sn;if(d<=0||d>=1000)return;
        int cx=width/2+(int)((cs*vy-sn*vx)*camera.focal/d),top=(int)camera.horizon-7,dist=(int)(d*256);
        if(labelBand==null)labelBand=new int[width*14];
        for(int i=0;i<labelBand.length;i++)labelBand[i]=0x80000000;
        // 0x9990: text is centered on projected X at the view horizon, not the sprite top.
        labels.drawLabel(labelBand,width,14,id,cx,7);
        for(int yy=0;yy<14;yy++)if(top+yy>=0&&top+yy<height)for(int xx=0;xx<width;xx++){
            int color=labelBand[yy*width+xx],at=(top+yy)*width+xx;
            if(color!=0x80000000&&dist<=depth[at]){pixels[at]=color;depth[at]=dist;}
        }
    }
    public void rectangle(int x,int y,int w,int h,int flags,int first,int last){
        for(int yy=Math.max(0,y);yy<Math.min(height,y+h);yy++){
            int color=OriginalMaterials.rgb((flags&4)!=0?OriginalSky.gradient(first,last,yy-y,h):first);
            for(int xx=Math.max(0,x);xx<Math.min(width,x+w);xx++)pixels[yy*width+xx]=color;
        }
    }
    public void image(int id,int x,int y,int w,int h,int flags,int tint)throws IOException{
        Picture picture=backgroundImages.get(id);
        for(int yy=Math.max(0,y);yy<Math.min(height,y+h);yy++)for(int xx=Math.max(0,x);xx<Math.min(width,x+w);xx++){
            int sx=xx-x;if((flags&2)!=0)sx=picture.width-1-sx;
            int color=picture.pixels[(yy-y)*picture.width+sx];if((color>>>24)==0)continue;
            if((flags&16)!=0)color=OriginalMaterials.fog(color,tint&65535,tint>>>16);
            pixels[yy*width+xx]=color;
        }
    }
    private void world(OriginalLevel l,int x,int y,int angle,int zoom)throws IOException{
        viewX=x;viewY=y;worldZoom=zoom;camera=new OriginalCamera(width,height,zoom);
        double dx=OriginalTrig.cos(angle)/65536.0,dy=OriginalTrig.sin(angle)/65536.0,proj=camera.focal,mid=camera.horizon;
        double eye=OriginalCamera.EYE,ceiling=(l.header[11]&255)*32;
        int background=OriginalMaterials.rgb(Binary.u16(l.header,16));
        for(int i=0;i<depth.length;i++){depth[i]=Integer.MAX_VALUE;pixels[i]=background;}
        if(backgroundImages!=null)OriginalSky.visit(l,width,height,angle,zoom,worldTicks,backgroundImages,this);
        int groundTop=height-OriginalSky.floorRows(height,zoom),ceilingBottom=OriginalSky.ceilingRows(l,height,zoom);
        for(int row=0;row<height;row++){rowDistance[row]=(row<mid?ceiling-eye:eye)*proj/(Math.abs(row-mid)+.5);rowFog[row]=OriginalMaterials.fogAmount(l,rowDistance[row],zoom);}
        for(int col=0;col<width;col++){
            double side=(col-width/2)/proj,rx=dx-dy*side,ry=dy+dx*side;
            for(int row=0;row<height;row++)if(row>=groundTop||row<ceilingBottom){double d=rowDistance[row];pixels[row*width+col]=floor(l,(int)(x+rx*d),(int)(y+ry*d),row<mid,rowFog[row]);}
            int hits=0;
            for(int i=0;i<segmentCount;i++){
                int[] s=segments[i];double ax=s[0]-x,ay=s[1]-y,sx=s[2]-s[0],sy=s[3]-s[1],cross=rx*sy-ry*sx;
                if(cross==0||(cross>0&&s[7]==0))continue;
                double d=(ax*sy-ay*sx)/cross,u=(ax*ry-ay*rx)/cross;if(d<=.01||d>1000||u<0||u>1)continue;
                int j=hits++;while(j>0&&hitDistance[j-1]<d){hitDistance[j]=hitDistance[j-1];hitIndex[j]=hitIndex[j-1];hitU[j]=hitU[j-1];j--;}
                hitDistance[j]=d;hitIndex[j]=i;hitU[j]=u;
            }
            for(int k=0;k<hits;k++){
                int i=hitIndex[k];int[] s=segments[i];Picture tex=textures[i];if(tex==null||tex.width<1||tex.height<1)continue;double d=hitDistance[k];
                int top=(int)camera.heightY(d,s[5]),bottom=(int)camera.groundY(d),dist=(int)(d*256);
                int fog=OriginalMaterials.fogAmount(l,d,zoom);
                int tx=Math.min(tex.width-1,Math.max(0,(int)(textureU(hitU[k],s[4])*tex.width)));
                for(int row=Math.max(0,top);row<=bottom&&row<height;row++){
                    int ty=(int)((row-top)*d*tex.height/(proj*s[5]));if(ty<0||ty>=tex.height)continue;int rgb=tex.pixels[ty*tex.width+tx];
                    if((rgb>>>24)!=0){int at=row*width+col;pixels[at]=OriginalMaterials.fog(rgb,Binary.u16(l.header,16),fog);depth[at]=dist;}
                }
            }
        }
    }
    private void sprite(Images images,int descriptor,int x,int y,int state,OriginalSession s)throws IOException{
        OriginalPlayer p=s.player;double cs=OriginalTrig.cos(p.angle)/65536.0,sn=OriginalTrig.sin(p.angle)/65536.0;
        double vx=x-viewX,vy=y-viewY,d=vx*cs+vy*sn;if(d<.01||d>=1000)return;double side=cs*vy-sn*vx,proj=camera.focal;
        // 0x48A0: image scale is descriptor[6]/10 divided by radial distance*4.
        double scale=proj*(metadata[descriptor+6]&255)/(40*Math.sqrt(vx*vx+vy*vy));
        Picture image=images.get(Binary.i32(metadata,descriptor));if(image==null)return;int frames=metadata[descriptor+4]&255;if(frames==0)return;
        int fh=image.height/frames,period=metadata[descriptor+12+16*state];if(period<=0)return;
        int frame=metadata[descriptor+13+16*state+s.combat.ticks%period];if(frame==0)return;boolean mirror=frame<0;frame=Math.abs(frame)-1;if(frame>=frames)return;
        double anchor=metadata[descriptor+7]!=0?camera.heightY(d,(s.level.header[11]&255)*32):camera.groundY(d);
        int left=(int)(width/2+side*proj/d-Binary.s16(metadata,descriptor+8)*scale),top=(int)(anchor-Binary.s16(metadata,descriptor+10)*scale);
        int dw=Math.max(1,(int)(image.width*scale)),dh=Math.max(1,(int)(fh*scale)),dist=(int)(d*256);
        int fog=OriginalMaterials.fogAmount(s.level,d,worldZoom)*(100-(metadata[descriptor+5]&255))/100;
        for(int yy=Math.max(0,top);yy<top+dh&&yy<height;yy++)for(int xx=Math.max(0,left);xx<left+dw&&xx<width;xx++){
            int at=yy*width+xx;if(dist>=depth[at])continue;int tx=(int)((long)(xx-left)*image.width/dw);if(mirror)tx=image.width-1-tx;
            int ty=(int)((long)(yy-top)*fh/dh);int rgb=image.pixels[(frame*fh+ty)*image.width+tx];if((rgb>>>24)!=0){pixels[at]=OriginalMaterials.fog(rgb,Binary.u16(s.level.header,16),fog);depth[at]=dist;}
        }
    }
}
