package javax.microedition.media;
import javax.microedition.media.control.VolumeControl;
/** Observable MMAPI adapter; tests validate lifecycle, not audible output. */
public final class Player {
 public boolean realized,prefetched,started,closed;public int loops,volume,starts,stops;
 public void realize(){realized=true;}public void prefetch(){prefetched=true;}
 public void setLoopCount(int n){loops=n;}
 public long setMediaTime(long n){return n;}
 public Object getControl(String n){return new VolumeControl(this);}
 public void start()throws Exception{if(Manager.failStart)throw new Exception("MIDI unavailable");started=true;starts++;}
 public void stop(){started=false;stops++;}public void close(){closed=true;}
}
