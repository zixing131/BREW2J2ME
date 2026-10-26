package bio;
import bio.original.*;
import javax.microedition.rms.*;

/** Three manual slots plus autosave. Alternating records retain the previous valid save. */
final class OriginalSaves {
    private static String name(int slot){return "bio-original-v3-"+slot;}
    static OriginalSession load(int slot,OriginalData data,OriginalSession.Resources resources)throws Exception{
        RecordStore r=RecordStore.openRecordStore(name(slot),false);OriginalSession best=null;
        try{RecordEnumeration e=r.enumerateRecords(null,null,false);try{while(e.hasNextElement()){
            try{OriginalSession s=SaveCodec.decode(e.nextRecord(),data,resources);if(best==null||s.saveSequence>best.saveSequence)best=s;}catch(Exception badRecord){}
        }}finally{e.destroy();}}finally{r.closeRecordStore();}
        if(best==null)throw new Exception("No valid save in slot "+(slot+1));return best;
    }
    static void save(int slot,OriginalSession session)throws Exception{
        RecordStore r=RecordStore.openRecordStore(name(slot),true);int latestId=-1,latestSeq=0;
        try{
            for(int id=1;id<=2;id++)try{OriginalSession s=SaveCodec.decode(r.getRecord(id),session.data,session.resources);if(latestId<0||s.saveSequence>latestSeq){latestId=id;latestSeq=s.saveSequence;}}catch(Exception ignored){}
            long time=System.currentTimeMillis();byte[] b=SaveCodec.encode(session,time,latestSeq+1);int target=latestId==1?2:1;
            while(r.getNumRecords()<target){if(r.getNumRecords()+1==target)r.addRecord(b,0,b.length);else r.addRecord(new byte[0],0,0);}
            r.setRecord(target,b,0,b.length);
            // Read back the committed record before reporting success.
            SaveCodec.decode(r.getRecord(target),session.data,session.resources);session.savedAt=time;session.saveSequence=latestSeq+1;
        }finally{r.closeRecordStore();}
    }
    static String description(int slot,OriginalData data,OriginalSession.Resources resources){
        try{OriginalSession s=load(slot,data,resources);java.util.Calendar c=java.util.Calendar.getInstance();c.setTime(new java.util.Date(s.savedAt));
            return "L"+s.player.level+" HP"+s.player.hp+" "+(c.get(java.util.Calendar.MONTH)+1)+"/"+c.get(java.util.Calendar.DAY_OF_MONTH)+" "+c.get(java.util.Calendar.HOUR_OF_DAY)+":"+two(c.get(java.util.Calendar.MINUTE));
        }catch(Exception e){return "EMPTY / NO VALID SAVE";}
    }
    private static String two(int n){return n<10?"0"+n:""+n;}
}
