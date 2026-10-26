package dnf;
import java.io.*;
import javax.microedition.media.*;
import javax.microedition.media.control.VolumeControl;
/** Bounded MMAPI players. Device decoder failures never stop the game loop. */
public final class Audio {
    public int volume=75;
    public final int[] resources,tracks,types;
    public String error="";
    private final Player[] players=new Player[3];
    private final InputStream[] streams=new InputStream[3];
    private boolean suspended;
    public Audio()throws IOException {
        DataInputStream r=new DataInputStream(new ByteArrayInputStream(Bytes.resource("/audio.bin")));
        int n=r.readUnsignedShort();resources=new int[n];tracks=new int[n];types=new int[n];
        for(int i=0;i<n;i++){resources[i]=r.readUnsignedShort();tracks[i]=r.readUnsignedByte();types[i]=r.readUnsignedByte();r.readUnsignedByte();}r.close();
    }
    private void close(int channel){
        if(players[channel]!=null){try{players[channel].close();}catch(Exception ignored){}players[channel]=null;}
        if(streams[channel]!=null){try{streams[channel].close();}catch(Exception ignored){}streams[channel]=null;}
    }
    public synchronized void stop(){for(int i=0;i<players.length;i++)close(i);}
    public synchronized void volume(int value){
        volume=Math.max(0,Math.min(100,value));
        for(int i=0;i<players.length;i++)if(players[i]!=null)try{VolumeControl c=(VolumeControl)players[i].getControl("VolumeControl");if(c!=null)c.setLevel(volume);}catch(Exception ignored){}
    }
    public synchronized void suspend(){suspended=true;for(int i=0;i<players.length;i++)if(players[i]!=null)try{players[i].stop();}catch(Exception ignored){}}
    public synchronized void resume(){suspended=false;for(int i=0;i<players.length;i++)if(players[i]!=null)try{if(players[i].getMediaTime()<players[i].getDuration()||players[i].getDuration()==Player.TIME_UNKNOWN)players[i].start();}catch(Exception ignored){}}
    private void open(int channel,String path,String mime,boolean loop,boolean optional){
        close(channel);
        try{
            InputStream in=Audio.class.getResourceAsStream(path);if(in==null){if(optional)return;throw new IOException("Missing audio resource: "+path);}streams[channel]=in;
            Player p=Manager.createPlayer(in,mime);players[channel]=p;p.realize();p.prefetch();
            VolumeControl c=(VolumeControl)p.getControl("VolumeControl");if(c!=null)c.setLevel(volume);
            p.setLoopCount(loop?-1:1);if(!suspended)p.start();
        }catch(Exception e){error=e.toString();close(channel);}
    }
    public synchronized void play(int resource,int track,boolean music,boolean loop){
        int type=-1;for(int i=0;i<resources.length;i++)if(resources[i]==resource&&tracks[i]==track){type=types[i];break;}
        if(type<0){error="Missing audio "+resource+":"+track;return;}
        error="";String base="/audio/"+resource+"-"+track;
        open(music?0:1,base+(type==0?".wav":".mid"),type==0?"audio/x-wav":"audio/midi",loop,false);
        close(2);if(type==0)open(2,base+"-guide.mid","audio/midi",false,true);
    }
    public synchronized void preview(int index){stop();play(resources[index],tracks[index],true,false);}
}
