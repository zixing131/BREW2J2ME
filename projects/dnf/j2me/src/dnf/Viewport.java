package dnf;
public final class Viewport {
    private Viewport(){}
    public static boolean defaultTouch(int w,int h){return !((w<=240&&h<=320)||(w<=320&&h<=240));}
}
