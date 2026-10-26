package dnf;
import java.io.IOException;
/** Eight DS sections, decoded by the original loader at 0x28258. */
public final class SceneData {
    public final int id;
    public int[] banks;
    public int[][] objects,effects,types,spawns,propTypes,props,areas;
    public SceneData(int id)throws IOException {this(id,Assets.read(id,"ds"));}
    public SceneData(int id,byte[] data)throws IOException {
        this.id=id;Bytes r=new Bytes(data);banks=new int[r.u8()];for(int i=0;i<banks.length;i++)banks[i]=r.u16();
        objects=rows(r,new int[]{1,1,1,1,2,2});effects=rows(r,new int[]{1,1,1,1,2,2});
        types=rows(r,new int[]{2,2,1});spawns=rows(r,new int[]{1,1,1,2,2});
        propTypes=rows(r,new int[]{2,1,2,1});props=rows(r,new int[]{1,1,-2,-2});
        areas=rows(r,new int[]{1,1,2,1,1,1,-2,-2,-2,-2});r.end();
        for(int i=0;i<spawns.length;i++)if(spawns[i][1]>=types.length)throw new IOException("DS monster type");
        for(int i=0;i<props.length;i++)if(props[i][0]>=propTypes.length)throw new IOException("DS prop type");
    }
    private static int[][] rows(Bytes r,int[] widths)throws IOException {
        int[][] out=new int[r.u8()][widths.length];
        for(int i=0;i<out.length;i++)for(int j=0;j<widths.length;j++)out[i][j]=widths[j]==1?r.u8():widths[j]==2?r.u16():r.s16();
        return out;
    }
}
