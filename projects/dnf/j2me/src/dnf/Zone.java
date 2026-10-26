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
    public interface Random { int next(int limit); }
    /** 0x2b8e0 correlates entry/boss, and special too when counts agree. */
    public int[] choose(Random random){
        int[] count=new int[3];for(int i=0;i<3;i++)for(int j=0;j<3;j++)if(routes[i][j][0]>=0)count[j]++;
        int e=0,b=0,s=0;
        if(count[0]==count[1]){e=b=random.next(Math.max(1,count[0]));if(count[0]==count[2])s=e;else if(count[2]>1)s=random.next(count[2]);}
        else {if(count[0]>1)e=random.next(count[0]);if(count[1]>1)b=random.next(count[1]);if(count[2]>1)s=random.next(count[2]);}
        return new int[]{e,b,s};
    }
}
