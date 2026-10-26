package dnf;
import java.io.IOException;
/** FRA family/layer tables and ordered composite pieces: native 0x6de68. */
public final class Frames {
    public int[][] banks,palettes;
    public Piece[][] frames;
    public static final class Piece {public int bank,tile,x,y,transform;}
    public Frames(byte[] data) throws IOException {
        Bytes r=new Bytes(data);int families=r.u8(),layers=r.u8();banks=new int[families][layers];palettes=new int[families][layers];
        for(int i=0;i<families;i++)for(int j=0;j<layers;j++)banks[i][j]=r.u16();
        for(int i=0;i<families;i++)for(int j=0;j<layers;j++)palettes[i][j]=r.u8();
        frames=new Piece[r.u8()][];
        for(int i=0;i<frames.length;i++) {
            frames[i]=new Piece[r.u8()];
            for(int j=0;j<frames[i].length;j++) {Piece p=new Piece();frames[i][j]=p;p.bank=r.u8();p.tile=r.u8();p.x=r.s16();p.y=r.s16();p.transform=r.u8();}
        }
        r.end();
    }
}
