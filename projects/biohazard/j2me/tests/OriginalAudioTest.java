package bio;
import javax.microedition.media.*;
import bio.original.*;
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
  OriginalSession.Resources resources=new OriginalSession.Resources(){public byte[] read(int id)throws java.io.IOException{return Binary.read("/original/"+id+".bin");}};
  OriginalData data=new OriginalData(resources.read(15000),resources.read(51000));OriginalCombat c=new OriginalSession(data,resources).combat;
  java.util.Arrays.fill(c.level.collision,(byte)0);c.player.x=700;c.player.y=400;c.actors[0][OriginalCombat.X]=732;c.actors[0][OriginalCombat.Y]=400;
  SupplementalAudio s=new SupplementalAudio();check(s.enabled(),"Supplemental sound defaults on");
  check(SupplementalAudio.gun(0)==-1&&SupplementalAudio.gun(1)==0&&SupplementalAudio.gun(3)==2&&SupplementalAudio.gun(4)==1&&SupplementalAudio.gun(5)==3,"Weapon families choose appropriate shot");
  c.soundShot=1;s.tick(c);Player gun=Manager.last;check(gun.started&&gun.loops==1&&c.soundShot==-1,"Shot plays once and notification consumed");
  count=Manager.creates;c.soundShot=1;s.tick(c);check(Manager.creates==count&&gun.starts==2,"Automatic fire reuses and rewinds gun voice");
  c.soundEnemy=1;c.soundEnemyActor=0;s.tick(c);Player enemy=Manager.last;check(enemy!=gun&&enemy.started&&!gun.closed&&enemy.volume==85,"Nearby enemy and gun use distinct voices");
  c.soundEnemy=1;c.soundEnemyActor=0;s.tick(c);check(enemy.starts==1&&c.soundEnemy==0,"Enemy voices rate limited and notification consumed");
  c.actors[0][OriginalCombat.X]=828;s.tick(c);check(enemy.volume==24&&enemy.starts==1,"Moving source attenuates ongoing voice without replay");
  c.player.x=796;s.tick(c);check(enemy.volume==85,"Moving listener toward source restores gain");
  c.player.x=500;s.tick(c);check(enemy.volume==0,"Distant source silent");c.player.x=700;
  int wall=(400/16)*c.level.width*2+48;c.level.collision[wall]=2;s.tick(c);check(enemy.volume==0,"Wall occludes ongoing voice");
  c.level.collision[wall]=0;s.tick(c);check(enemy.volume==24,"Leaving occlusion restores distance gain");
  c.actors[1][OriginalCombat.X]=732;c.actors[1][OriginalCombat.Y]=400;c.soundEnemy=1;c.soundEnemyActor=1;s.tick(c);check(enemy.starts==2&&enemy.volume==85,"Much nearer enemy takes voice priority during throttle");
  c.soundEnemy=3;c.soundEnemyActor=1;s.tick(c);check(enemy.closed&&Manager.last.started,"Death takes priority over ongoing attack");
  c.soundShot=3;s.tick(c);check(gun.closed&&Manager.last.started,"Weapon family switch closes old voice");
  s.close();check(Manager.last.closed,"Pause releases effects");s.setEnabled(false);check(!new SupplementalAudio().enabled(),"Independent effects switch persists");
  count=Manager.creates;c.soundShot=1;c.soundEnemy=3;s.tick(c);check(Manager.creates==count&&c.soundShot==-1&&c.soundEnemy==0,"Muted events never replay later");
  s.setEnabled(true);Manager.failStart=true;c.soundShot=1;s.tick(c);check(Manager.last.closed,"WAV failure closes resources");count=Manager.creates;c.soundShot=1;s.tick(c);check(count==Manager.creates,"No repeat retry for unsupported WAV");
  Manager.failStart=false;s.setEnabled(true);c.soundShot=1;s.tick(c);check(Manager.last.started,"Manual enable retries WAV");s.close();
  System.out.println("PASS: "+checks+" music and supplemental audio lifecycle assertions (MMAPI adapter)");
 }
}
