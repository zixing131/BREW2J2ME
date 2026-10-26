package javax.microedition.rms;
import java.io.IOException;
import java.util.HashMap;
public final class RecordStore {
    private static final HashMap<String,byte[]> data=new HashMap<String,byte[]>();
    private String name;
    public static RecordStore openRecordStore(String name,boolean create)throws IOException {
        if(!create&&!data.containsKey(name))throw new IOException("Missing record");RecordStore r=new RecordStore();r.name=name;return r;
    }
    public void closeRecordStore(){}
    public int getNumRecords(){return data.containsKey(name)?1:0;}
    public byte[] getRecord(int id)throws IOException {if(!data.containsKey(name))throw new IOException("Missing record");return (byte[])data.get(name).clone();}
    public int addRecord(byte[] b,int off,int len){setRecord(1,b,off,len);return 1;}
    public void setRecord(int id,byte[] b,int off,int len){byte[] c=new byte[len];System.arraycopy(b,off,c,0,len);data.put(name,c);}
}
