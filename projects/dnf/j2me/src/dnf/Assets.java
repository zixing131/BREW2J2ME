package dnf;
import java.io.IOException;
import java.util.Hashtable;
/** Cache is scene-owned; changing maps cannot grow the cache indefinitely. */
public final class Assets {
    private final Hashtable images=new Hashtable();
    public Dat dat(int id) throws IOException {
        Integer key=new Integer(id);Dat d=(Dat)images.get(key);
        if(d==null){d=new Dat(read(id,"dat"));images.put(key,d);}return d;
    }
    public static byte[] read(int id,String type)throws IOException {return Bytes.resource("/original/"+id+"."+type);}
}
