package dnf;
import java.io.*;
/** Port checkpoint, not a claim of compatibility with DnfHero/DnfQuest carrier files. */
public final class SaveData {
    public int map,x,y,family,speed=2,touchMode;
    public byte[] encode()throws IOException {
        ByteArrayOutputStream b=new ByteArrayOutputStream();DataOutputStream d=new DataOutputStream(b);
        d.writeInt(0x444e4631);d.writeInt(map);d.writeInt(x);d.writeInt(y);d.writeInt(family);d.writeInt(speed);d.writeInt(touchMode);d.flush();
        byte[] data=b.toByteArray();d.writeInt(checksum(data,data.length));d.flush();return b.toByteArray();
    }
    public static SaveData decode(byte[] data)throws IOException {
        if(data.length!=32)throw new IOException("Invalid save length");DataInputStream d=new DataInputStream(new ByteArrayInputStream(data));
        if(d.readInt()!=0x444e4631)throw new IOException("Invalid save version");
        SaveData s=new SaveData();s.map=d.readInt();s.x=d.readInt();s.y=d.readInt();s.family=d.readInt();s.speed=d.readInt();s.touchMode=d.readInt();
        if(d.readInt()!=checksum(data,28)||s.map<0||s.map>255||s.x<0||s.y<0||s.x>4080||s.y>8160||s.family<0||s.family>=20||s.speed<0||s.speed>4||s.touchMode<0||s.touchMode>2)throw new IOException("Invalid save data");
        return s;
    }
    private static int checksum(byte[] b,int n){int h=0x1234abcd;for(int i=0;i<n;i++)h=(h*31)^(b[i]&255);return h;}
}
