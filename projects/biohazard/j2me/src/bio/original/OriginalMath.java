package bio.original;
/** Integer math and sight tests: 0x19868, 0x19930, 0x58EC, 0x576C. */
public final class OriginalMath {
    private static final int[] TAN={0,1144,2289,3435,4583,5734,6888,8047,9210,10380,11556,12739,13930,15130,16340,17560,18792,20036,21294,22566,23853,25157,26478,27818,29179,30560,31964,33392,34846,36327,37837,39378,40951,42560,44205,45889,47615,49385,51202,53070,54991,56970,59009,61113,63287,65536,67865,70279,72785,75391,78103,80930,83882,86969,90203,93595,97161,100917,104880,109070,113512,118230,123255,128622,134369,140542,147196,154393,162207,170727,180059,190330,201699,214359,228551,244584,262851,283868,308323,337153,371673,413778,466313,533748,623533,749080,937208,1250501,1876705,3754555};
    public static int angle(int x,int y){boolean nx=x<0,ny=y<0;x=Math.abs(x);y=Math.abs(y);if(x==0)return ny?270:90;if(y==0)return nx?180:0;
        int ratio=(y<<16)/x,a=1;while(a<90&&TAN[a]<=ratio)a++;return nx?(ny?a+180:180-a):(ny?360-a:a);}
    public static int sqrt(int n){int result=0,remainder=0;for(int i=0;i<16;i++){remainder=4*remainder+(n>>>30);result*=2;int t=2*result+1;if(t<=remainder){remainder-=t;result++;}n*=4;}return result;}
    public static int distance(int x,int y){return sqrt(x*x+y*y);}
    private static boolean mask(OriginalLevel l,int x,int y,int m){return x>=0&&y>=0&&x<l.width*2&&y<l.height*2&&(l.collision[y*l.width*2+x]&m)!=0;}
    public static boolean ray(OriginalLevel l,int x,int y,int angle,int length){int xx=x<<8,yy=y<<8,dx=OriginalTrig.cos(angle)>>4,dy=OriginalTrig.sin(angle)>>4;
        for(int d=0;d<length;d+=16){if(mask(l,(xx>>8)/16,(yy>>8)/16,2))return false;xx+=dx;yy+=dy;}return true;}
    public static boolean sight(OriginalLevel l,int x,int y,int tx,int ty,int length){if(length<=0)return true;int ax=(x-8)/16,ay=(y-8)/16,bx=(tx-8)/16,by=(ty-8)/16;
        int dx=((tx-x)<<12)/length,dy=((ty-y)<<12)/length,xx=x<<8,yy=y<<8;
        for(int d=0;d<length;d+=16){int cx=(xx>>8)/16,cy=(yy>>8)/16;xx+=dx;yy+=dy;
            if((cx==ax||cx==ax+1)&&(cy==ay||cy==ay+1))continue;if((cx==bx||cx==bx+1)&&(cy==by||cy==by+1))continue;if(mask(l,cx,cy,6))return false;}return true;}
}
