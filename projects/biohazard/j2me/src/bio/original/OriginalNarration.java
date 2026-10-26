package bio.original;

/** 0xA10 / 0x20298 / 0x101B4: one text/control token every four ticks. */
public final class OriginalNarration {
    public final String message;
    public int frame,position,endTicks;
    public boolean finished,active=true;
    public OriginalNarration(String message){this.message=message+"$n";}
    private void next(){
        if(position>=message.length()){if(!finished){finished=true;endTicks=0;}return;}
        int n=1;
        if(message.charAt(position)=='$'&&position+1<message.length()){
            char c=message.charAt(position+1);n=c=='n'||c=='N'?2:c=='t'||c=='T'?7:8;
        }
        position=Math.min(message.length(),position+n);
    }
    public void accelerate(){if(position<message.length())for(int i=0;i<10;i++)next();else if(!finished){finished=true;endTicks=0;}}
    public void tick(){
        if(!active)return;
        if((frame&3)==0)next();
        if(finished){if(endTicks>16)active=false;endTicks++;}
        frame++;
    }
    public String visible(){return message.substring(0,position);}
}
