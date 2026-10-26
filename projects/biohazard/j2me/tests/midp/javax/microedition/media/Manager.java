package javax.microedition.media;
import java.io.*;
public final class Manager {
 public static Player last;public static int creates;public static boolean failStart;
 public static Player createPlayer(InputStream in,String mime)throws Exception{
  if(!mime.equals("audio/midi")||in.read()!='M'||in.read()!='T'||in.read()!='h'||in.read()!='d')throw new IOException("MIDI header");
  creates++;return last=new Player();
 }
}
