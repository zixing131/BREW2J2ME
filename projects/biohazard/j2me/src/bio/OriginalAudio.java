package bio;

import java.io.InputStream;
import javax.microedition.media.Manager;
import javax.microedition.media.Player;
import javax.microedition.media.control.VolumeControl;
import javax.microedition.rms.RecordStore;

/** BREW 0x199AC / 0x213A4: one looping MIDI, replaced on scene changes. */
final class OriginalAudio {
    private Player player;
    private InputStream stream;
    private int current,failedId;
    private boolean enabled=true;
    OriginalAudio(){
        RecordStore r=null;
        try{r=RecordStore.openRecordStore("bio-audio-v1",false);byte[] b=r.getRecord(1);if(b.length==1)enabled=b[0]!=0;}
        catch(Exception ignored){}finally{if(r!=null)try{r.closeRecordStore();}catch(Exception ignored){}}
    }
    boolean enabled(){return enabled;}
    boolean unavailable(){return failedId!=0;}
    void setEnabled(boolean value){
        enabled=value;failedId=0;if(!value)close();RecordStore r=null;
        try{r=RecordStore.openRecordStore("bio-audio-v1",true);byte[] b={(byte)(enabled?1:0)};
            if(r.getNumRecords()==0)r.addRecord(b,0,1);else r.setRecord(1,b,0,1);
        }catch(Exception ignored){}finally{if(r!=null)try{r.closeRecordStore();}catch(Exception ignored){}}
    }
    void update(int id,boolean active){
        if(!enabled||!active||id==0){close();return;}
        if(current==id&&player!=null||failedId==id)return;
        close();
        try{
            stream=getClass().getResourceAsStream("/audio/"+id+".mid");
            if(stream==null)throw new java.io.IOException("Missing MIDI "+id);
            player=Manager.createPlayer(stream,"audio/midi");player.realize();player.setLoopCount(-1);
            VolumeControl volume=(VolumeControl)player.getControl("VolumeControl");if(volume!=null)volume.setLevel(100);
            player.prefetch();player.start();current=id;failedId=0;
        }catch(Exception unsupported){failedId=id;close();}
    }
    void close(){
        if(player!=null){try{player.stop();}catch(Exception ignored){}try{player.close();}catch(Exception ignored){}player=null;}
        if(stream!=null){try{stream.close();}catch(Exception ignored){}stream=null;}current=0;
    }
}
