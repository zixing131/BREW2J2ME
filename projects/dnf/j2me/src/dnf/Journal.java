package dnf;
import java.io.*;
/** Original diary text; archive browsing does not grant quest completion. */
public final class Journal {
    public final String[] titles,bodies;
    public Journal()throws IOException {this(false);}
    public Journal(boolean chinese)throws IOException {
        DataInputStream r=new DataInputStream(new ByteArrayInputStream(Bytes.resource(chinese?"/diary-zh-CN.bin":"/diary.bin")));
        int n=r.readUnsignedShort();titles=new String[n];bodies=new String[n];for(int i=0;i<n;i++){titles[i]=r.readUTF();bodies[i]=r.readUTF();}r.close();
    }
}
