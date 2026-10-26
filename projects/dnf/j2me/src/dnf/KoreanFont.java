package dnf;
import java.io.*;
/** Original 6x10 Latin / 9x11 Hangul / 12x12 symbol rectangles, baked losslessly. */
public final class KoreanFont {
    private final char[] chars;
    private final byte[] widths;
    private final short[] rows;
    public KoreanFont()throws IOException {
        DataInputStream r=new DataInputStream(new ByteArrayInputStream(Bytes.resource("/korean.bin")));
        int n=r.readUnsignedShort();chars=new char[n];widths=new byte[n];rows=new short[n*12];
        for(int i=0;i<n;i++){chars[i]=r.readChar();widths[i]=r.readByte();for(int y=0;y<12;y++)rows[i*12+y]=r.readShort();}r.close();
    }
    private int index(char c){int lo=0,hi=chars.length-1;while(lo<=hi){int m=(lo+hi)/2;if(chars[m]==c)return m;if(chars[m]<c)lo=m+1;else hi=m-1;}return -1;}
    public int width(char c){int i=index(c);return i<0?6:widths[i];}
    public void glyph(Surface s,char c,int x,int y,int color){
        int i=index(c);if(i<0)i=index('?');if(i<0)return;
        for(int yy=0;yy<12;yy++)for(int xx=0;xx<widths[i];xx++)if((rows[i*12+yy]&(1<<xx))!=0){
            int px=x+xx,py=y+yy;if(px>=0&&py>=0&&px<s.w&&py<s.h)s.pixels[py*s.w+px]=color;
        }
    }
    /** Layout and paint share offsets so paging never skips or repeats text. */
    public int draw(Surface s,String value,int start,int x,int y,int width,int lines,int color){
        int px=x,line=0;int i=start;
        while(i<value.length()&&line<lines){char c=value.charAt(i);
            if(c=='\r'){i++;continue;}
            if(c=='\n'||c=='@'){i++;px=x;line++;continue;}
            if(c=='$'){
                if(i+3<value.length()&&(value.charAt(i+1)=='A'||value.charAt(i+1)=='a')){i+=4;color=0xffe0;}else{i++;color=0xffff;}continue;
            }
            int w=width(c);if(px+w>x+width){px=x;line++;if(line>=lines)break;}
            if(s!=null)glyph(s,c,px,y+line*14,color);px+=w;i++;
        }
        return i;
    }
}
