package bio.original;

/** Blocking action updater from 0x1F908; R0 quotient / R1 remainder verified in ASM. */
public final class ScriptAction {
    public int kind,frame,duration,targetAngle,direction,startX,startY,targetX,targetY;
    public int x,y,angle,renderFlags;
    public void tick(){
        if(kind==1||kind==2){frame=(short)(frame+1);if(frame>duration)kind=0;return;}
        if(kind==20){
            if(angle==targetAngle){kind=0;return;}
            angle=Math.abs(targetAngle-angle)<10?targetAngle:(angle+(direction!=0?10:350))%360;return;
        }
        if(kind!=19)return;
        if(angle!=targetAngle){
            int diff=Math.abs(targetAngle-angle);
            if(diff<10)angle=targetAngle;
            else angle=(angle+(Math.abs(targetAngle-(angle+10))%360<diff%360?10:350))%360;
            return;
        }
        // sub_104 normalizes operand signs; quotient truncates toward zero.
        x=frame*(targetX-startX)/duration+startX;
        y=frame*(targetY-startY)/duration+startY;
        frame=(short)(frame+1);renderFlags|=1;
        if(frame==duration+1){renderFlags=0;kind=0;}
    }
}
