package javax.microedition.lcdui;
public final class Graphics {
    public static final int TOP=16,LEFT=4,HCENTER=1,RIGHT=8;
    private final java.awt.Graphics2D g;
    private Font font=new Font();
    public Graphics(java.awt.image.BufferedImage image){g=image.createGraphics();g.setFont(font.awt);}
    public void setColor(int rgb){g.setColor(new java.awt.Color(rgb));}
    public void fillRect(int x,int y,int w,int h){g.fillRect(x,y,w,h);}
    public void drawRect(int x,int y,int w,int h){g.drawRect(x,y,w,h);}
    public void setFont(Font f){font=f;g.setFont(f.awt);}public Font getFont(){return font;}
    public void drawString(String s,int x,int y,int anchor){if((anchor&HCENTER)!=0)x-=g.getFontMetrics().stringWidth(s)/2;else if((anchor&RIGHT)!=0)x-=g.getFontMetrics().stringWidth(s);g.drawString(s,x,y+g.getFontMetrics().getAscent());}
    public void drawImage(Image i,int x,int y,int anchor){g.drawImage(i.image,x,y,null);}
    public void drawRGB(int[] rgb,int off,int stride,int x,int y,int w,int h,boolean alpha){java.awt.image.BufferedImage b=new java.awt.image.BufferedImage(w,h,java.awt.image.BufferedImage.TYPE_INT_RGB);b.setRGB(0,0,w,h,rgb,off,stride);g.drawImage(b,x,y,null);}
}
