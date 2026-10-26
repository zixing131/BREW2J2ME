package dnf;
import java.io.*;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
public final class StoryTest {
    private static int checks;
    private static void check(boolean c,String m){checks++;if(!c)throw new AssertionError(m);}
    private static void image(Surface s,String name)throws Exception {
        BufferedImage b=new BufferedImage(s.w,s.h,BufferedImage.TYPE_INT_RGB);for(int y=0;y<s.h;y++)for(int x=0;x<s.w;x++)b.setRGB(x,y,Surface.rgb(s.pixels[y*s.w+x]));ImageIO.write(b,"png",new File("build/"+name+".png"));
    }
    public static void main(String[] args)throws Exception {
        KoreanFont f=new KoreanFont();Journal j=new Journal();check(j.titles.length==30,"30 original diary entries");
        BufferedReader fixture=new BufferedReader(new FileReader("tests/fixtures/story-arm.csv"));String line;Story state=null;
        while((line=fixture.readLine())!=null){if(line.startsWith("#"))continue;String[] v=line.split(",");int[] row=new int[v.length];for(int k=0;k<v.length;k++)row[k]=Integer.parseInt(v[k]);
            if(state==null||state.id!=row[0]||state.tick>row[2])state=new Story(row[0],f);
            while(state.tick<row[2]){state.waiting=false;state.advance();}Story.Node node=state.nodes[row[1]];
            check(node.x==row[3]&&node.y==row[4],"ARM position "+line);check(node.action==row[5],"ARM action "+line);
            check(node.mirror==(row[6]!=0)&&node.weight==row[7]&&node.hidden==(row[8]!=0),"ARM display flags "+line);
            check(node.frozen==(row[9]!=0)&&(!node.frozen||node.fixedFrame==row[10]),"ARM freeze "+line);
        }fixture.close();
        fixture=new BufferedReader(new FileReader("tests/fixtures/font-arm.csv"));Surface glyph=new Surface(16,12);
        while((line=fixture.readLine())!=null){if(line.startsWith("#"))continue;String[] v=line.split(",");char c=(char)Integer.parseInt(v[0]);glyph.clear(0);f.glyph(glyph,c,0,0,1);
            check(f.width(c)==Integer.parseInt(v[1]),"ARM glyph width");for(int y=0;y<12;y++){int bits=0;for(int x=0;x<16;x++)if(glyph.pixels[y*16+x]!=0)bits|=1<<x;check(bits==Integer.parseInt(v[y+2]),"ARM glyph pixels "+v[0]);}
        }fixture.close();
        Session action=new Session();action.load(0);action.attack();check(action.takeSound()==-1,"no premature sword sound");action.tick(0);check(action.takeSound()==15,"native reaction 17 selects original sound 0:15");check(action.takeSound()==-1,"sound event consumed once");
        Reactions reactions=new Reactions();check(reactions.sound(17,true)==0&&reactions.sound(17,false)==15,"native hit/motion sound pair");
        DataInputStream in=new DataInputStream(new ByteArrayInputStream(Bytes.resource("/stories.bin")));int n=in.readUnsignedShort();check(n==63,"63 original scenes");int waits=0,cues=0;
        for(int i=0;i<n;i++){
            int id=in.readUnsignedShort();Story s;
            try{s=new Story(id,f);}catch(Exception e){throw new IOException("Story "+id+": "+e);}
            Surface surface=new Surface(240,320);int steps=0;
            while(!s.finished&&steps++<10000){
                s.draw(surface);if(s.takeMusic()>=0)cues++;
                if(s.waiting){int time=s.tick;s.advance();check(s.tick==time,"dialogue stops timeline");waits++;
                    if(id==2&&waits>0&&s.pageStart==0)image(surface,"story-2-dialogue");
                    s.confirm();
                }else s.advance();
            }
            check(s.finished,"story terminates "+id);check(s.tick==s.duration,"exact final tick "+id);
        }
        Story s=new Story(999,f);Surface wide=new Surface(320,240);
        while(!s.waiting&&!s.finished)s.advance();s.draw(wide);image(wide,"story-999-landscape");check(s.waiting,"original dialogue pause in 999");
        int tick=s.tick;String expected=s.nodes[s.dialogue].text;Story restored=new Story(999,f);while(restored.tick<tick){restored.waiting=false;restored.advance();}
        check(restored.nodes[restored.dialogue].text.equals(expected),"replay checkpoint reaches same dialogue");
        Surface journal=new Surface(240,320);journal.clear(0x0841);f.draw(journal,j.titles[0],0,10,10,220,2,0xffe0);f.draw(journal,j.bodies[0],0,10,45,220,18,0xffff);image(journal,"diary-first");
        check(waits>100,"original dialogue loaded");check(cues>30,"original music event dispatch");
        System.out.println("PASS story "+checks+" checks: 63 timelines, "+waits+" dialogue/page confirmations, "+cues+" original music cues");
    }
}
