package javax.microedition.rms;
public interface RecordEnumeration {boolean hasNextElement();byte[] nextRecord()throws Exception;void destroy();}
