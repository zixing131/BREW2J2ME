package bio.original;
import java.io.IOException;

/** Original scene background command stream, 0x6E98 and clipping bands from 0x21FB4. */
public final class OriginalSky {
    public interface Sink {
        void rectangle(int x,int y,int w,int h,int flags,int first,int last);
        void image(int id,int x,int y,int w,int h,int flags,int tint)throws IOException;
    }
    private OriginalSky(){}
    public static int floorRows(int height,int zoom){
        return Math.max(0,Math.min(height,210*4000/(4000+170*zoom)-(200-(height>>1))));
    }
    public static int ceilingRows(OriginalLevel level,int height,int zoom){
        if(level.layer1==null)return 0;
        int ceiling=(level.header[11]&255)*128;
        return Math.max(0,Math.min(height,4000*(ceiling-210)/(4000+170*zoom)+height+200-(height>>1)-ceiling));
    }
    public static void visit(OriginalLevel level,int width,int height,int angle,int zoom,int ticks,OriginalRenderer.Images images,Sink sink)throws IOException{
        int ground=floorRows(height,zoom),top=ceilingRows(level,height,zoom),base=height-ground;
        byte[] records=level.preRecords;
        if(records.length==0){sink.rectangle(0,top,width,height-top-ground,0,Binary.u16(level.header,16),0);return;}
        for(int p=0;p<records.length;p+=16){
            int kind=records[p]&255,id=Binary.i32(records,p+4),offset=Binary.s16(records,p+8),direction=Binary.s16(records,p+10);
            if(kind==1){sink.rectangle(0,base-offset-direction,width,direction,4,id>>>16,id&65535);continue;}
            if(kind!=2&&kind!=3)continue;
            OriginalRenderer.Picture picture=images.get(id);if(picture==null)continue;
            int speed=Binary.s16(records,p+12),drift=(int)(((long)(Binary.s16(records,p+14)*ticks)&0xffffffffL)/10);
            int y=base-offset-picture.height,flags=records[p+1]!=0?3:1;
            if(kind==2){
                int x=(speed*picture.width*(direction-angle)/3600-drift)%picture.width;
                if(x>0)x-=picture.width;
                for(;x<width;x+=picture.width)sink.image(id,x,y,picture.width,picture.height,flags,Binary.u16(records,p+2));
            }else{
                int delta=(direction-angle-drift)%360;if(delta>180)delta-=360;if(delta<=-180)delta+=360;
                int x=delta*speed/10-(width-picture.width)/2,tint=0;
                if(level.header[22]!=0){flags|=16;tint=Binary.u16(level.header,20)|(Math.min(32,32*(level.header[22]&255)/100)<<16);}
                sink.image(id,x,y,picture.width,picture.height,flags,tint);
            }
        }
    }
    /** 0x10C58 interpolates 8-bit channels before truncating back to RGB565. */
    public static int gradient(int first,int last,int row,int height){
        int a=height-row;
        int r=(a*((first&0xf800)>>8)+row*((last&0xf800)>>8))/height;
        int g=(a*((first&0x7e0)>>3)+row*((last&0x7e0)>>3))/height;
        int b=(a*((first&31)<<3)+row*((last&31)<<3))/height;
        return ((r>>3)<<11)|((g>>2)<<5)|(b>>3);
    }
}
