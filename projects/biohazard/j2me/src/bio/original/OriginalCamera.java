package bio.original;

/** 0x17858 initializes eye=210, focal=170, offset=200-(viewportHeight>>1).
 * 0x4F8C multiplies map coordinates and wall heights by four before projection.
 * The Java renderer works in map units, hence eye=52.5. */
public final class OriginalCamera {
    public static final double EYE=210.0/4;
    public final double unit,focal,horizon;
    public OriginalCamera(int width,int height,int zoom){
        // Preserve the native 176x173 view; extra aspect ratio reveals more world.
        unit=Math.min(width/176.0,height/173.0);
        focal=170*unit*zoom;
        horizon=(height+1)/2-10*unit;
    }
    public double groundY(double distance){return horizon+EYE*focal/distance;}
    public double heightY(double distance,double elevation){return horizon+(EYE-elevation)*focal/distance;}
}
