package dnf;
import java.io.IOException;
/** Development interaction layer. Quest/combat dispatch is explicitly still pending. */
public final class Session {
    public static final int LEFT=1,RIGHT=2,UP=4,DOWN=8;
    public static final int[] TICK_MS={120,60,30,20,10}; // Native data table at 0x1402f90.
    public World world;public Actor hero;
    public int x,y,speed=2,touchMode,combo;
    public boolean mirror,actionViewer;
    private int queued=-1;
    private Reactions reactions;
    private int sound=-1;
    public void load(int id)throws IOException {
        Assets a=new Assets();World w=new World(id,a);Actor h=new Actor(0,a);if(reactions==null)reactions=new Reactions();sound=-1;
        world=w;hero=h;int[] p=w.start();x=p[0];y=p[1];mirror=false;combo=0;queued=-1;actionViewer=false;
    }
    public void restore(SaveData save)throws IOException {
        load(save.map);if(world.canStand(save.x,save.y)){x=save.x;y=save.y;}
        hero.setFamily(save.family);speed=save.speed;touchMode=save.touchMode;
    }
    public SaveData save(){SaveData s=new SaveData();s.map=world.id;s.x=x;s.y=y;s.family=hero.family;s.speed=speed;s.touchMode=touchMode;return s;}
    public void attack(){
        actionViewer=false;int c=hero.animation.clip;
        if(c>=20&&c<=22){if(c<22){queued=c+1;hero.animation.nextOverride=queued;}}
        else {combo=20;hero.animation.start(20);queued=-1;}
    }
    public void inspectAction(int change){
        actionViewer=true;Animation a=hero.animation;int c=(a.clip+change+a.actions.clips.length)%a.actions.clips.length;
        for(int i=0;i<a.actions.clips.length&&a.actions.clips[c].frames.length==0;i++)c=(c+1)%a.actions.clips.length;
        a.start(c);a.nextOverride=c;
    }
    public void tick(int keys){
        Animation a=hero.animation;
        if(!actionViewer&&(a.clip==0||a.clip==2)){
            int dx=((keys&RIGHT)!=0?1:0)-((keys&LEFT)!=0?1:0),dy=((keys&DOWN)!=0?1:0)-((keys&UP)!=0?1:0);
            if(dx!=0||dy!=0){if(dx!=0)mirror=dx<0;if(a.clip!=2)a.start(2);
                // Scene navigation is a port adapter until original player state dispatch is restored.
                int step=3;
                for(int i=0;i<step;i++){if(dx!=0&&world.canStand(x+dx,y))x+=dx;if(dy!=0&&world.canStand(x,y+dy))y+=dy;}
            }else if(a.clip==2)a.start(0);
        }
        int old=a.clip;a.tick();
        if(a.active&&a.elapsed==0)sound=reactions.sound(a.current().fields[5]&255,false);
        if(actionViewer&&a.active&&a.nextOverride==255)a.nextOverride=a.clip;
        if(!a.active&&!actionViewer)a.start(0);
        if(old!=a.clip&&queued==a.clip)queued=-1;
    }
    public int takeSound(){int value=sound;sound=-1;return value;}
    public void draw(Surface surface){
        int cx=Math.max(0,Math.min(world.width-surface.w,x-surface.w/2));
        int cy=Math.max(0,Math.min(world.height-surface.h,y-surface.h*2/3));
        world.draw(surface,cx,cy);hero.draw(surface,x-cx,y-cy,mirror);
    }
}
