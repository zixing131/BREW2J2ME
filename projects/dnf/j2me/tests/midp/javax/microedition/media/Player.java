package javax.microedition.media;
import javax.microedition.media.control.VolumeControl;
public final class Player implements VolumeControl {
    public static final long TIME_UNKNOWN=-1;
    public boolean closed,started;public int volume,loops;
    public void realize(){}public void prefetch(){}
    public void close(){closed=true;started=false;}
    public void start(){if(closed)throw new IllegalStateException();started=true;}
    public void stop(){started=false;}
    public Object getControl(String name){return this;}
    public int setLevel(int value){volume=value;return value;}
    public void setLoopCount(int n){loops=n;}
    public long getMediaTime(){return 0;}public long getDuration(){return 1000000;}
}
