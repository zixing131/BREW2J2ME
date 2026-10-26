package bio.original;
import java.io.IOException;

/** Resource 20000, decoded as 0x193E0: animations -> frames -> 24-byte parts.
 * Part coordinates are relative to a bottom-center origin (0x1CE08). */
public final class OriginalAnimation {
    private final int[] ids;
    private final int[][][][] frames;
    public OriginalAnimation(byte[] raw)throws IOException{
        int n=Binary.i32(raw,4),p=8;if(n<1||n>256)throw new IOException("Animation count");
        ids=new int[n];frames=new int[n][][][];
        for(int i=0;i<n;i++){
            ids[i]=Binary.i32(raw,p);int count=Binary.i32(raw,p+4);p+=8;
            if(count<0||count>1024)throw new IOException("Animation frame count");frames[i]=new int[count][][];
            for(int j=0;j<count;j++){
                int kind=Binary.i32(raw,p);p+=4;if(kind!=0)throw new IOException("Animation command "+kind);
                int parts=Binary.u16(raw,p+2);p+=4;if(parts>256)throw new IOException("Animation parts");frames[i][j]=new int[parts][8];
                for(int k=0;k<parts;k++){
                    if(p+24>raw.length)throw new IOException("Truncated animation");int[] a=frames[i][j][k];
                    a[0]=Binary.i32(raw,p);a[1]=Binary.s16(raw,p+8);a[2]=Binary.s16(raw,p+10);
                    a[3]=Binary.u16(raw,p+12);a[4]=Binary.u16(raw,p+14);a[5]=Binary.u16(raw,p+18);
                    a[6]=Binary.u16(raw,p+16);a[7]=raw[p+20]&255;p+=24;
                }
            }
        }
        if(p!=raw.length)throw new IOException("Animation trailing bytes");
    }
    public int[][] frame(int id,int index){for(int i=0;i<ids.length;i++)if(ids[i]==id)return frames[i][index];throw new IllegalArgumentException("Animation ID "+id);}
}
