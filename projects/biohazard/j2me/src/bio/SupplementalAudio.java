package bio;
import bio.original.OriginalCombat;
import bio.original.OriginalMath;
import java.io.InputStream;
import javax.microedition.media.Manager;
import javax.microedition.media.Player;
import javax.microedition.media.control.VolumeControl;
import javax.microedition.rms.RecordStore;

/** Optional licensed WAV additions, separate from the recovered BREW MIDI. */
final class SupplementalAudio {
    private static final String[] FILES={"pistol","rifle","shotgun","sniper","zombie-attack","zombie-hit","zombie-death"};
    private final Player[] players=new Player[2];
    private final InputStream[] streams=new InputStream[2];
    private final int[] ids={-1,-1};
    private final VolumeControl[] volumes=new VolumeControl[2];
    private final int[] levels={-1,-1};
    private final boolean[] failed=new boolean[7];
    private boolean enabled=true;private int enemyDelay,enemyActor=-1;
    private OriginalCombat world;
    SupplementalAudio(){RecordStore r=null;try{r=RecordStore.openRecordStore("bio-sfx-v1",false);byte[] b=r.getRecord(1);if(b.length==1)enabled=b[0]!=0;}catch(Exception ignored){}finally{if(r!=null)try{r.closeRecordStore();}catch(Exception ignored){}}}
    boolean enabled(){return enabled;}
    void setEnabled(boolean value){
        enabled=value;for(int i=0;i<failed.length;i++)failed[i]=false;if(!value)close();
        RecordStore r=null;try{r=RecordStore.openRecordStore("bio-sfx-v1",true);byte[] b={(byte)(enabled?1:0)};if(r.getNumRecords()==0)r.addRecord(b,0,1);else r.setRecord(1,b,0,1);}catch(Exception ignored){}finally{if(r!=null)try{r.closeRecordStore();}catch(Exception ignored){}}
    }
    static int gun(int effect){return effect<=0?-1:effect<=2?0:effect==3?2:effect==5||effect==12?3:1;}
    static int volume(int distance){int remaining=240-Math.max(32,distance);return remaining<=0?0:85*remaining*remaining/(208*208);}
    private int enemyVolume(OriginalCombat c,int index){
        if(index<0||index>=c.actors.length)return 0;int[] a=c.actors[index];
        int distance=OriginalMath.distance(a[OriginalCombat.X]-c.player.x,a[OriginalCombat.Y]-c.player.y),value=volume(distance);
        return value==0||!OriginalMath.sight(c.level,c.player.x,c.player.y,a[OriginalCombat.X],a[OriginalCombat.Y],distance)?0:value;
    }
    void tick(OriginalCombat c){
        if(world!=c){close();world=c;}
        int shot=c.soundShot,enemy=c.soundEnemy,actor=c.soundEnemyActor;c.soundShot=-1;c.soundEnemy=0;c.soundEnemyActor=-1;
        if(!enabled)return;if(enemyDelay>0)enemyDelay--;
        if(shot>=0)play(gun(shot),0,100);
        int gain=enemyVolume(c,actor),currentGain=enemyVolume(c,enemyActor);
        boolean nearer=actor!=enemyActor&&gain>currentGain+12;
        if(enemy>0&&gain>0&&(enemyDelay==0||enemy==3||nearer)){if(play(3+enemy,1,gain))enemyActor=actor;enemyDelay=20;}
        // A voice follows its source while playing, including movement behind a wall.
        if(players[1]!=null)level(1,enemyVolume(c,enemyActor));
    }
    private void level(int channel,int value){
        if(volumes[channel]!=null&&levels[channel]!=value)try{volumes[channel].setLevel(value);levels[channel]=value;}catch(Exception ignored){}
    }
    private boolean play(int id,int channel,int value){
        if(id<0||failed[id])return false;
        try{
            if(ids[channel]!=id){
                close(channel);streams[channel]=getClass().getResourceAsStream("/sfx/"+FILES[id]+".wav");
                if(streams[channel]==null)throw new java.io.IOException("Missing sound");
                players[channel]=Manager.createPlayer(streams[channel],"audio/x-wav");players[channel].realize();players[channel].setLoopCount(1);
                volumes[channel]=(VolumeControl)players[channel].getControl("VolumeControl");level(channel,value);
                players[channel].prefetch();ids[channel]=id;
            }else{players[channel].stop();players[channel].setMediaTime(0);level(channel,value);}
            players[channel].start();return true;
        }catch(Exception unsupported){failed[id]=true;close(channel);return false;}
    }
    private void close(int channel){
        if(players[channel]!=null){try{players[channel].stop();}catch(Exception ignored){}try{players[channel].close();}catch(Exception ignored){}players[channel]=null;}
        if(streams[channel]!=null){try{streams[channel].close();}catch(Exception ignored){}streams[channel]=null;}ids[channel]=-1;volumes[channel]=null;levels[channel]=-1;
    }
    void close(){close(0);close(1);enemyDelay=0;enemyActor=-1;world=null;}
}
