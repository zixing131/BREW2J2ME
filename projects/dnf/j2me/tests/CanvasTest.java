package dnf;
import java.lang.reflect.*;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import java.io.File;
import javax.microedition.lcdui.*;
import javax.microedition.media.*;
public final class CanvasTest {
    private static int checks;
    private static void check(boolean c,String msg){checks++;if(!c)throw new AssertionError(msg);}
    private static Object get(Object o,String name)throws Exception{Field f=o.getClass().getDeclaredField(name);f.setAccessible(true);return f.get(o);}
    private static void set(Object o,String name,Object value)throws Exception{Field f=o.getClass().getDeclaredField(name);f.setAccessible(true);f.set(o,value);}
    private static void paint(DnfCanvas c,String name)throws Exception{BufferedImage image=new BufferedImage(c.getWidth(),c.getHeight(),BufferedImage.TYPE_INT_RGB);c.paint(new Graphics(image));ImageIO.write(image,"png",new File("build/"+name+".png"));}
    private static void playStoryChain(DnfCanvas c,int id)throws Exception {
        Method start=DnfCanvas.class.getDeclaredMethod("startStory",Integer.TYPE);start.setAccessible(true);start.invoke(c,Integer.valueOf(id));
        Method advance=DnfCanvas.class.getDeclaredMethod("advanceStory");advance.setAccessible(true);int ticks=0;
        while(((Integer)get(c,"menu")).intValue()==-2&&ticks++<30000){Story part=(Story)get(c,"story");if(part.waiting)c.keyPressed(Canvas.KEY_NUM5);else advance.invoke(c);}
        check(ticks<30000&&((Integer)get(c,"menu")).intValue()==-3,"story chain enters playable field");
    }
    private static void battleUI(DnfCanvas c,int w,int h)throws Exception {
        set(c,"campaign",Boolean.TRUE);playStoryChain(c,5);Battle b=(Battle)get(c,"battle");check(b.field==41&&b.stage==3&&b.enemies.length==6,"actual ANI5 enters research battle");
        paint(c,"combat-canvas-"+w+"x"+h);int px=b.player.x;
        c.pointerPressed(5,h-h/5+4);if(Viewport.defaultTouch(w,h))check(((Integer)get(c,"keys")).intValue()==Session.LEFT,"battle touch movement");else check(((Integer)get(c,"keys")).intValue()==0,"low-resolution battle has no virtual keys");c.pointerReleased(5,h-5);
        c.keyPressed(Canvas.KEY_NUM1);check(b.player.hero.animation.clip==24,"campaign key1 is upper slash, not action browser");
        int savedCooldown=b.upperCooldown,savedMusic=b.music;c.keyPressed(Canvas.KEY_NUM0);check(((Integer)get(c,"menu")).intValue()==16,"campaign pause");paint(c,"combat-pause-"+w+"x"+h);
        c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM5);check(((Integer)get(c,"menu")).intValue()==12,"save and return to slots");b.player.x+=9;c.keyPressed(Canvas.KEY_NUM5);b=(Battle)get(c,"battle");
        check(b.player.x==px&&b.player.hero.animation.clip==24&&b.upperCooldown==savedCooldown&&b.music==savedMusic,"RMS restores battle action, position, cooldown and music");
        Method wallTick=DnfCanvas.class.getDeclaredMethod("advanceBattle");wallTick.setAccessible(true);set(c,"battleClock",Long.valueOf(System.currentTimeMillis()-300));int before=b.elapsedMs;wallTick.invoke(c);check(b.elapsedMs-before>=300&&b.elapsedMs-before<1000,"mission clock follows elapsed active time, not frame interval");
        playStoryChain(c,7);b=(Battle)get(c,"battle");check(b.father()&&b.level==60,"ANI7 switches to playable Derin protection mission");check(b.dialogue==2&&b.elapsedMs==0,"quest463 introduction before protection timer");paint(c,"quest463-canvas-"+w+"x"+h);while(b.dialogue>=0)c.keyPressed(Canvas.KEY_NUM5);c.keyPressed(Canvas.KEY_NUM1);paint(c,"derin-canvas-"+w+"x"+h);
        b.elapsedMs=180000-Session.TICK_MS[((Session)get(c,"session")).speed];Method advance=DnfCanvas.class.getDeclaredMethod("advanceBattle");advance.setAccessible(true);advance.invoke(c);
        check(((Story)get(c,"story")).id==8,"protection timer launches original ANI8");
        Method storyAdvance=DnfCanvas.class.getDeclaredMethod("advanceStory");storyAdvance.setAccessible(true);int ticks=0;
        while(((Integer)get(c,"menu")).intValue()==-2&&ticks++<30000){Story part=(Story)get(c,"story");if(part.waiting)c.keyPressed(Canvas.KEY_NUM5);else storyAdvance.invoke(c);}
        b=(Battle)get(c,"battle");check(ticks<30000&&b.field==79&&b.zone==20,"ANI8/9/10/11 returns to original town scene");paint(c,"town-canvas-"+w+"x"+h);
    }
    private static void campaignUI(DnfCanvas c,int w,int h)throws Exception {
        Battle b=(Battle)get(c,"battle");b.player.x=280;b.player.y=363;c.keyPressed(Canvas.KEY_NUM5);check(b.dialogue>=3,"Mary original quest conversation opens");paint(c,"mary-quest-"+w+"x"+h);
        int pages=0;while(((Integer)get(c,"menu")).intValue()==-3&&b.dialogue>=0&&pages++<100)c.keyPressed(Canvas.KEY_NUM5);
        check(((Story)get(c,"story")).id==12&&b.campaign.state[2]==1,"quest confirmation launches ANI12");
        c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_NUM5);Campaign restored=(Campaign)get(c,"progress");check(restored.state[2]==1,"quest survives DNS3 story RMS round trip");
        playStoryChain(c,12);b=(Battle)get(c,"battle");check(b.campaign.state[2]==1,"story to field retains campaign");
        c.keyPressed(Canvas.KEY_NUM7);paint(c,"quest-journal-"+w+"x"+h);check(b.dialogueText().indexOf("风振")>=0,"task journal has original objective");c.keyPressed(Canvas.KEY_NUM0);check(b.dialogue<0,"cancel journal returns to field");
        b.enter(0,1,0,0,40,250);b.startDungeon();paint(c,"dungeon-canvas-"+w+"x"+h);
        c.keyPressed(Canvas.KEY_NUM0);paint(c,"campaign-menu-"+w+"x"+h);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM5);c.keyPressed(Canvas.KEY_NUM5);b=(Battle)get(c,"battle");check(b.campaign.dungeon==1&&b.field==6,"dungeon RMS preserves run");
        b.hp=0;paint(c,"defeat-canvas-"+w+"x"+h);c.keyPressed(Canvas.KEY_NUM5);Method tick=DnfCanvas.class.getDeclaredMethod("advanceBattle");tick.setAccessible(true);tick.invoke(c);check(b.zone==0&&b.hp==b.maxHp,"defeat UI returns to safe town");
        check(b.campaign.state[2]==1,"retreat retains active quest");
    }
    private static void finishMenuDetail(DnfCanvas c)throws Exception{
        GameMenu m=(GameMenu)get(c,"gameMenu");if(!m.confirming)c.keyPressed(Canvas.KEY_NUM5);
        int pages=0;while(m.confirming&&pages++<100)c.keyPressed(Canvas.KEY_NUM5);
        check(pages<100,"detail pages terminate without relying on repaint");
    }
    private static void economyUI(DnfCanvas c,int w,int h)throws Exception{
        Battle b=(Battle)get(c,"battle");b.enter(0,1,0,0,40,250);b.campaign.openingCheckpoint();b.campaign.level=5;b.campaign.gold=1000;
        b.campaign.bag.add(11,3,3);b.campaign.bag.add(11,4,3);b.campaign.bag.add(11,5,3);
        c.keyPressed(Canvas.KEY_NUM9);check(((Integer)get(c,"menu")).intValue()==17,"bag reachable through key9");paint(c,"inventory-"+w+"x"+h);
        c.keyPressed(Canvas.KEY_NUM3);GameMenu m=(GameMenu)get(c,"gameMenu");int key=13*256+9;
        for(int i=0;i<m.entries.length;i++)if(m.entries[i]==key)m.selected=i;
        paint(c,"merchant-"+w+"x"+h);finishMenuDetail(c);check(b.campaign.bag.count(13,9)==1&&b.campaign.gold==900,"canvas shop confirms exactly one purchase");
        c.keyPressed(Canvas.KEY_NUM3);m.selected=0;paint(c,"craft-"+w+"x"+h);finishMenuDetail(c);check(b.campaign.bag.count(0,101)==1&&b.campaign.gold==800,"canvas native recipe transaction");
        c.keyPressed(Canvas.KEY_NUM1);c.keyPressed(Canvas.KEY_NUM1);for(int i=0;i<m.entries.length;i++)if(m.entries[i]==101)m.selected=i;finishMenuDetail(c);check(b.campaign.bag.equipped(0,101),"canvas equips crafted weapon");
        c.keyPressed(Canvas.KEY_NUM0);c.suspend();Method resume=DnfCanvas.class.getDeclaredMethod("resumeStory",String.class);resume.setAccessible(true);resume.invoke(c,"dnf-campaign-slot-"+get(c,"slot"));b=(Battle)get(c,"battle");check(b.campaign.bag.equipped(0,101)&&b.campaign.gold==800,"RMS restores equipment and transaction balances");
        b.campaign.skillPoints=100;b.campaign.totalSkillPoints=Math.max(100,b.campaign.totalSkillPoints);
        c.keyPressed(Canvas.KEY_NUM9);c.keyPressed(Canvas.KEY_NUM1);c.keyPressed(Canvas.KEY_NUM1);m=(GameMenu)get(c,"gameMenu");for(int i=0;i<m.entries.length;i++)if(m.entries[i]==6)m.selected=i;check(((GameMenu)get(c,"gameMenu")).tab==5,"skill training reachable");paint(c,"skills-"+w+"x"+h);c.keyPressed(Canvas.KEY_NUM5);paint(c,"skill-detail-"+w+"x"+h);finishMenuDetail(c);check(b.campaign.skillRanks[6]==2&&b.campaign.skillPoints==90,"Canvas trains upper slash once for native10 SP");c.keyPressed(Canvas.KEY_NUM1);paint(c,"mainline-"+w+"x"+h);c.keyPressed(Canvas.KEY_NUM1);paint(c,"adventure-"+w+"x"+h);c.keyPressed(Canvas.KEY_NUM0);
        // A dialogue interrupt must preserve the partially defeated room, including after RMS reload.
        b.startDungeon(9,0);b.enter(25,1,9,0,180,200);check(b.enemies.length>0,"native preboss room populated");b.enemies[0].hp=1;b.campaign.runMillis=12345;
        Method start=DnfCanvas.class.getDeclaredMethod("startStory",Integer.TYPE);start.setAccessible(true);start.invoke(c,Integer.valueOf(20));c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_NUM5);b=(Battle)get(c,"battle");check(b!=null&&b.enemies[0].hp==1&&b.campaign.runMillis==12345,"DNS4 preserves suspended enemy and run timer");
        playStoryChain(c,20);b=(Battle)get(c,"battle");check(b.enemies[0].hp==1&&b.campaign.runMillis==12345,"same-room story does not respawn enemies");
        b.campaign.state[259]=1;b.campaign.kills[259*3]=1;playStoryChain(c,47);b=(Battle)get(c,"battle");check(((Story)get(c,"story")).id==483&&b.zone==20&&b.rewardChoices()==4,"full native ending chain offers four rewards");
        c.keyPressed(Canvas.KEY_NUM3);c.keyPressed(Canvas.KEY_NUM3);check(b.campaign.rewardChoice==2,"reward selector uses numeric keys");
        paint(c,"ending-reward-"+w+"x"+h);c.suspend();resume.invoke(c,"dnf-campaign-slot-"+get(c,"slot"));b=(Battle)get(c,"battle");check(b.campaign.rewardChoice==2&&b.rewardChoices()==4,"reward selection persists before settlement");
        int p=b.campaign.book.choiceOffset(259,2),t=b.campaign.book.value(259,p),id=b.campaign.book.value(259,p+1);int pages=0;
        while(b.dialogue>=0&&pages++<100)c.keyPressed(Canvas.KEY_NUM5);
        check(pages<100&&b.campaign.state[259]==2&&b.campaign.bag.count(t,id)==1,"ending settles selected weapon through Canvas");
    }
    private static void fieldAudioUI(DnfCanvas c,int w,int h)throws Exception {
        Battle b=new Battle(new Session());b.enter(0,1,0,0,40,250);set(c,"battle",b);set(c,"progress",b.campaign);set(c,"menu",Integer.valueOf(-3));
        Method sync=DnfCanvas.class.getDeclaredMethod("syncBattleMusic",Boolean.TYPE);sync.setAccessible(true);sync.invoke(c,Boolean.TRUE);
        check(((Integer)get(c,"currentMusic")).intValue()==13,"town native BGM13");int count=Manager.created.size();
        for(int i=0;i<20;i++)sync.invoke(c,Boolean.FALSE);check(Manager.created.size()==count,"field ticks never restart unchanged BGM");
        b.enter(4,1,0,0,40,250);sync.invoke(c,Boolean.FALSE);check(((Integer)get(c,"currentMusic")).intValue()==14,"west coast BGM14");
        b.startDungeon(21,0);sync.invoke(c,Boolean.FALSE);check(((Integer)get(c,"currentMusic")).intValue()==20,"sky tower ordinary BGM20");
        Zone z=new Zone(21);int[] boss=z.routes[0][1];b.enter(boss[2],boss[3],21,3,100,200);sync.invoke(c,Boolean.FALSE);check(((Integer)get(c,"currentMusic")).intValue()==21,"boss entrance BGM21");
        check(((Audio)get(c,"audio")).error.length()==0,"native scene tracks exist and decode through MMAPI adapter");
        b.returnTown();sync.invoke(c,Boolean.FALSE);check(((Integer)get(c,"currentMusic")).intValue()==14,"retreat restores previous town music");
        b.campaign.bag.add(17,3,1);int hp=b.maxHp;c.keyPressed(Canvas.KEY_NUM9);GameMenu m=(GameMenu)get(c,"gameMenu");for(int i=0;i<m.entries.length;i++)if(m.entries[i]==17*256+3)m.selected=i;
        c.keyPressed(Canvas.KEY_NUM5);paint(c,"permanent-item-"+w+"x"+h);finishMenuDetail(c);check(b.maxHp==hp+25&&b.campaign.bag.count(17,3)==0,"permanent stone usable through actual paginated menu");
        c.keyPressed(Canvas.KEY_NUM0);c.suspend();Method resume=DnfCanvas.class.getDeclaredMethod("resumeStory",String.class);resume.setAccessible(true);resume.invoke(c,"dnf-campaign-slot-"+get(c,"slot"));b=(Battle)get(c,"battle");
        check(b.campaign.permanentHp==25&&b.maxHp==hp+25&&((Integer)get(c,"currentMusic")).intValue()==14,"RMS reload preserves stone and restarts correct field track");
    }
    private static void classUI(DnfCanvas c,int w,int h)throws Exception {
        Battle b=new Battle(new Session());b.enter(0,1,0,0,180,250);b.campaign.job=6;b.campaign.level=60;b.campaign.skillRanks[47]=1;b.level=60;b.refreshStats();b.hp=b.maxHp;b.mp=b.maxMp;set(c,"battle",b);set(c,"progress",b.campaign);set(c,"menu",Integer.valueOf(-3));c.keyPressed(Canvas.KEY_NUM9);c.keyPressed(Canvas.KEY_NUM1);c.keyPressed(Canvas.KEY_NUM1);GameMenu m=(GameMenu)get(c,"gameMenu");check(m.tab==5&&m.entries.length==32,"full ghost class catalog in Canvas");
        for(int i=0;i<m.entries.length;i++)if(m.entries[i]==47)m.selected=i;paint(c,"class-tree-"+w+"x"+h);c.keyPressed(Canvas.KEY_NUM5);paint(c,"class-detail-"+w+"x"+h);c.keyPressed(Canvas.KEY_POUND);check(b.campaign.bindings[0]==47,"Canvas binds awakened skill");c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_NUM0);paint(c,"class-touch-"+w+"x"+h);c.suspend();Method resume=DnfCanvas.class.getDeclaredMethod("resumeStory",String.class);resume.setAccessible(true);resume.invoke(c,"dnf-campaign-slot-"+get(c,"slot"));b=(Battle)get(c,"battle");check(b.campaign.job==6&&b.campaign.bindings[0]==47,"class and binding survive Canvas RMS");
    }
    private static void run(int w,int h)throws Exception{
        Canvas.testWidth=w;Canvas.testHeight=h;DnfCanvas c=new DnfCanvas(new DnfMIDlet());
        try{
            long end=System.currentTimeMillis()+5000;
            while(System.currentTimeMillis()<end){synchronized(c){if(((Boolean)get(c,"ready")).booleanValue())break;}Thread.sleep(10);}
            synchronized(c){check(((Boolean)get(c,"ready")).booleanValue(),"canvas loaded");}
            c.suspend();Session s=(Session)get(c,"session");
            check(((Integer)get(c,"menu")).intValue()==11,"original title is default entry");
            paint(c,"title-"+w+"x"+h);c.keyPressed(Canvas.KEY_NUM5);
            check(((Integer)get(c,"menu")).intValue()==12,"four campaign slots");paint(c,"slots-"+w+"x"+h);if(((boolean[])get(c,"occupied"))[0]){c.keyPressed(Canvas.KEY_STAR);c.keyPressed(Canvas.KEY_NUM4);}c.keyPressed(Canvas.KEY_NUM5);
            Story opening=(Story)get(c,"story");check(opening.id==100&&opening.nativeText,"empty slot starts native ANI 100 in Chinese");
            if(w==240&&h==320){
                Method advance=DnfCanvas.class.getDeclaredMethod("advanceStory");advance.setAccessible(true);
                int steps=0,last=100,count=1;int[] chain={100,101,102,103,999,201,3,4};
                while(((Integer)get(c,"menu")).intValue()==-2&&steps++<20000){Story part=(Story)get(c,"story");if(part.waiting)c.keyPressed(Canvas.KEY_NUM5);else advance.invoke(c);
                    part=(Story)get(c,"story");if(part.id!=last){check(count<chain.length&&part.id==chain[count++],"original opening transition");last=part.id;}}
                check(count==chain.length&&((Integer)get(c,"menu")).intValue()==-3,"ANI4 enters investigation field, never auto-starts ANI5");
                c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM5);c.keyPressed(Canvas.KEY_NUM5);check(((Integer)get(c,"menu")).intValue()==-3,"completed checkpoint resumes field");
                c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM5);c.keyPressed(Canvas.KEY_STAR);c.keyPressed(Canvas.KEY_NUM4);c.keyPressed(Canvas.KEY_NUM5);check(((Story)get(c,"story")).id==100,"confirmed overwrite starts fresh");
            }
            c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_NUM5);check(((Story)get(c,"story")).id==100,"campaign slot resumes");
            c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_STAR);check(((Integer)get(c,"selected")).intValue()==1,"overwrite defaults to no");
            c.keyPressed(Canvas.KEY_NUM5);check(((Integer)get(c,"menu")).intValue()==12,"cancel overwrite");
            c.keyPressed(Canvas.KEY_NUM0);c.keyPressed(Canvas.KEY_POUND);paint(c,"menu-"+w+"x"+h);
            c.keyPressed(Canvas.KEY_NUM5);check(((Integer)get(c,"menu")).intValue()==-1,"start scene");
            paint(c,"canvas-"+w+"x"+h);
            c.keyPressed(Canvas.KEY_NUM6);check(((Integer)get(c,"keys")).intValue()==Session.RIGHT,"held right");c.keyReleased(Canvas.KEY_NUM6);check(((Integer)get(c,"keys")).intValue()==0,"release right");
            c.keyPressed(Canvas.KEY_NUM5);check(s.hero.animation.clip==20,"native slash");c.keyPressed(Canvas.KEY_NUM5);check(s.hero.animation.nextOverride==21,"combo queued");
            c.keyPressed(Canvas.KEY_STAR);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM5);
            check(((Integer)get(c,"menu")).intValue()==2,"save screen");c.keyPressed(Canvas.KEY_NUM5);int savedX=s.x,savedY=s.y;s.x+=32;
            c.keyPressed(Canvas.KEY_STAR);c.keyPressed(Canvas.KEY_NUM8);c.keyPressed(Canvas.KEY_NUM5);c.keyPressed(Canvas.KEY_NUM5);
            check(s.x==savedX&&s.y==savedY,"save and load through actual canvas menu");
            if(Viewport.defaultTouch(w,h)){
                c.pointerPressed(5,h-5);check(((Integer)get(c,"keys")).intValue()==Session.LEFT,"touch direction");c.pointerDragged(-200,h-5);check(((Integer)get(c,"keys")).intValue()==0,"drag outside clears key");c.pointerReleased(5,h-5);
                c.pointerPressed(w-3,h-5);check(((Integer)get(c,"menu")).intValue()==0,"touch menu");
                c.pointerPressed(w-3,h-5);check(((Integer)get(c,"menu")).intValue()==-1,"touch back");
            }else {c.pointerPressed(5,h-5);check(((Integer)get(c,"keys")).intValue()==0,"touch disabled by default");}
            c.keyPressed(Canvas.KEY_NUM6);c.hideNotify();check(((Integer)get(c,"keys")).intValue()==0,"focus loss clears keys");
            set(c,"menu",Integer.valueOf(0));set(c,"selected",Integer.valueOf(7));c.keyPressed(Canvas.KEY_NUM5);
            check(((Integer)get(c,"menu")).intValue()==7,"story menu reachable");set(c,"storyIndex",Integer.valueOf(2));c.keyPressed(Canvas.KEY_NUM5);
            Story story=(Story)get(c,"story");while(!story.waiting&&!story.finished)story.advance();check(story.waiting,"story dialogue appears");
            check(story.nativeText,"runtime uses native Chinese layout");check(story.nodes[story.dialogue].text.indexOf("天气")>=0,"translated original dialogue");
            paint(c,"story-canvas-"+w+"x"+h);int storyTick=story.tick;String text=story.nodes[story.dialogue].text;
            c.keyPressed(Canvas.KEY_NUM0);check(((Integer)get(c,"menu")).intValue()==0,"story back saves and returns");
            c.keyPressed(Canvas.KEY_NUM5);c.keyPressed(Canvas.KEY_NUM1);Story restored=(Story)get(c,"story");
            check(restored.tick==storyTick&&restored.nodes[restored.dialogue].text.equals(text),"RMS resumes exact dialogue");
            if(Viewport.defaultTouch(w,h)){c.pointerPressed(10,100);check(!restored.waiting||restored.pageStart>0,"touch advances dialogue/page");}
            c.keyPressed(Canvas.KEY_NUM0);set(c,"menu",Integer.valueOf(8));c.keyPressed(Canvas.KEY_NUM5);paint(c,"journal-native-"+w+"x"+h);
            check(((Integer)get(c,"journalEnd")).intValue()>0,"native journal paginates");c.keyPressed(Canvas.KEY_NUM0);
            set(c,"menu",Integer.valueOf(0));set(c,"selected",Integer.valueOf(9));paint(c,"menu-scrolled-"+w+"x"+h);c.keyPressed(Canvas.KEY_NUM5);
            c.keyPressed(Canvas.KEY_NUM5);Audio audio=(Audio)get(c,"audio");check(audio.error.length()==0,"audio preview opens original file");
            audio.resume();int active=0;for(Player p:Manager.created)if(!p.closed){active++;check(p.started,"audio resumes after focus");}check(active<=3,"bounded audio channels");
            audio.volume(0);for(Player p:Manager.created)if(!p.closed)check(p.volume==0,"mute all live channels");
            audio.suspend();for(Player p:Manager.created)if(!p.closed)check(!p.started,"focus loss pauses audio");
            audio.stop();for(Player p:Manager.created)check(p.closed,"all audio players released");
            int resource=audio.resources[0];audio.resources[0]=65534;audio.preview(0);check(audio.error.indexOf("Missing audio resource")>=0,"missing primary audio reports failure");audio.resources[0]=resource;
            Manager.fail=true;audio.preview(0);check(audio.error.length()>0,"unsupported codec safely reported");Manager.fail=false;
            set(c,"menu",Integer.valueOf(5));set(c,"selected",Integer.valueOf(2));c.keyPressed(Canvas.KEY_NUM5);check(audio.volume==25,"third setting changes volume");
            battleUI(c,w,h);campaignUI(c,w,h);economyUI(c,w,h);fieldAudioUI(c,w,h);classUI(c,w,h);
        }finally{c.stop();((Thread)get(c,"thread")).join(2000);check(!((Thread)get(c,"thread")).isAlive(),"canvas thread terminates");}
    }
    public static void main(String[] args)throws Exception{
        Font f=Font.getFont(0,0,0);String value="第一行\n$A4$中文高亮内容$，继续阅读。\n尾行";
        int offset=0,pages=0;while(offset<value.length()){int end=NativeText.draw(null,f,value,offset,0,0,31,2,0xffffff);check(end>offset,"native pagination always advances");offset=end;check(++pages<20,"finite native pages");}
        check(NativeText.draw(null,f,"中",0,0,0,1,1,0xffffff)==1,"narrow viewport does not deadlock");
        run(240,320);run(320,240);run(360,640);run(640,360);System.out.println("PASS canvas/RMS "+checks+" checks in 4 resolutions (desktop adapter)");}
}
