package bio;
import javax.microedition.media.*;
public final class OriginalAudioTest {
 static int checks;static void check(boolean b,String why){checks++;if(!b)throw new RuntimeException(why);}
 public static void main(String[] args)throws Exception{
  OriginalAudio a=new OriginalAudio();check(a.enabled(),"Default music on");a.update(30000,true);Player menu=Manager.last;
  check(menu.started&&menu.realized&&menu.prefetched&&menu.loops==-1&&menu.volume==100,"Original menu MIDI loops at volume 100");
  a.update(30000,true);check(menu.starts==1&&Manager.creates==1,"Same scene does not restart");
  a.update(30001,true);Player game=Manager.last;check(menu.closed&&game.started,"Gameplay replaces menu");
  a.update(30001,false);check(game.closed&&!game.started,"Background releases player");
  a.update(30001,true);check(Manager.last.started&&Manager.last!=game,"Resume recreates current song");
  a.setEnabled(false);check(Manager.last.closed&&!new OriginalAudio().enabled(),"Mute closes audio and persists");
  int count=Manager.creates;a.update(30001,true);check(Manager.creates==count,"Mute remains silent across scenes");
  a.setEnabled(true);check(new OriginalAudio().enabled(),"Enable persists");Manager.failStart=true;a.update(30001,true);
  check(a.unavailable()&&Manager.last.closed,"Unsupported MIDI releases failed player");count=Manager.creates;a.update(30001,true);
  check(Manager.creates==count,"Failure does not retry every paint");Manager.failStart=false;a.setEnabled(true);a.update(30001,true);
  check(Manager.last.started&&!a.unavailable(),"Explicit enable retries");a.close();check(Manager.last.closed,"Shutdown releases audio");
  System.out.println("PASS: "+checks+" original audio lifecycle assertions (MMAPI adapter)");
 }
}
