package javax.microedition.rms;
import java.util.*;
/** In-memory RMS adapter with failure injection; production journal code is unchanged. */
public final class RecordStore {
 static final Map<String,RecordStore> stores=new HashMap<String,RecordStore>();
 private final List<byte[]> records=new ArrayList<byte[]>();public static boolean failWrites;
 public static RecordStore openRecordStore(String name,boolean create)throws Exception{RecordStore r=stores.get(name);if(r==null){if(!create)throw new Exception("No store");r=new RecordStore();stores.put(name,r);}return r;}
 public void closeRecordStore(){}public int getNumRecords(){return records.size();}
 public byte[] getRecord(int id)throws Exception{if(id<1||id>records.size())throw new Exception("No record");return records.get(id-1).clone();}
 public void setRecord(int id,byte[] b,int o,int n)throws Exception{if(failWrites)throw new Exception("Disk full");if(id<1||id>records.size())throw new Exception("No record");records.set(id-1,Arrays.copyOfRange(b,o,o+n));}
 public int addRecord(byte[] b,int o,int n)throws Exception{if(failWrites)throw new Exception("Disk full");records.add(Arrays.copyOfRange(b,o,o+n));return records.size();}
 public RecordEnumeration enumerateRecords(Object f,Object c,boolean keep){return new RecordEnumeration(){int i;public boolean hasNextElement(){return i<records.size();}public byte[] nextRecord()throws Exception{return getRecord(++i);}public void destroy(){}};}
}
