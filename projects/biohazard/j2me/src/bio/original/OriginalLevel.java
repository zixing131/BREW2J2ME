package bio.original;
import java.io.IOException;

/** Image-relative ARM 0x18B5C. All serialized records retained; no guessed byte grids. */
public final class OriginalLevel {
    public final int id,width,height;
    public final byte[] header,preRecords,layer0,layer1,sourceMask;
    public final int[] palette;
    public final byte[] surfaces,objects,boxes,actors;
    public final int surfaceCount,objectCount,boxCount,actorCount;
    public byte[] collision;
    public OriginalLevel(int id,byte[] raw)throws IOException{
        this.id=id;
        if(raw.length<32)throw new IOException("Short level");
        width=Binary.u16(raw,0);height=Binary.u16(raw,2);
        if(width<1 || height<1 || width>128 || height>128)throw new IOException("Level dimensions");
        header=Binary.slice(raw,0,28);int p=28,pre=Binary.i32(raw,24);
        if(pre<0 || pre>100)throw new IOException("Pre-record count");
        preRecords=Binary.slice(raw,p,pre*16);p+=pre*16;
        int n=Binary.i32(raw,p);p+=4;
        if(n<0 || n>256)throw new IOException("Palette count");
        palette=new int[n];for(int i=0;i<n;i++){palette[i]=Binary.i32(raw,p);p+=4;}
        int size=width*height;
        layer0=Binary.slice(raw,p,size);p+=size;
        if(header[9]!=0){layer1=Binary.slice(raw,p,size);p+=size;}else layer1=null;
        sourceMask=Binary.slice(raw,p,size);p+=size;
        surfaceCount=Binary.i32(raw,p);objectCount=Binary.i32(raw,p+4);boxCount=Binary.i32(raw,p+8);actorCount=Binary.i32(raw,p+12);p+=16;
        if(surfaceCount<0||surfaceCount>10000||objectCount<0||objectCount>1000||boxCount<0||boxCount>1000||actorCount<0||actorCount>1000)throw new IOException("Record count");
        surfaces=Binary.slice(raw,p,12*surfaceCount);p+=12*surfaceCount;
        objects=Binary.slice(raw,p,8*objectCount);p+=8*objectCount;
        // v38 is uint16_t*: +=6 means 12 bytes, +=10 means 20 bytes.
        boxes=Binary.slice(raw,p,12*boxCount);p+=12*boxCount;
        actors=Binary.slice(raw,p,20*actorCount);p+=20*actorCount;
        if(p!=raw.length)throw new IOException("Unconsumed level bytes: "+(raw.length-p));
        resetCollision();
    }
    public void resetCollision(){
        collision=new byte[width*height*4];
        for(int y=0;y<height;y++)for(int x=0;x<width;x++){
            byte value=(byte)(sourceMask[y*width+x]&0xf3); // 0x22FD8 clears dynamic occupancy.
            int p=(y*2)*(width*2)+x*2;
            collision[p]=collision[p+1]=collision[p+width*2]=collision[p+width*2+1]=value;
        }
        for(int i=0;i<actorCount;i++){
            int x=Binary.s16(actors,i*20+4),y=Binary.s16(actors,i*20+6);
            mark((x-8)/16,(y-8)/16,4,true);
        }
    }
    public void mark(int x,int y,int bit,boolean set){
        int stride=width*2;
        if(x<0||y<0||x+1>=stride||y+1>=height*2)return;
        for(int j=0;j<2;j++)for(int i=0;i<2;i++){
            int p=(y+j)*stride+x+i;collision[p]=(byte)(set?(collision[p]|bit):(collision[p]&~bit));
        }
    }
}
