package bio.original;
import java.io.IOException;

/** Serialized script loader 0x5C00: rectangles, 16-byte headers, 32-byte commands. */
public final class OriginalScript {
    public final int count;
    public final int[][] headers,commands,regions;
    public OriginalScript(byte[] raw)throws IOException{
        count=Binary.u16(raw,0);if(count>256)throw new IOException("Script event count");
        headers=new int[count][4];commands=new int[count][];regions=new int[count][4];int p=2;
        for(int i=0;i<count;i++)for(int j=0;j<4;j++){regions[i][j]=Binary.u16(raw,p);p+=2;}
        for(int i=0;i<count;i++){
            if(p>raw.length-16)throw new IOException("Script header");
            for(int j=0;j<4;j++){headers[i][j]=Binary.i32(raw,p);p+=4;}
            int n=headers[i][3];if(n<0||n>(raw.length-p)/32)throw new IOException("Script command count");
            commands[i]=new int[n*8];for(int j=0;j<n*8;j++){commands[i][j]=Binary.i32(raw,p);p+=4;}
        }
        if(p!=raw.length)throw new IOException("Script trailing bytes");
    }
}
