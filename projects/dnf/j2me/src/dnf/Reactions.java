package dnf;
import java.io.IOException;
/** Native reactionData.bd sound pairs: 0x39ff4 -> 0x2d77c -> 0x30b18. */
public final class Reactions {
    private final byte[] sounds;
    public Reactions()throws IOException {
        Bytes r=new Bytes(Bytes.resource("/original/reactionData.bd"));r.take(r.u16()*5);r.take(r.u16()*7);
        sounds=r.take(r.u16()*2);r.take(r.u16()*2);r.end();
    }
    public int sound(int reaction,boolean hit){
        if(reaction<=0||reaction>=sounds.length/2)return -1;
        int value=sounds[reaction*2+(hit?0:1)]&255;return value==255?-1:value;
    }
}
