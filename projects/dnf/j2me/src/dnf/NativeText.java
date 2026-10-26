package dnf;
import javax.microedition.lcdui.Font;
import javax.microedition.lcdui.Graphics;
/** Device-font layout in physical pixels; offsets refer to the unmodified localized text. */
public final class NativeText {
    private NativeText(){}
    public static int draw(Graphics g,Font font,String text,int start,int x,int y,int width,int lines,int baseColor){
        int i=0,color=baseColor;
        // Reconstruct inline color at a resumed page boundary.
        while(i<start&&i<text.length()){
            if(text.charAt(i)=='$'){if(i+3<text.length()&&text.charAt(i+1)=='A'){color=0xffdf83;i+=4;}else{color=baseColor;i++;}}else i++;
        }
        i=start;int px=x,line=0;
        while(i<text.length()&&line<lines){char c=text.charAt(i);
            if(c=='\r'){i++;continue;}
            if(c=='\n'||c=='@'){i++;line++;px=x;continue;}
            if(c=='$'){if(i+3<text.length()&&text.charAt(i+1)=='A'){color=0xffdf83;i+=4;}else{color=baseColor;i++;}continue;}
            int cw=font.substringWidth(text,i,1);
            if(px>x&&px+cw>x+width){line++;px=x;if(line>=lines)break;}
            if(g!=null){g.setColor(color);g.drawString(text.substring(i,i+1),px,y+line*font.getHeight(),Graphics.TOP|Graphics.LEFT);}
            px+=cw;i++;
        }
        return i;
    }
}
