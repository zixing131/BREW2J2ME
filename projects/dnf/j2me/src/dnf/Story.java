package dnf;
import java.io.*;
/** Native ANI object/event timeline. Campaign entry/quest dispatch is kept separate. */
public final class Story {
    public final int id,duration,exitType,nextId;
    public final boolean nativeText;
    public final int[] exitWords=new int[10];
    public final Node[] nodes;
    public int tick,dialogue=-1,music=-1,pageStart,pageEnd;
    public boolean waiting,finished;
    private final byte[] events;
    private final KoreanFont font;
    private Node camera;
    private World world;
    private Actor bubble;
    private int lastProcessed=-1;
    public static final class Node {
        public byte[] record,commands;
        public int kind,x,y,frame,action,start,next=60000,nextOffset,count,velocityX,velocityY,velocityStart,weight;
        public boolean hidden,mirror,velocity,frozen,dialog,wait;
        public int fixedFrame,loopStart=-1,loopEnd=-1;
        public Actor actor;public FrameImage image;public Dat dat;
        public String speaker="",text="";
    }
    public static int u16(byte[] b,int p){return (b[p]&255)|((b[p+1]&255)<<8);}
    public static int s16(byte[] b,int p){return (short)u16(b,p);}
    public static int i32(byte[] b,int p){return u16(b,p)|(u16(b,p+2)<<16);}
    private static int alias(int id){
        switch(id){case 30038:case 30039:case 30059:case 30061:case 30062:case 30063:case 30064:case 30083:case 30101:case 31061:case 31064:return id+2000;default:return id;}
    }
    public Story(int id,KoreanFont font)throws IOException {this(id,font,false);}
    public Story(int id,KoreanFont font,boolean nativeText)throws IOException {
        this.id=id;this.font=font;this.nativeText=nativeText;byte[] data=Assets.read(id,"ani");
        if(data.length<33)throw new IOException("ANI header");
        int count=data[1]&255;duration=u16(data,2);int eb=u16(data,4),tb=u16(data,6),eo=u16(data,8),to=u16(data,10);
        if(eo!=12+count*36||to!=eo+eb||data.length!=to+tb+21)throw new IOException("ANI bounds");
        for(int i=0;i<10;i++)exitWords[i]=u16(data,to+tb+1+i*2);
        exitType=data[to+tb]&255;nextId=u16(data,to+tb+13);events=new byte[eb];System.arraycopy(data,eo,events,0,eb);
        DataInputStream text=new DataInputStream(new ByteArrayInputStream(Bytes.resource("/story/"+(nativeText?"zh-CN/":"")+id+".text")));
        if(text.readUnsignedShort()!=count)throw new IOException("ANI text count");
        Assets assets=new Assets();nodes=new Node[count];
        for(int i=0;i<count;i++){
            Node n=new Node();nodes[i]=n;n.record=new byte[36];System.arraycopy(data,12+i*36,n.record,0,36);
            n.kind=n.record[0]&255;n.x=s16(n.record,4);n.y=s16(n.record,6);n.frame=n.record[1]&255;n.action=n.frame;
            n.speaker=text.readUTF();n.text=text.readUTF();int resource=u16(n.record,24);
            if(n.kind==0){n.actor=new Actor(alias(resource),assets);n.actor.setFamily(n.record[2]&255);n.actor.animation.start(n.frame);}
            else if(n.kind==1)world=new World(resource,assets);
            else if(n.kind==2&&u16(n.record,14)!=0)n.image=new FrameImage(u16(n.record,14),0,assets);
            else if(n.kind==4)camera=n;
            else if(n.kind==6)n.image=new FrameImage(resource,0,assets);
            else if(n.kind==7)n.dat=assets.dat(resource);
            if(u16(n.record,32)!=0)block(n,u16(n.record,30));else n.commands=new byte[0];
        }
        text.close();bubble=new Actor(41001,assets);update();
    }
    private void block(Node n,int offset)throws IOException {
        if(offset<0||offset+8>events.length)throw new IOException("ANI event offset");
        n.start=u16(events,offset);n.count=u16(events,offset+2);n.next=u16(events,offset+4);n.nextOffset=u16(events,offset+6);
        if(n.count>10||offset+8+n.count*52>events.length)throw new IOException("ANI event slots");
        n.commands=new byte[n.count*52];System.arraycopy(events,offset+8,n.commands,0,n.commands.length);
    }
    public void advance()throws IOException {
        if(finished)return;
        if(waiting){animate();return;}
        if(tick==duration){finished=true;return;}tick++;update();
    }
    private void animate(){
        for(int i=0;i<nodes.length;i++){
            Node n=nodes[i];if(n.actor==null||n.hidden)continue;Animation a=n.actor.animation;
            if(n.frozen){a.frame=Math.min(n.fixedFrame,a.actions.clips[a.clip].frames.length-1);a.elapsed=0;}
            else {a.tick();if(n.loopStart>=0&&a.frame>n.loopEnd){a.frame=Math.min(n.loopStart,a.actions.clips[a.clip].frames.length-1);a.elapsed=0;}}
        }
    }
    public void confirm(){
        if(!waiting||dialogue<0)return;Node n=nodes[dialogue];
        if(nativeText&&pageEnd<=pageStart)return;
        if(pageEnd<=pageStart)pageEnd=font.draw(null,n.text,pageStart,0,0,220,3,0xffff);
        if(pageEnd<n.text.length()){pageStart=pageEnd;return;}
        waiting=false;pageStart=0;
    }
    public int takeMusic(){int value=music;music=-1;return value;}
    private void update()throws IOException {
        if(lastProcessed==tick)return;lastProcessed=tick;dialogue=-1;
        for(int i=0;i<nodes.length;i++){
            Node n=nodes[i];if(n.next==tick)block(n,n.nextOffset);n.dialog=false;n.wait=false;
            byte[] c=n.commands;
            for(int p=0;p<c.length;p+=52){
                // Native 0x6ead8 applies the position carried by every slot.
                n.x=(short)i32(c,p+4);n.y=(short)i32(c,p+8);if(c[p+13]>=0)n.mirror=c[p+13]!=0;
                int op=c[p]&255;boolean active=c[p+1]!=0;
                if(op==2&&active&&n.actor!=null){n.action=i32(c,p+48);n.actor.animation.start(n.action);c[p+1]=0;}
                if(op==6){int v=c[p+15];if(v>=0&&v<4)n.weight=new int[]{0,23,15,7}[v];}
                if(op==18&&active&&n.actor!=null){n.actor.animation.frame=0;n.actor.animation.elapsed=0;c[p+1]=0;}
                if(op==19&&(n.kind!=0||active&&n.start<=tick)){n.hidden=true;if(n.kind==0)c[p+1]=0;}
                if(op==20&&(n.kind!=0||active&&n.start<=tick)){n.hidden=false;if(n.kind==0)c[p+1]=0;}
                if(op==21){n.frozen=true;n.fixedFrame=c[p+12]&255;}if(op==22)n.frozen=false;
                if(op==23){n.velocity=true;n.velocityX=c[p+46];n.velocityY=c[p+47];n.velocityStart=n.start;}
                if(op==24)n.velocity=false;
                if(op==25){n.loopStart=c[p+39]&255;n.loopEnd=c[p+40]&255;}if(op==26)n.loopStart=-1;
                if(n.kind==2&&(n.start==tick||n.next!=60000)&&op==15){n.dialog=true;n.wait=c[p+24]==1;}
                if(n.kind==3&&op==17&&n.start==tick){music=u16(n.record,10)+11;}
            }
            if(n.velocity){n.x+=(tick-n.velocityStart)*n.velocityX;n.y+=(tick-n.velocityStart)*n.velocityY;}
            if(n.kind==2&&!n.hidden&&n.dialog){dialogue=i;if(n.wait)waiting=true;}
        }
        pageStart=0;pageEnd=0;
        animate();
    }
    public void draw(Surface s){
        int ox=(s.w==320?40:0)-(camera==null?0:camera.x),oy=(s.w==240?40:0)-(camera==null?0:camera.y);
        if(world!=null)world.draw(s,-ox,-oy);else s.clear(0);
        for(int i=0;i<nodes.length;i++){
            Node n=nodes[i];if(n.hidden&&n.kind!=4)continue;
            if(n.actor!=null)n.actor.draw(s,n.x+ox,n.y+oy,n.mirror,n.weight);
            else if(n.kind==6&&n.image!=null)n.image.draw(s,n.frame,n.x+ox,n.y+oy,n.mirror);
            else if(n.kind==7&&n.dat!=null)s.tile(n.dat,0,0,n.x+ox,n.y+oy,0,n.mirror,1,0,0,n.weight,false);
            else if(n.kind==4)overlay(s,n);
            else if(!nativeText&&n.kind==2&&!n.dialog)font.draw(s,n.text,0,n.x+ox,n.y+oy,200,20,0xffff);
        }
        if(dialogue>=0){
            Node n=nodes[dialogue];int left=(s.w-240)/2,layout=u16(n.record,16);
            boolean right=layout==2||layout==4;
            if(n.image!=null)n.image.draw(s,u16(n.record,18),left+(right?240:0),s.h-63,right);
            int clip=layout==3||layout==4?63:62;
            if(clip<bubble.actions.clips.length){bubble.animation.start(clip);bubble.draw(s,left,s.h-63,false);}
            // Text stays legible even where original portrait/bubble extends outside the viewport.
            s.rect(left+6,s.h-58,228,54,0x0841,5);
            if(!nativeText){font.draw(s,n.speaker,0,left+10,s.h-76,220,1,0xffe0);
                pageEnd=font.draw(s,n.text,pageStart,left+10,s.h-53,220,3,0xffff);}
        }
    }
    public int cameraX(){return camera==null?0:camera.x;}
    public int cameraY(){return camera==null?0:camera.y;}
    private void overlay(Surface s,Node n){
        byte[] c=n.commands;
        if(n.start==tick||n.next!=60000)for(int p=0;p<c.length;p+=52){
            int op=c[p]&255;
            if((op==10||op==11)&&n.start==tick){int a=op==10&&((c[p+23]&255)!=255)?p+16:p+20;
                int rgb=((c[a]&248)<<8)|((c[a+1]&252)<<3)|((c[a+2]&255)>>3),alpha=c[a+3]&255;
                s.rect(0,0,s.w,s.h,rgb,alpha==255?0:(3-(alpha>>6))*8);
            }else if(op==14){int color=((c[p+35]&248)<<8)|((c[p+36]&252)<<3)|((c[p+37]&255)>>3);s.rect(0,0,s.w,s.h,color,0);}
            else if(op==13){int color=((c[p+28]&248)<<8)|((c[p+29]&252)<<3)|((c[p+30]&255)>>3);s.rect(0,0,s.w,c[p+31]&255,color,0);s.rect(0,s.h-(c[p+32]&255),s.w,c[p+32]&255,color,0);}
        }
        if(s.w==240){s.rect(0,0,s.w,40,0,0);s.rect(0,s.h-40,s.w,40,0,0);}
        else {s.rect(0,0,40,s.h,0,0);s.rect(s.w-40,0,40,s.h,0,0);}
    }
}
