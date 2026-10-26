package bio.original;
import java.io.IOException;

/** 0x3324 flag 0x21: original color image blended through a sparse byte alpha mask. */
public final class OriginalFlash {
    private final byte[] data;
    private final int width,height;
    private final int[] rows;
    public OriginalFlash(byte[] raw)throws IOException{
        data=raw;if(raw.length<4)throw new IOException("Flash header");width=Binary.u16(raw,0);height=Binary.u16(raw,2);
        if(width<1||width>255||height<1||height>255||raw.length<4+6*height)throw new IOException("Flash dimensions");
        rows=new int[height];int p=4+6*height;
        for(int y=0;y<height;y++){
            int left=data[4+4*height+y]&255,count=data[4+5*height+y]&255;
            if(left+count>width||p+count>raw.length)throw new IOException("Flash span");rows[y]=p;
            for(int i=0;i<count;i++)if((raw[p+i]&255)>32)throw new IOException("Flash alpha");p+=count;
        }
        if(raw.length!=4+((p-4+3)&~3))throw new IOException("Flash payload");
    }
    public static int maskId(byte[] scene,int base,int shots){
        int count=scene[base+12]&255;if(count==0)return -1;
        return 4111+(scene[base+13+(int)(((long)shots&0xffffffffL)%count)]&255);
    }
    public void draw(int[] dest,int w,int h,OriginalRenderer.Picture color,int x,int y){
        if(color.width!=width||color.height!=height)throw new IllegalArgumentException("Flash image size");
        for(int sy=Math.max(0,-y);sy<Math.min(height,h-y);sy++){
            int left=data[4+4*height+sy]&255,count=data[4+5*height+sy]&255;
            int start=Math.max(left,-x),end=Math.min(left+count,w-x);
            // Preserve the original sparse-path clip offset (ASR #17 after LSL #16).
            int mask=rows[sy]+(start-left)/2;
            for(int sx=start;sx<end;sx++){
                int amount=data[mask++]&255;if(amount==0)continue;int at=(y+sy)*w+x+sx;
                dest[at]=OriginalMaterials.rgb(OriginalMaterials.mix(OriginalMaterials.pack(color.pixels[sy*width+sx]),OriginalMaterials.pack(dest[at]),amount));
            }
        }
    }
}
