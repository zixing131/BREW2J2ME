package javax.microedition.lcdui;
public final class Font {
    public static final int FACE_SYSTEM=0,STYLE_PLAIN=0,SIZE_SMALL=0;
    final java.awt.Font awt=new java.awt.Font("SansSerif",0,12);
    public static Font getFont(int a,int b,int c){return new Font();}
    public int getHeight(){return 16;}
    public int substringWidth(String s,int p,int n){return new java.awt.Canvas().getFontMetrics(awt).stringWidth(s.substring(p,p+n));}
}
