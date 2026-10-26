package dnf;
import java.io.IOException;
/** 100+skill .bd: four-byte header and 42-byte rank records; keep original base powers. */
public final class SkillData {
    public final int id,cost,cooldown;
    public final int[] power=new int[3];
    public SkillData(int id)throws IOException {
        this.id=id;byte[] b=Assets.read(100+id,"bd");
        if(b.length<46||(b[1]&255)!=42||b.length!=4+(b[0]&255)*42)throw new IOException("Skill table");
        cost=Story.u16(b,6);cooldown=Story.u16(b,8);
        for(int i=0;i<3;i++)power[i]=Story.u16(b,16+3*i);
    }
}
