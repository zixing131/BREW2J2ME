package bio;

import javax.microedition.midlet.MIDlet;
import javax.microedition.lcdui.Display;

public final class BioMIDlet extends MIDlet {
    private OriginalCanvas canvas;
    public void startApp(){
        if(canvas==null)canvas=new OriginalCanvas(this);
        Display.getDisplay(this).setCurrent(canvas);canvas.activate();
    }
    public void pauseApp(){if(canvas!=null)canvas.suspend();}
    public void destroyApp(boolean unconditional){if(canvas!=null)canvas.shutdown();}
    void quit(){destroyApp(true);notifyDestroyed();}
}
