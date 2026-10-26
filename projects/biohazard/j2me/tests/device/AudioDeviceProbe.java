import javax.microedition.midlet.MIDlet;
import javax.microedition.media.*;
import java.io.InputStream;
public class AudioDeviceProbe extends MIDlet implements Runnable {
 protected void startApp(){new Thread(this).start();}protected void pauseApp(){}protected void destroyApp(boolean b){}
 public void run(){
  String[] paths={"audio/30000.mid","audio/30001.mid","sfx/pistol.wav","sfx/rifle.wav","sfx/shotgun.wav","sfx/sniper.wav","sfx/zombie-attack.wav","sfx/zombie-hit.wav","sfx/zombie-death.wav"};
  int passed=0;
  for(int i=0;i<paths.length;i++){Player p=null;InputStream in=null;try{
   in=getClass().getResourceAsStream("/"+paths[i]);p=Manager.createPlayer(in,i<2?"audio/midi":"audio/x-wav");p.realize();p.setLoopCount(1);p.prefetch();p.start();
   if(p.getState()!=Player.STARTED)throw new Exception("Not STARTED: "+p.getState());
   Thread.sleep(i<2?250:950);System.out.println("AUDIO_DEVICE_PASS "+paths[i]+" duration="+p.getDuration()+" time="+p.getMediaTime());passed++;
  }catch(Throwable e){System.out.println("AUDIO_DEVICE_FAIL "+paths[i]+" "+e);e.printStackTrace();}
  finally{if(p!=null)p.close();try{if(in!=null)in.close();}catch(Exception e){}}}
  System.out.println("AUDIO_DEVICE_DONE "+passed+"/9");notifyDestroyed();
 }
}
