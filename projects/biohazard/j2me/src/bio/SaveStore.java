package bio;

import java.io.*;
import javax.microedition.rms.RecordStore;

/** A separate RMS store; never imports or overwrites the BREW save.dat. */
final class SaveStore {
    private static final String NAME="bio-j2me-demo-v1";
    static void save(GameState state) throws Exception {
        ByteArrayOutputStream bytes=new ByteArrayOutputStream();
        DataOutputStream out=new DataOutputStream(bytes);state.write(out);out.flush();
        byte[] data=bytes.toByteArray();RecordStore store=RecordStore.openRecordStore(NAME,true);
        try { if(store.getNumRecords()==0)store.addRecord(data,0,data.length);
            else store.setRecord(1,data,0,data.length);
        } finally {store.closeRecordStore();}
    }
    static GameState load() throws Exception {
        RecordStore store=RecordStore.openRecordStore(NAME,false);
        try {return GameState.read(new DataInputStream(new ByteArrayInputStream(store.getRecord(1))));}
        finally {store.closeRecordStore();}
    }
}
