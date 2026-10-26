package bio.original;
import java.io.*;
public final class Binary {
    public static int u16(byte[] b,int p){return (b[p]&255)|((b[p+1]&255)<<8);}
    public static int s16(byte[] b,int p){return (short)u16(b,p);}
    public static int i32(byte[] b,int p){return u16(b,p)|(u16(b,p+2)<<16);}
    public static byte[] read(String name)throws IOException{
        InputStream in=Binary.class.getResourceAsStream(name);
        if(in==null)throw new IOException("Missing "+name);
        ByteArrayOutputStream out=new ByteArrayOutputStream();byte[] chunk=new byte[2048];
        try{int n;while((n=in.read(chunk))!=-1)out.write(chunk,0,n);}finally{in.close();}
        return out.toByteArray();
    }
    public static byte[] slice(byte[] b,int p,int n)throws IOException{
        if(p<0 || n<0 || p>b.length-n)throw new IOException("Resource bounds");
        byte[] out=new byte[n];System.arraycopy(b,p,out,0,n);return out;
    }
}
