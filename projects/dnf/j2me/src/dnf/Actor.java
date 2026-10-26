package dnf;
import java.io.IOException;
/** Original ACT -> FRA -> DAT composition, including family palettes and effect parts. */
public final class Actor {
    public final ActionSet actions;
    public final Frames frames;
    public final Animation animation;
    private Dat[] banks;
    private Assets assets;
    public int family;
    public Actor(int id,Assets assets)throws IOException {
        this.assets=assets;actions=new ActionSet(Assets.read(id,"act"));frames=new Frames(Assets.read(actions.fraId,"fra"));
        animation=new Animation(actions);setFamily(0);
    }
    public void setFamily(int id)throws IOException{
        id=(id+frames.banks.length)%frames.banks.length;Dat[] next=new Dat[frames.banks[id].length];
        for(int i=0;i<next.length;i++)next[i]=assets.dat(frames.banks[id][i]);
        banks=next;family=id;
    }
    public void draw(Surface s,int x,int y,boolean mirror) {
        draw(s,x,y,mirror,0);
    }
    public void draw(Surface s,int x,int y,boolean mirror,int weight) {
        ActionSet.Part[] parts=animation.current().parts;
        for(int i=0;i<parts.length;i++){
            ActionSet.Part part=parts[i];if(part.frame>=frames.frames.length)continue;
            Frames.Piece[] pieces=frames.frames[part.frame];int scale=1+(part.style[3]&255);
            for(int j=0;j<pieces.length;j++){
                Frames.Piece p=pieces[j];if(p.bank>=banks.length)continue;
                int dx=part.x+p.x*scale;
                s.tile(banks[p.bank],p.tile,frames.palettes[family][p.bank],x+(mirror?-dx:dx),y+part.y+p.y*scale,p.transform,mirror,scale,weight==0?part.style[0]&255:3,part.style[1]&255,weight==0?part.style[2]&255:weight,false);
            }
        }
    }
}
