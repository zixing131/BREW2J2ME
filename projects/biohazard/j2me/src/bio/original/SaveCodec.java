package bio.original;
import java.io.*;

/** Versioned J2ME snapshot; embeds the original 856-byte record without changing it. */
public final class SaveCodec {
    private static final int MAGIC=0x42494f33,VERSION=1;
    public static int crc(byte[] b,int len){int c=-1;for(int i=0;i<len;i++){c^=b[i]&255;for(int j=0;j<8;j++)c=(c>>>1)^((c&1)!=0?0xedb88320:0);}return ~c;}
    private static void ints(DataOutputStream o,int[] a)throws IOException{for(int i=0;i<a.length;i++)o.writeInt(a[i]);}
    private static void readInts(DataInputStream in,int[] a)throws IOException{for(int i=0;i<a.length;i++)a[i]=in.readInt();}
    public static byte[] encode(OriginalSession s,long time,int sequence)throws IOException{
        s.player.validate();ByteArrayOutputStream bytes=new ByteArrayOutputStream();DataOutputStream o=new DataOutputStream(bytes);
        o.writeInt(MAGIC);o.writeInt(VERSION);o.writeLong(time);o.writeInt(sequence);o.write(s.player.brewSave());
        o.writeInt(s.player.maxHp);o.writeBoolean(s.player.invisible);o.writeInt(s.player.invisibilityTicks);o.writeBoolean(s.player.infiniteAmmo);
        OriginalVM v=s.vm;ints(o,new int[]{v.event,v.pc,v.textId,v.speaker,v.dialogMode,v.overlayColor,v.overlayAmount,v.fadeColor,v.unsupported,v.transitionLevel,v.transitionX,v.transitionY,v.transitionAngle,v.cellX,v.cellY,v.offer});
        o.writeBoolean(v.running);o.writeBoolean(v.condition);o.writeBoolean(v.ended);o.writeInt(v.fired.length);for(int i=0;i<v.fired.length;i++)o.writeBoolean(v.fired[i]);
        ScriptAction a=v.action;ints(o,new int[]{a.kind,a.frame,a.duration,a.targetAngle,a.direction,a.startX,a.startY,a.targetX,a.targetY,a.x,a.y,a.angle,a.renderFlags});
        OriginalCombat c=s.combat;ints(o,new int[]{c.ticks,c.randomState,c.cooldown,c.reload,c.switchFrame,c.nextSlot,c.zoom,c.target,c.targetMode,c.targetDistance,c.shots,c.hurt,c.pendingEvent});o.writeBoolean(c.fireRequested);
        o.writeInt(c.actors.length);for(int i=0;i<c.actors.length;i++)ints(o,c.actors[i]);for(int i=0;i<40;i++)ints(o,c.projectiles[i]);
        o.flush();byte[] body=bytes.toByteArray();o.writeInt(crc(body,body.length));o.flush();return bytes.toByteArray();
    }
    public static OriginalSession decode(byte[] b,OriginalData data,OriginalSession.Resources resources)throws IOException{
        if(b==null||b.length<900||b.length>100000)throw new IOException("Snapshot length");
        DataInputStream tail=new DataInputStream(new ByteArrayInputStream(b,b.length-4,4));if(crc(b,b.length-4)!=tail.readInt())throw new IOException("Snapshot checksum");
        DataInputStream in=new DataInputStream(new ByteArrayInputStream(b,0,b.length-4));if(in.readInt()!=MAGIC||in.readInt()!=VERSION)throw new IOException("Snapshot version");
        long time=in.readLong();int seq=in.readInt();byte[] raw=new byte[856];in.readFully(raw);OriginalPlayer p=OriginalPlayer.fromBrew(data,raw);
        p.maxHp=in.readInt();p.invisible=in.readBoolean();p.invisibilityTicks=in.readInt();p.infiniteAmmo=in.readBoolean();p.validate();
        OriginalSession s=new OriginalSession(data,resources,p);s.savedAt=time;s.saveSequence=seq;OriginalVM v=s.vm;
        v.event=in.readInt();v.pc=in.readInt();v.textId=in.readInt();v.speaker=in.readInt();v.dialogMode=in.readInt();v.overlayColor=in.readInt();v.overlayAmount=in.readInt();v.fadeColor=in.readInt();v.unsupported=in.readInt();v.transitionLevel=in.readInt();v.transitionX=in.readInt();v.transitionY=in.readInt();v.transitionAngle=in.readInt();v.cellX=in.readInt();v.cellY=in.readInt();v.offer=in.readInt();
        v.running=in.readBoolean();v.condition=in.readBoolean();v.ended=in.readBoolean();if(in.readInt()!=v.fired.length)throw new IOException("Script version mismatch");for(int i=0;i<v.fired.length;i++)v.fired[i]=in.readBoolean();
        if(v.event< -1||v.event>=v.script.count||v.pc<0||(v.event>=0&&v.pc>v.script.commands[v.event].length/8)||(v.running&&v.event<0))throw new IOException("Script position");
        ScriptAction a=v.action;a.kind=in.readInt();a.frame=in.readInt();a.duration=in.readInt();a.targetAngle=in.readInt();a.direction=in.readInt();a.startX=in.readInt();a.startY=in.readInt();a.targetX=in.readInt();a.targetY=in.readInt();a.x=in.readInt();a.y=in.readInt();a.angle=in.readInt();a.renderFlags=in.readInt();
        if(a.kind<0||a.kind>22||(a.kind==19&&a.duration<=0))throw new IOException("Script action");
        OriginalCombat c=s.combat;c.ticks=in.readInt();c.randomState=in.readInt();c.cooldown=in.readInt();c.reload=in.readInt();c.switchFrame=in.readInt();c.nextSlot=in.readInt();c.zoom=in.readInt();c.target=in.readInt();c.targetMode=in.readInt();c.targetDistance=in.readInt();c.shots=in.readInt();c.hurt=in.readInt();c.pendingEvent=in.readInt();c.fireRequested=in.readBoolean();
        if(in.readInt()!=c.actors.length)throw new IOException("Actor count");for(int i=0;i<c.actors.length;i++){
            readInts(in,c.actors[i]);int[] q=c.actors[i];if(q[1]<16||q[2]<16||q[1]>s.level.width*32-17||q[2]>s.level.height*32-17||q[6]<0||q[6]>2)throw new IOException("Actor state");}
        for(int i=0;i<40;i++)readInts(in,c.projectiles[i]);if(in.available()!=0)throw new IOException("Trailing snapshot data");
        if(c.target< -1||c.target>=c.actors.length||c.cooldown<0||c.reload<0)throw new IOException("Combat state");c.rebuildOccupancy();return s;
    }
}
