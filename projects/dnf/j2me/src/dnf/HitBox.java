package dnf;
/** Original 0x7638c: horizontal overlap, relative height and ground-plane depth. */
public final class HitBox {
    public static boolean overlaps(int[] a,int ax,int ay,int[] b,int bx,int by){
        if(ay-a[4]>by||by>ay+a[5])return false;
        int l=(short)(ax+a[0]),r=(short)(ax+a[2]),bl=bx+b[0],br=bx+b[2];
        boolean x=l>=bl||l>=br||r>=bl||r>=br;
        if(l>bl&&l>br&&r>bl&&r>br)x=false;
        boolean y=a[1]>=b[1]||a[1]>=b[3]||a[3]>=b[1];
        if(a[1]>b[1]&&a[1]>b[3]&&a[3]>b[1]&&a[3]>b[3])y=false;
        return x&&y;
    }
    public static boolean hits(Actor attacker,int ax,int ay,boolean am,Actor target,int bx,int by,boolean bm){
        return hits(attacker.animation.current(),ax,ay,am,target.animation.current(),bx,by,bm);
    }
    public static boolean hits(ActionSet.Frame a,int ax,int ay,boolean am,ActionSet.Frame b,int bx,int by,boolean bm){
        if(a.region==null||b.bounds==null||b.boundsKind==2)return false;
        int[] ar=new int[6],br=new int[4];System.arraycopy(a.region,0,ar,0,6);
        for(int i=0;i<4;i++)br[i]=b.bounds[i];
        if(am){int l=ar[0];ar[0]=-ar[2];ar[2]=-l;}if(bm){int l=br[0];br[0]=-br[2];br[2]=-l;}
        return overlaps(ar,ax,ay,br,bx,by);
    }
}
