package bio.original;

/** Same geometry drives drawing and hit testing, including orientation changes. */
public final class ScreenLayout {
    public final int screenWidth,screenHeight,scale,width,height,hud,touchHeight,viewHeight,rowHeight;
    public final boolean touch;
    /** QVGA and smaller default to keypad; orientation does not change the rule. */
    public static boolean defaultTouch(int w,int h){return Math.min(w,h)>240||Math.max(w,h)>320;}
    public ScreenLayout(int w,int h,boolean touch){
        screenWidth=Math.max(1,w);screenHeight=Math.max(1,h);scale=Math.max(1,Math.min(2,Math.min(w/176,h/220)));
        width=screenWidth/scale;height=screenHeight/scale;this.touch=touch;hud=touch?61:47;
        touchHeight=touch?Math.min(76,Math.max(48,height/4)):0;viewHeight=Math.max(40,height-hud);rowHeight=Math.min(32,Math.max(22,(height-54)/6));
    }
    public int menuTop(int count){return Math.max(27,(height-count*rowHeight)/2);}
    public int menuHit(int x,int y,int count,int scroll,int shown){
        int top=menuTop(shown);if(x<width/10||x>=width-width/10||y<top||y>=top+shown*rowHeight)return -1;int i=scroll+(y-top)/rowHeight;return i<count?i:-1;
    }
    /** Numeric keypad equivalent, negative=none. */
    public int touchKey(int x,int y){
        if(!touch||x<0||y<0||x>=width||y>=height)return -1;
        if(y<hud){if(x<width/3)return 0;if(x<2*width/3)return 10;return 11;}
        if(y<height-touchHeight)return -1;
        int split=width*3/5;
        if(x>=split){int yy=(y-(height-touchHeight))*2/touchHeight;return yy==0?5:7;}
        int col=x*3/split,row=(y-(height-touchHeight))*3/touchHeight;
        return 1+row*3+col;
    }
}
