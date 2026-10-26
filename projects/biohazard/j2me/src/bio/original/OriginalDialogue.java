package bio.original;

/** Opcode 2 has two parameter layouts: 0x15BB8 / 0xEE4, not one speaker field. */
public final class OriginalDialogue {
    private OriginalDialogue(){}
    public static int portrait(String name){
        if(name.length()==0)return -1;
        // Original compares the first UTF-16 code unit, then chooses these constants.
        switch(name.charAt(0)){
            case 29696:case 29790:return 7002;
            case 20811:return 7004;
            case 26705:return 7003;
            case 35946:return 7001;
            case 36798:return 7005;
            default:return -1;
        }
    }
    public static String message(OriginalVM v,OriginalText text){
        if(v.dialogMode!=0)return text.get(v.textId);
        // Mode 0 word 4 is a count of consecutive text resources, NOT a name ID.
        int count=Math.max(1,Math.min(10,v.speaker));StringBuffer out=new StringBuffer();
        for(int i=0;i<count;i++){if(i>0)out.append("$n");out.append(text.get(v.textId+i));}
        return out.toString();
    }
    public static int textHeight(int mode,boolean named){return mode==3?24:named?34:50;}
    public static int textTop(int mode,boolean named,int height){
        int h=textHeight(mode,named);return mode==2?height-h-7:(height-h)/2;
    }
    public static int inset(int mode,int width){return mode==1?(width-98)%14/2+14:mode==2?(width-20)%14/2+10:4;}
}
