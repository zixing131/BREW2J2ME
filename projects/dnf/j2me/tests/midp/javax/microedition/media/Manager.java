package javax.microedition.media;
import java.io.*;
import java.util.ArrayList;
public final class Manager {
    public static final ArrayList<Player> created=new ArrayList<Player>();
    public static boolean fail;
    public static Player createPlayer(InputStream in,String mime)throws IOException {
        if(fail)throw new IOException("simulated unsupported codec");
        byte[] head=new byte[4];if(in.read(head)!=4)throw new IOException("empty audio");
        String magic=new String(head,"US-ASCII");if(!magic.equals("RIFF")&&!magic.equals("MThd"))throw new IOException("bad audio signature");
        Player p=new Player();created.add(p);return p;
    }
}
