package bio.original;
import java.io.IOException;

/** Original 10000 font: 256 low-byte buckets, Unicode slots, 12-row bitmaps. */
public final class OriginalFont {
    private final byte[] data;
    private final int[] buckets=new int[257];
    private final int glyphBase,asciiBase;
    public OriginalFont(byte[] data)throws IOException{
        this.data=data;int n=Binary.i32(data,0);glyphBase=516+4*n;asciiBase=glyphBase+24*n;
        if(n<0||asciiBase+95*12>data.length)throw new IOException("Font size");
        for(int i=0;i<256;i++)buckets[i+1]=buckets[i]+Binary.u16(data,4+2*i);
        if(buckets[256]!=n)throw new IOException("Font buckets");
    }
    private int slot(char c){
        int b=c&255;
        for(int i=buckets[b];i<buckets[b+1];i++)if(Binary.u16(data,516+i*4)==c)return Binary.u16(data,518+i*4);
        if(c!='\u2026')return slot('\u2026');return 0;
    }
    public int advance(char c){return c>=32&&c<=126?6:12;}
    public void glyph(int[] pixels,int w,int h,char c,int x,int y,int color){
        boolean ascii=c>=32&&c<=126;int base=ascii?asciiBase+12*(c-32):glyphBase+24*slot(c),width=ascii?6:12;
        for(int j=0;j<12;j++){
            // Font bitmap rows are BIG endian, unlike the font index and resource headers.
            int bits=ascii?(data[base+j]&255)<<8:((data[base+2*j]&255)<<8)|(data[base+2*j+1]&255);
            for(int i=0;i<width;i++)if((bits&(0x8000>>i))!=0&&x+i>=0&&x+i<w&&y+j>=0&&y+j<h)pixels[(y+j)*w+x+i]=color;
        }
    }
    public int draw(int[] pixels,int w,int h,String s,int x,int y,int wrap,int color,int skipLines,int maxLines){
        return drawSpaced(pixels,w,h,s,x,y,wrap,color,skipLines,maxLines,0,14);
    }
    /** Text UI 0xF7D0 uses two pixels between glyphs and a 16-pixel line pitch. */
    public int drawSpaced(int[] pixels,int w,int h,String s,int x,int y,int wrap,int color,int skipLines,int maxLines,int spacing,int lineHeight){
        return flow(pixels,w,h,s,x,y,wrap,color,skipLines,maxLines,spacing,lineHeight,true);
    }
    /** 0x9534 measures the last glyph without trailing spacing, unlike the speech UI. */
    public int drawNarration(int[] pixels,int w,int h,String s,int x,int y,int wrap,int maxLines){
        return flow(pixels,w,h,s,x,y,wrap,0xffffff,0,maxLines,8,20,false);
    }
    private int flow(int[] pixels,int w,int h,String s,int x,int y,int wrap,int color,int skipLines,int maxLines,int spacing,int lineHeight,boolean trailing){
        int cx=x,line=0,shadow=0,style=0;
        for(int p=0;p<s.length();p++){
            char c=s.charAt(p);
            if(c=='$'&&p+1<s.length()){
                char t=s.charAt(p+1);
                if(t=='n'||t=='N'){c='\n';p++;}
                else if(t=='T'&&p+7<=s.length()){style=s.charAt(p+6)=='1'?1:0;p+=6;continue;}
                else if((t=='H'||t=='L'||t=='S'||t=='B')&&p+8<=s.length()){
                    int v=0;for(int k=0;k<6;k++){int d=Character.digit(s.charAt(p+2+k),16);v=(v<<4)|(d<0?0:d);}
                    if(t=='H')color=v;if(t=='S')shadow=v;p+=7;continue;
                }
            }
            if(c=='\n'){line++;cx=x;continue;}
            int step=advance(c)+spacing;if(cx+advance(c)+(trailing?spacing:0)>x+wrap&&cx>x){cx=x;line++;}
            if(line>=skipLines&&line<skipLines+maxLines){
                int yy=y+(line-skipLines)*lineHeight;
                if(style!=0)for(int oy=-1;oy<=1;oy++)for(int ox=-1;ox<=1;ox++)if(ox!=0||oy!=0)glyph(pixels,w,h,c,cx+ox,yy+oy,shadow);
                glyph(pixels,w,h,c,cx,yy,color);
            }cx+=step;
        }return line+1;
    }
}
