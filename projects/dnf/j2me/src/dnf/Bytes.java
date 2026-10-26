package dnf;
import java.io.*;
/** Little endian input, with strict boundaries matching native asset loaders. */
public final class Bytes {
    private final byte[] data;
    private int position;
    public Bytes(byte[] data) { this.data=data; }
    public static byte[] resource(String name) throws IOException {
        InputStream in=Bytes.class.getResourceAsStream(name);
        if(in==null) throw new IOException("Missing "+name);
        try { ByteArrayOutputStream out=new ByteArrayOutputStream(); byte[] b=new byte[2048]; int n;
            while((n=in.read(b))!=-1) out.write(b,0,n); return out.toByteArray();
        } finally { in.close(); }
    }
    public int u8() throws IOException { if(position>=data.length) throw new IOException("Truncated asset at "+position);return data[position++]&255; }
    public int s8() throws IOException { return (byte)u8(); }
    public int u16() throws IOException { return u8()|(u8()<<8); }
    public int s16() throws IOException { return (short)u16(); }
    public byte[] take(int count) throws IOException {
        if(count<0 || count>data.length-position) throw new IOException("Invalid asset length");
        byte[] out=new byte[count];System.arraycopy(data,position,out,0,count);position+=count;return out;
    }
    public void end() throws IOException { if(position!=data.length) throw new IOException("Trailing asset bytes: "+(data.length-position)); }
}
