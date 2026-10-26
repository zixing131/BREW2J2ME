package dnf;
import java.io.IOException;
/** Original 0x2b8e0 ZON layout: three alternatives, each entry/boss/special + spawn. */
public final class Zone {
    public final int rows,cols,flags;
    public final int[][][] routes=new int[3][3][];
    public final int[][] spawn=new int[3][2];
    public final byte[] grid;
    public Zone(int id)throws IOException {
        Bytes r=new Bytes(Assets.read(id,"zon"));rows=r.u8();cols=r.u8();flags=r.u8();
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){int x=r.u8(),y=r.u8();routes[i][j]=x==255||y==255?new int[]{-1,-1,-1,-1}:new int[]{x,y,r.u16(),r.u8()};}
            spawn[i][0]=r.s16();spawn[i][1]=r.s16();
        }
        grid=r.take(rows*cols);r.end();
    }
}
