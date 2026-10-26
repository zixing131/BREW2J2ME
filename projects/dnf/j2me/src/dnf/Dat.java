package dnf;
import java.io.IOException;
/** Native DAT loader 0x6e440; colors use the RGB565 conversion at 0x68dd4. */
public final class Dat {
    public static final int KEY=((32&248)<<8)|((144&252)<<3)|(32>>3);
    public int[][] palettes;
    public Tile[] tiles;
    public static final class Tile { public int w,h,x,y;public byte[] pixels; }
    public Dat(byte[] data) throws IOException {
        Bytes r=new Bytes(data);int pc=r.u8(),colors=r.u8(),fmt=r.u8();r.u8();int n=r.u8();
        if(fmt<9||fmt>12||pc==0||colors==0) throw new IOException("Invalid DAT header");
        palettes=new int[pc][colors];
        for(int p=0;p<pc;p++)for(int c=0;c<colors;c++)palettes[p][c]=((r.u8()&248)<<8)|((r.u8()&252)<<3)|(r.u8()>>3);
        int bits=1<<(fmt-9);tiles=new Tile[n];
        for(int i=0;i<n;i++) {
            Tile t=new Tile();tiles[i]=t;t.w=r.u8();t.h=r.u8();t.x=r.s8();t.y=r.s8();
            int size=t.w*t.h;byte[] raw=r.take((size*bits+7)/8);t.pixels=new byte[size];
            for(int k=0;k<size;k++){int v=((raw[k*bits/8]&255)>>(8-bits-k*bits%8))&((1<<bits)-1);
                if(v>=colors)throw new IOException("Invalid palette index");t.pixels[k]=(byte)v;}
        }
        r.end();
    }
}
