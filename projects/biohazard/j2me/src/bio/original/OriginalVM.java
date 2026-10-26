package bio.original;

/** 0x24FDC + 0x1F908. Unported side effects stop visibly, never invent gameplay. */
public final class OriginalVM {
    public final OriginalScript script;
    public final byte[] variables;
    final boolean[] fired;
    public final OriginalPlayer player;
    public final ScriptAction action=new ScriptAction();
    public OriginalNarration narration;
    public int event=-1,pc,textId,speaker,dialogMode,overlayColor,overlayAmount,fadeColor;
    public int unsupported=-1,transitionLevel,transitionX,transitionY,transitionAngle;
    public boolean running,condition,ended;
    public int offer=-1;
    int cellX,cellY;
    public OriginalVM(OriginalScript script){this(script,null);}
    public OriginalVM(OriginalScript script,OriginalPlayer player){this.script=script;this.player=player;variables=player==null?new byte[500]:player.variables;fired=new boolean[script.count];}
    public boolean busy(){return running||action.kind!=0||unsupported>=0;}
    public void start(int e){event=e;pc=0;running=true;condition=false;action.kind=0;unsupported=-1;}
    public void trigger(int type,int x,int y){
        if(busy())return;
        if(type==0){if(cellX==x/32&&cellY==y/32)return;cellX=x/32;cellY=y/32;}
        for(int i=0;i<script.count;i++){
            int[] h=script.headers[i];if(h[1]!=type)continue;
            if(type==2){int a=(byte)h[2],b=(byte)(h[2]>>8);
                if(fired[i]||(a>=0&&variables[a]==0)||(b>=0&&variables[b]==0))continue;
                start(i);fired[i]=true;return;
            }
            if(type==0&&(h[0]&65535)==cellX&&(h[0]>>>16)==cellY){start(i);return;}
        }
    }
    public void acknowledge(){if(action.kind==4||action.kind==17||action.kind==18)action.kind=0;}
    public void explicit(int index){if(!busy()&&index>=0&&index<script.count&&script.headers[index][1]==3)start(index);}
    public int region(int x,int y,boolean activate){
        if(busy())return -1;
        for(int i=0;i<script.count;i++)if(script.headers[i][1]==1){int[] r=script.regions[i];
            if(x>r[0]&&y>=r[1]&&x<r[2]&&y<r[3]){if(activate)start(i);return i;}}
        return -1;
    }
    public void transition(boolean accept){
        if(action.kind!=21)return;
        if(accept){int[] c=script.commands[event];int p=(pc-1)*8;transitionLevel=c[p+1];transitionX=c[p+2]*32+16;transitionY=c[p+3]*32+16;transitionAngle=c[p+4];running=false;}
        action.kind=0;
    }
    public void step(){
        if(unsupported>=0||transitionLevel!=0)return;
        if(action.kind!=0){action.tick();if(action.kind!=0)return;}
        if(!running)return;
        int[] c=script.commands[event];
        while(pc<c.length/8){
            int p=pc*8,op=c[p];pc++;
            switch(op){
                case 1:{int i=c[p+1],mode=c[p+3],v=c[p+2];variables[i]=(byte)(mode==0?v:mode==1?variables[i]+v:variables[i]-v);break;}
                case 3:case 4:
                    if(op==4&&condition){while(pc<c.length/8&&c[pc*8]!=12)pc++;break;}
                    int v=c[p+1]==0?variables[c[p+2]]&255:0,cmp=c[p+4];
                    condition=c[p+1]==2||(c[p+1]==0&&(cmp==0?v==c[p+3]:cmp==1?v>c[p+3]:cmp==2&&v<c[p+3]));
                    if(!condition)while(pc<c.length/8&&c[pc*8]!=4&&c[pc*8]!=12)pc++;
                    break;
                case 12:condition=false;break;
                case 2:
                    narration=null;textId=c[p+6];speaker=c[p+4];dialogMode=c[p+3];action.kind=dialogMode==0?17:4;finishCheck(c);return;
                case 7:
                    action.kind=19;action.duration=(short)c[p+1];action.targetAngle=(short)c[p+2];
                    action.targetX=(short)(32*(short)c[p+3]+16);action.targetY=(short)(32*(short)c[p+4]+16);
                    action.startX=(short)action.x;action.startY=(short)action.y;action.frame=0;
                    if(action.duration<=0){unsupported=op;return;}finishCheck(c);return;
                case 9:action.kind=c[p+3]==0?1:2;fadeColor=(short)c[p+1];action.duration=(short)c[p+2];action.frame=0;finishCheck(c);return;
                case 17:overlayColor=(short)c[p+1];overlayAmount=(short)c[p+2];break;
                case 19:action.kind=20;action.targetAngle=(short)c[p+1];action.direction=(byte)c[p+2];finishCheck(c);return;
                case 23:action.kind=18;finishCheck(c);return;
                case 51:transitionLevel=c[p+1];transitionX=c[p+2]*32+16;transitionY=c[p+3]*32+16;transitionAngle=c[p+4];running=false;return;
                case 0:action.kind=21;finishCheck(c);return;
                case 16:
                    if(player==null){unsupported=op;return;}
                    if(c[p+1]==0){if(c[p+4]!=0)player.removeWeapon((short)c[p+2]);else player.addWeapon((short)c[p+2]);}
                    else if(c[p+1]==1)player.medicines=Math.min(999,(short)(player.medicines+c[p+3]));
                    else if(c[p+1]==2)player.reserve+=c[p+3];else if(c[p+1]==3)player.money+=c[p+3];break;
                case 38:offer=c[p+1];action.kind=22;finishCheck(c);return;
                case 50:ended=true;running=false;return;
                // Original dispatcher skips the remaining opcode numbers.
                default:break;
            }
        }
        running=false;
    }
    private void finishCheck(int[] c){if(pc>=c.length/8)running=false;}
}
