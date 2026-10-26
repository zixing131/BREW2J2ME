package dnf;
import java.io.IOException;
/** Native FIE/BAC/FOR/FOB layers: loaders 0x28838/0x28014; draw 0x2ae60. */
public final class World {
    public final int id,rows,cols,yOffset,width,height;
    public final byte[] collision;
    private Layer far,ground;
    private Layer[] objects=new Layer[5];
    private static final class Layer {
        int rows,cols,drawRows,drawCols,x,y,repeat=1,gap,parallax=1;
        byte[] cells;int stride;Dat[] banks;int[] palettes;
    }
    private static final class Bank {int dat,palette;}
    private static Bank[] banks(Bytes r)throws IOException {
        Bank[] out=new Bank[r.u8()];for(int i=0;i<out.length;i++){Bank b=new Bank();out[i]=b;b.dat=r.u16();r.u8();b.palette=r.u8();}return out;
    }
    private Layer layer(int id,String ext,Bank[] bank,Assets assets)throws IOException {
        Bytes r=new Bytes(Assets.read(id,ext));Layer l=new Layer();l.rows=r.u8();l.cols=r.u8();l.stride=ext.equals("bac")?5:3;
        if(l.rows==0||l.cols==0)throw new IOException("Empty map grid");
        l.drawRows=l.rows;l.drawCols=l.cols;l.cells=r.take(l.rows*l.cols*l.stride);r.end();l.banks=new Dat[bank.length];l.palettes=new int[bank.length];
        for(int i=0;i<bank.length;i++){l.banks[i]=assets.dat(bank[i].dat);l.palettes[i]=bank[i].palette;}
        return l;
    }
    public World(int id,Assets assets)throws IOException {
        this.id=id;Bytes r=new Bytes(Assets.read(id,"fie"));int gid=r.u8();rows=r.u8();cols=r.u8();yOffset=r.u8();r.u8();r.u8();
        ground=layer(gid,"bac",banks(r),assets);ground.drawRows=rows;ground.drawCols=cols;ground.y=yOffset*16;
        int fid=r.u8(),fr=r.u8(),fc=r.u8();r.u8();far=layer(fid,"for",banks(r),assets);far.drawRows=fr;far.drawCols=fc;far.parallax=2;
        for(int i=0;i<5;i++){
            int oid=r.s8();if(oid<0)continue;
            int x=r.u8(),y=r.u8(),repeat=r.u8(),gap=r.u8();Layer l=layer(oid,"fob",banks(r),assets);
            l.x=x*16;l.y=16*(y+yOffset+1-l.rows);l.repeat=repeat;l.gap=gap*16;objects[i]=l;
        }
        collision=r.take(rows*cols);r.end();width=cols*16;height=(rows+yOffset)*16;
    }
    public boolean canStand(int x,int y){
        int row=y/16-yOffset,col=x/16;
        return x>=8&&x<width-8&&row>=0&&row<rows&&col>=0&&col<cols&&collision[row*cols+col]==0;
    }
    public int[] start(){
        // Temporary scene inspection spawn; original zone/quest spawn selection is not yet ported.
        for(int y=rows/2;y<rows;y++)for(int x=1;x<cols-1;x++)if(canStand(x*16+8,(y+yOffset)*16+8))return new int[]{x*16+8,(y+yOffset)*16+8};
        return new int[]{width/2,(yOffset+rows/2)*16};
    }
    public void draw(Surface s,int cameraX,int cameraY){
        s.clear(0);drawLayer(s,far,cameraX,cameraY);drawLayer(s,ground,cameraX,cameraY);
        for(int i=0;i<objects.length;i++)if(objects[i]!=null)drawLayer(s,objects[i],cameraX,cameraY);
    }
    private void drawLayer(Surface s,Layer l,int cx,int cy){
        for(int n=0;n<l.repeat;n++){
            int ox=l.x+n*(l.cols*16+l.gap)-cx/l.parallax,oy=l.y-cy;
            int fromX=Math.max(0,(-ox-16)/16),toX=Math.min(l.drawCols,(s.w-ox+15)/16);
            int fromY=Math.max(0,(-oy-16)/16),toY=Math.min(l.drawRows,(s.h-oy+15)/16);
            for(int y=fromY;y<toY;y++)for(int x=fromX;x<toX;x++){
                int off=((y%l.rows)*l.cols+x%l.cols)*l.stride,bank=l.cells[off]&255,tile=l.cells[off+1]&255,tf=l.cells[off+2]&255;
                if(bank<l.banks.length)s.tile(l.banks[bank],tile,l.palettes[bank],ox+x*16,oy+y*16,tf,false,1,0,0,0,true);
            }
        }
    }
}
