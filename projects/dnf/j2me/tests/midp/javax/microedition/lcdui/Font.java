package javax.microedition.lcdui;
public final class Font {
    public static final int FACE_SYSTEM=0,STYLE_PLAIN=0,SIZE_SMALL=8,SIZE_MEDIUM=0,SIZE_LARGE=16;
    final java.awt.Font awt;
    public Font(){this(SIZE_MEDIUM);}
    private Font(int size){awt=new java.awt.Font("SansSerif",0,size==SIZE_SMALL?12:size==SIZE_LARGE?20:16);}
    public static Font getFont(int a,int b,int c){return new Font(c);}
    public int getHeight(){return awt.getSize()+4;}
    public int stringWidth(String s){return substringWidth(s,0,s.length());}
    public int substringWidth(String s,int p,int n){return new java.awt.Canvas().getFontMetrics(awt).stringWidth(s.substring(p,p+n));}
}
