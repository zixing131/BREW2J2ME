package bio.original;

/** Non-modal scrolling hint, recovered from 0xE00 / 0x20228 / 0x1D040. */
public final class OriginalNotice {
    public String message="";
    public int x,width;
    public boolean active;
    public void show(String text,int textWidth,int screenWidth){
        message=text;width=textWidth;x=3*screenWidth/4;active=true;
    }
    public void tick(int screenWidth){
        if(!active)return;
        if(width+x<(screenWidth>>2)){active=false;message="";}
        x=(short)(x-4);
    }
    public void clear(){active=false;message="";x=width=0;}
}
