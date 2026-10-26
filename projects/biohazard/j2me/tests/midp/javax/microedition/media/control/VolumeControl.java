package javax.microedition.media.control;
import javax.microedition.media.Player;
public final class VolumeControl {private Player p;public VolumeControl(Player p){this.p=p;}public int setLevel(int n){p.volume=n;return n;}}
