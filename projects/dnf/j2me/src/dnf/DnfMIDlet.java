package dnf;
import javax.microedition.midlet.MIDlet;
import javax.microedition.lcdui.Display;
public final class DnfMIDlet extends MIDlet {
    private DnfCanvas canvas;
    public void startApp(){if(canvas==null)canvas=new DnfCanvas(this);Display.getDisplay(this).setCurrent(canvas);canvas.resume();}
    public void pauseApp(){if(canvas!=null)canvas.suspend();}
    public void destroyApp(boolean unconditional){if(canvas!=null)canvas.stop();}
    public void quit(){destroyApp(true);notifyDestroyed();}
}
