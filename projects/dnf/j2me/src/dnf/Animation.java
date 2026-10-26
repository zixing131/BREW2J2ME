package dnf;
/** Byte-for-byte state semantics of ARM 0x6c8d0 and 0x6c9bc. */
public final class Animation {
    public final ActionSet actions;
    public int clip,frame,elapsed,duration,nextDefault,nextOverride=255;
    public boolean active,finished;
    public Animation(ActionSet actions) { this.actions=actions;start(0); }
    public void start(int value) {
        if(value<0||value>=actions.clips.length||actions.clips[value].frames.length==0)throw new IllegalArgumentException("Empty/invalid action "+value);
        clip=value;nextDefault=actions.clips[value].next;frame=0;elapsed=0;nextOverride=255;duration=current().duration;active=true;finished=false;
    }
    public ActionSet.Frame current(){return actions.clips[clip].frames[frame];}
    public void tick() {
        if(!active)return;
        elapsed=(elapsed+1)&255;
        if(duration>=elapsed)return;
        elapsed=0;
        if(frame<actions.clips[clip].frames.length-1)frame=(frame+1)&255;
        else {
            frame=0;int next=nextOverride;
            if(next==255)next=actions.clips[clip].next;else nextOverride=255;
            if(next==255){active=false;finished=true;return;}
            if(next>=actions.clips.length||actions.clips[next].frames.length==0){active=false;finished=true;return;}
            clip=next;
        }
        duration=current().duration;active=true;
    }
}
