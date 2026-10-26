package javax.microedition.media;
import java.io.*;
public final class Manager {
 public static Player last;public static int creates;public static boolean failStart;
 public static Player createPlayer(InputStream in,String mime)throws Exception{
  String header="";for(int i=0;i<4;i++)header+=(char)in.read();
  if(!(mime.equals("audio/midi")&&header.equals("MThd")||mime.equals("audio/x-wav")&&header.equals("RIFF")))throw new IOException("Audio header");
  creates++;return last=new Player();
 }
}
