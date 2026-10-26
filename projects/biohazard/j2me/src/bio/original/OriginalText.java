package bio.original;
import java.io.IOException;

/** 0x19618: IDs followed by END offsets, UTF-16LE strings. */
public final class OriginalText {
    private final byte[] raw;
    private final int count;
    public OriginalText(byte[] raw)throws IOException{
        this.raw=raw;count=Binary.i32(raw,0);
        if(count<0||count>(raw.length-4)/8)throw new IOException("Text index");
        int start=4+8*count;
        for(int i=0;i<count;i++){
            int end=Binary.i32(raw,4+4*count+4*i);
            if(end<start||end>raw.length||(end-start)%2!=0)throw new IOException("Text bounds");start=end;
        }
    }
    public String get(int id){
        int lo=0,hi=count-1;
        while(lo<=hi){int m=(lo+hi)/2,k=Binary.i32(raw,4+m*4);
            if(k<id)lo=m+1;else if(k>id)hi=m-1;else{
                int start=m==0?4+8*count:Binary.i32(raw,4+4*count+4*(m-1));
                int end=Binary.i32(raw,4+4*count+4*m);StringBuffer out=new StringBuffer();
                for(int p=start;p<end;p+=2){char c=(char)Binary.u16(raw,p);if(c==0)break;out.append(c);}return out.toString();
            }
        }
        return "["+id+"]";
    }
    /** Plain text for diagnostics; bitmap UI handles color/style tags separately. */
    public static String plain(String s){
        StringBuffer b=new StringBuffer();
        for(int i=0;i<s.length();i++){
            char c=s.charAt(i);
            if(c=='$'&&i+1<s.length()){
                char t=s.charAt(i+1);int n=t=='T'?7:(t=='H'||t=='L'||t=='S'||t=='B'?8:0);
                if(t=='n'){b.append('\n');i++;continue;}
                if(n>0&&i+n<=s.length()){i+=n-1;continue;}
            }
            b.append(c);
        }return b.toString();
    }
}
