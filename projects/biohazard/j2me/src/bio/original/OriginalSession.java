package bio.original;
import java.io.IOException;

/** Owns the original world/state transitions; no platform UI/RMS dependencies. */
public final class OriginalSession {
    public interface Resources {byte[] read(int id)throws IOException;}
    public final OriginalData data;
    public final Resources resources;
    public OriginalPlayer player;
    public OriginalLevel level;
    public OriginalVM vm;
    public OriginalCombat combat;
    public long savedAt;
    public int saveSequence;
    private OriginalText storyText;
    public OriginalSession(OriginalData data,Resources resources)throws IOException{this(data,resources,new OriginalPlayer(data));}
    public OriginalSession(OriginalData data,Resources resources,OriginalPlayer player)throws IOException{this.data=data;this.resources=resources;this.player=player;load(player.level,player.x,player.y,player.angle);}
    public void load(int n,int x,int y,int angle)throws IOException{
        if(n<1||n>16)throw new IOException("Level number");
        OriginalLevel next=new OriginalLevel(52000+n-1,resources.read(52000+n-1));OriginalScript script=new OriginalScript(resources.read(11000+n-1));
        if(x<16||y<16||x>next.width*32-17||y>next.height*32-17)throw new IOException("Position outside level");
        level=next;player.level=n;player.x=x;player.y=y;player.angle=(angle%360+360)%360;
        vm=new OriginalVM(script,player);combat=new OriginalCombat(player,level);combat.rebuildOccupancy();
    }
    public void tick(int input)throws IOException{
        if(player.hp<=0||vm.ended)return;
        if(!vm.busy()){
            combat.tick(input);
            if(combat.pendingEvent>=0){vm.explicit(combat.pendingEvent);combat.pendingEvent=-1;}
            vm.trigger(2,player.x,player.y);vm.trigger(0,player.x,player.y);
            vm.region(player.x,player.y,false);
        }else combat.ticks++;
        if(vm.action.kind==17&&vm.narration!=null){vm.narration.tick();if(!vm.narration.active)vm.action.kind=0;}
        vm.action.x=player.x;vm.action.y=player.y;vm.action.angle=player.angle;vm.step();ensureNarration();
        if(player.x!=vm.action.x||player.y!=vm.action.y){level.mark((player.x-8)/16,(player.y-8)/16,8,false);level.mark((vm.action.x-8)/16,(vm.action.y-8)/16,8,true);}
        player.x=vm.action.x;player.y=vm.action.y;player.angle=vm.action.angle;
        if(vm.transitionLevel!=0)load(vm.transitionLevel,vm.transitionX,vm.transitionY,vm.transitionAngle);
    }
    public void ensureNarration()throws IOException{
        if(vm.action.kind==17&&vm.narration==null){
            if(storyText==null)storyText=new OriginalText(resources.read(0));
            vm.narration=new OriginalNarration(OriginalDialogue.message(vm,storyText));
        }
    }
    public void fire(){if(!vm.busy()&&player.hp>0){if(vm.region(player.x,player.y,true)<0)combat.fire();}}
}
