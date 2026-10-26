package dnf;
import java.io.IOException;
/** ACT file layout recovered from 0x6d838. Unresolved fields remain explicit. */
public final class ActionSet {
    public int fraId;
    public Clip[] clips;
    public static final class Clip { public int next;public byte[] boxA,boxB;public Frame[] frames; }
    public static final class Frame { public int duration,boundsKind,regionKind;public byte[] bounds,fields;public int[] region;public Part[] parts; }
    public static final class Part { public int frame,x,y;public byte[] style; }
    public ActionSet(byte[] data) throws IOException {
        Bytes r=new Bytes(data);fraId=r.u16();clips=new Clip[r.u8()];
        for(int c=0;c<clips.length;c++) {
            Clip clip=new Clip();clips[c]=clip;clip.next=r.u8();
            clip.boxA=r.u8()==1?r.take(6):null;clip.boxB=r.u8()==1?r.take(6):null;
            clip.frames=new Frame[r.u8()];
            for(int f=0;f<clip.frames.length;f++) {
                Frame frame=new Frame();clip.frames[f]=frame;frame.duration=r.u8();
                frame.boundsKind=r.u8();frame.bounds=frame.boundsKind!=0?r.take(4):null;
                frame.regionKind=r.u8();if(frame.regionKind!=0){frame.region=new int[6];for(int k=0;k<6;k++)frame.region[k]=r.s16();}
                frame.fields=r.take(7);frame.parts=new Part[r.u8()];
                for(int k=0;k<frame.parts.length;k++){Part p=new Part();frame.parts[k]=p;p.frame=r.u8();p.x=r.s16();p.y=r.s16();p.style=r.take(5);}
            }
        }
        r.end();
    }
}
