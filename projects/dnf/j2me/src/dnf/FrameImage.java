package dnf;
import java.io.IOException;
/** A static FRA composition used by native portraits and story objects. */
public final class FrameImage {
    private final Frames frames;
    private final Dat[] banks;
    private final int family;
    public FrameImage(int id,int family,Assets assets)throws IOException {
        frames=new Frames(Assets.read(id,"fra"));this.family=family%frames.banks.length;
        banks=new Dat[frames.banks[this.family].length];for(int i=0;i<banks.length;i++)banks[i]=assets.dat(frames.banks[this.family][i]);
    }
    public void draw(Surface s,int frame,int x,int y,boolean mirror){
        if(frame<0||frame>=frames.frames.length)return;
        Frames.Piece[] pieces=frames.frames[frame];
        for(int i=0;i<pieces.length;i++){Frames.Piece p=pieces[i];if(p.bank<banks.length)s.tile(banks[p.bank],p.tile,frames.palettes[family][p.bank],x+(mirror?-p.x:p.x),y+p.y,p.transform,mirror,1,0,0,0,false);}
    }
}
