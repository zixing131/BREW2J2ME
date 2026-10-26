package dnf;
import java.io.*;
import javax.microedition.lcdui.*;
import javax.microedition.rms.*;
/** MIDP adapter. All asset parsing, composition and animation run independently of MIDP. */
public final class DnfCanvas extends Canvas implements Runnable {
    private final DnfMIDlet owner;
    private final Session session=new Session();
    private Surface surface;
    private int[] scanline;
    private volatile boolean running=true,paused=true;
    private boolean ready;
    private Thread thread;
    private int keys,menu=11,selected,mapIndex,slot;
    private int[] maps;
    private String notice="原剧情、字库和音频已接入；开场战斗与任务场景已接入";
    private long noticeUntil;
    private Image icon;
    private Dat titleArt;
    private boolean campaign;
    private final boolean[] occupied=new boolean[4];
    private KoreanFont korean;
    private Journal journal;
    private Story story;
    private Battle battle;
    private Campaign progress;
    private GameMenu gameMenu;
    private int gamePage,gameEnd;
    private int currentMusic=-1;
    private long battleClock;
    private Audio audio;
    private int[] stories;
    private int storyIndex,soundIndex,journalIndex,journalPage,journalEnd;
    private static final String[] MAIN={"进入场景试玩","读取试玩记录","保存试玩记录","切换原版场景","角色外观","操作设置","移植说明","原版剧情","剧情日记","原版音乐与音效","返回标题"};
    private static final String[] TOUCH={"←","↑","↓","→","斩","菜单"};
    public DnfCanvas(DnfMIDlet owner){
        this.owner=owner;setFullScreenMode(true);
        try{icon=Image.createImage("/icon.png");}catch(IOException ignored){}
        thread=new Thread(this);thread.start();
    }
    public synchronized void resume(){paused=false;keys=0;battleClock=0;if(audio!=null)audio.resume();}
    public synchronized void suspend(){if(ready&&campaign)saveCampaign();paused=true;keys=0;battleClock=0;if(audio!=null)audio.suspend();}
    public synchronized void stop(){if(ready&&campaign)saveCampaign();running=false;keys=0;if(audio!=null)audio.stop();if(thread!=null)thread.interrupt();}
    protected synchronized void hideNotify(){suspend();}
    protected synchronized void showNotify(){resume();}
    protected synchronized void sizeChanged(int w,int h){surface=null;scanline=null;keys=0;}
    public static boolean defaultTouch(int w,int h){return Viewport.defaultTouch(w,h);}
    private boolean touch(){return session.touchMode==1||(session.touchMode==0&&defaultTouch(getWidth(),getHeight()));}
    private void message(String value){notice=value;noticeUntil=System.currentTimeMillis()+4000;}
    public void run(){
        try {
            DataInputStream r=new DataInputStream(new ByteArrayInputStream(Bytes.resource("/maps.bin")));
            maps=new int[r.readUnsignedShort()];for(int i=0;i<maps.length;i++)maps[i]=r.readUnsignedShort();r.close();
            r=new DataInputStream(new ByteArrayInputStream(Bytes.resource("/stories.bin")));
            stories=new int[r.readUnsignedShort()];for(int i=0;i<stories.length;i++)stories[i]=r.readUnsignedShort();r.close();
            synchronized(this){session.load(maps[0]);korean=new KoreanFont();journal=new Journal(true);titleArt=new Assets().dat(45223);audio=new Audio();refreshSlots();loadPreferences();if(paused)audio.suspend();ready=true;}
        }catch(Exception e){synchronized(this){notice="资源加载失败："+e.toString();menu=7;}}
        while(running){long start=System.currentTimeMillis();
            synchronized(this){if(!paused&&ready){
                if(menu==-1){session.tick(keys);int sound=session.takeSound();if(sound>=0)audio.play(0,sound,false,false);}
                else if(menu==-3)try{advanceBattle();}catch(Exception e){menu=16;keys=0;message("场景运行失败："+e.toString());}
                else if(menu==-2)try{
                    advanceStory();
                }catch(Exception e){menu=7;audio.stop();message("剧情读取失败："+e.toString());}
            }}
            if(!paused){repaint();serviceRepaints();}
            long wait=Session.TICK_MS[session.speed]-(System.currentTimeMillis()-start);
            try{Thread.sleep(wait>0?wait:1);}catch(InterruptedException ignored){}
        }
    }
    private void advanceStory()throws IOException {
                    story.advance();int music=story.takeMusic();if(music>=0){currentMusic=music;audio.play(music,0,true,true);}
                    if(story.finished){int next=story.nextId==1?999:story.nextId;boolean exists=false;for(int i=0;i<stories.length;i++)if(stories[i]==next)exists=true;
                        if(story.exitType==2&&exists){startStory(next);}else if(campaign&&(story.exitType==1||story.exitType==3)){enterBattle();}else if(campaign&&story.exitType==0&&battle!=null){battle.pendingStory=-1;menu=-3;battleClock=0;syncBattleMusic(true);saveBattle();}else{saveStory();menu=campaign?15:7;audio.stop();if(!campaign)message("本段剧情结束");}}
    }
    private int movement(int key){
        if(key==KEY_NUM4)return Session.LEFT;if(key==KEY_NUM6)return Session.RIGHT;
        if(key==KEY_NUM2)return Session.UP;if(key==KEY_NUM8)return Session.DOWN;
        int a=0;try{a=getGameAction(key);}catch(IllegalArgumentException ignored){}
        if(a==LEFT)return Session.LEFT;if(a==RIGHT)return Session.RIGHT;if(a==UP)return Session.UP;if(a==DOWN)return Session.DOWN;return 0;
    }
    protected synchronized void keyPressed(int key){
        if(!ready){if(menu==7&&(key==KEY_NUM0||key==KEY_STAR||key==-7))owner.quit();return;}int move=movement(key);
        boolean fire=key==KEY_NUM5||key==-5;
        try{fire=fire||getGameAction(key)==FIRE;}catch(IllegalArgumentException ignored){}
        if(menu==11){
            if(fire||key==-6){refreshSlots();menu=12;}
            else if(key==KEY_POUND){campaign=false;menu=0;selected=0;}
            else if(key==-7)owner.quit();
        }else if(menu==12){
            if(move==Session.LEFT||move==Session.UP)slot=Math.max(0,slot-1);
            else if(move==Session.RIGHT||move==Session.DOWN)slot=Math.min(3,slot+1);
            else if(key==KEY_NUM0||key==-7)menu=11;
            else if(key==KEY_STAR&&occupied[slot]){menu=14;selected=1;}
            else if(fire||key==-6)openCampaign();
        }else if(menu==14){
            if(move!=0)selected=1-selected;
            else if(key==KEY_NUM0||key==-7)menu=12;
            else if(fire||key==-6){if(selected==0)newCampaign();else menu=12;}
        }else if(menu==-3){
            if(battle.dialogue>=0){if(battle.rewardChoices()>0&&(key==KEY_NUM1||key==KEY_NUM3)){battle.selectReward(key==KEY_NUM1?-1:1);}else if(fire)confirmBattle();else if(key==KEY_NUM0||key==-7){if(battle.dialogue>=3)battle.dismiss();else pauseBattle();}}
            else if(move!=0){keys|=move;battle.directionPressed(move);}
            else if(fire){battle.attack();checkBattleStory();}
            else if(key==KEY_NUM1||key==KEY_STAR)battle.skill(0);
            else if(key==KEY_NUM3)battle.skill(1);
            else if(key==KEY_NUM7){keys=0;battle.journal();}
            else if(key==KEY_NUM9)openGameMenu(0);
            else if(key==KEY_NUM0||key==KEY_POUND||key==-6||key==-7)pauseBattle();
        }else if(menu==16){
            if(key==KEY_NUM0||key==-7){menu=-3;battleClock=0;keys=0;}
            else if(move==Session.UP||move==Session.LEFT)selected=(selected+5)%6;
            else if(move==Session.DOWN||move==Session.RIGHT)selected=(selected+1)%6;
            else if(fire||key==-6){if(selected==5){openGameMenu(0);}else if(selected==0){menu=-3;battleClock=0;}else if(selected==3){menu=-3;battleClock=0;battle.journal();}else if(selected==4){menu=-3;battleClock=0;if(battle.campaign.dungeon>0)battle.show("离开当前地下城，返回城镇休整？\n已经取得的经验和任务进度会保留。\n5：返回城镇   0：取消",4,-1);else if(!battle.tutorial()&&battle.field!=41){battle.hp=battle.maxHp;battle.mp=battle.maxMp;message("休整完成");}else message("请先完成当前任务");}else if(saveBattle()){if(selected==2){menu=12;audio.stop();refreshSlots();}else message("战斗进度已保存");}}
        }else if(menu==17){
            if(key==KEY_NUM0||key==-7){if(gameMenu.confirming){gameMenu.confirming=false;gameMenu.selling=false;gamePage=0;}else{menu=-3;battleClock=0;saveBattle();}}
            else if(key==KEY_NUM1||move==Session.LEFT){gameMenu.changeTab(-1);gamePage=0;}
            else if(key==KEY_NUM3||move==Session.RIGHT){gameMenu.changeTab(1);gamePage=0;}
            else if(key==KEY_POUND){gameMenu.alternate();gamePage=0;}
            else if(move==Session.UP||move==Session.DOWN){gameMenu.move(move==Session.UP?-1:1);gamePage=0;}
            else if(fire||key==-6){try{if(gameMenu.confirming&&gameDetailEnd()<gameMenu.detail().length()){gamePage=gameEnd;}else{boolean entered=gameMenu.confirm();gamePage=0;if(entered){menu=-3;battleClock=0;}saveBattle();}}catch(IOException e){message("操作失败："+e.toString());}}
        }else if(menu==15){if(fire||key==KEY_NUM0||key==-7){menu=12;refreshSlots();}}
        else if(menu==-2){
            if(fire)confirmStory();else if(key==KEY_NUM0||key==KEY_STAR||key==-7){saveStory();menu=campaign?12:0;selected=7;refreshSlots();audio.stop();}
        }else if(menu==-1){
            if(move!=0){keys|=move;session.actionViewer=false;}
            else if(fire)session.attack();
            else if(key==KEY_NUM1)session.inspectAction(-1);
            else if(key==KEY_NUM3)session.inspectAction(1);
            else if(key==KEY_STAR||key==-6||key==-7||key==KEY_NUM0){menu=0;selected=0;keys=0;}
        }else{
            if(key==-7||key==KEY_NUM0||key==KEY_STAR){if(menu==9)audio.stop();menu=menu==0?-1:menu==10?8:0;selected=0;}
            else if(menu==7&&key==KEY_NUM1)resumeStory();
            else if(move==Session.UP||move==Session.LEFT)change(-1);
            else if(move==Session.DOWN||move==Session.RIGHT)change(1);
            else if(fire||key==-6)choose();
        }
        repaint();
    }
    protected synchronized void keyReleased(int key){keys&=~movement(key);}
    protected synchronized void keyRepeated(int key){if(menu!=-1&&menu!=-3)keyPressed(key);}
    private void change(int delta){
        if(menu==0)selected=(selected+delta+MAIN.length)%MAIN.length;
        else if(menu==1||menu==2)slot=(slot+delta+4)%4;
        else if(menu==3)mapIndex=(mapIndex+delta+maps.length)%maps.length;
        else if(menu==4){try{session.hero.setFamily(session.hero.family+delta);}catch(IOException e){message("外观读取失败");}}
        else if(menu==5)selected=(selected+delta+3)%3;
        else if(menu==7)storyIndex=(storyIndex+delta+stories.length)%stories.length;
        else if(menu==8){journalIndex=(journalIndex+delta+journal.titles.length)%journal.titles.length;journalPage=0;}
        else if(menu==9)soundIndex=(soundIndex+delta+audio.resources.length)%audio.resources.length;
        else if(menu==10){if(delta<0)journalPage=0;else journalPage=journalEnd>=journal.bodies[journalIndex].length()?0:journalEnd;}
    }
    private int menuRows(){return Math.max(1,Math.min(MAIN.length,(getHeight()-100)/24));}
    private int menuFirst(){int rows=menuRows();return Math.max(0,Math.min(selected-rows/2,MAIN.length-rows));}
    private void choose(){
        try{
            if(menu==0){int item=selected;selected=0;
                if(item==0){menu=-1;message("方向键移动，5挥剑，连续按5接三段斩");}
                else if(item==10){menu=11;campaign=false;}else menu=item;
            }else if(menu==1){RecordStore r=RecordStore.openRecordStore("dnf-port-slot-"+slot,false);
                SaveData save;try{save=SaveData.decode(r.getRecord(1));}finally{r.closeRecordStore();}
                session.restore(save);for(int i=0;i<maps.length;i++)if(maps[i]==save.map)mapIndex=i;
                menu=-1;message("已读取试玩记录 "+(slot+1));
            }else if(menu==2){byte[] data=session.save().encode();RecordStore r=RecordStore.openRecordStore("dnf-port-slot-"+slot,true);
                try{if(r.getNumRecords()==0)r.addRecord(data,0,data.length);else r.setRecord(1,data,0,data.length);}finally{r.closeRecordStore();}
                menu=-1;message("已保存试玩记录 "+(slot+1));
            }else if(menu==3){session.load(maps[mapIndex]);menu=-1;message("场景 "+session.world.id);}
            else if(menu==4)menu=-1;
            else if(menu==5){if(selected==0)session.speed=(session.speed+1)%5;else if(selected==1)session.touchMode=(session.touchMode+1)%3;else audio.volume((audio.volume+25)%125);savePreferences();}
            else if(menu==7){campaign=false;startStory(stories[storyIndex]);}
            else if(menu==8){journalPage=0;menu=10;}
            else if(menu==9){audio.preview(soundIndex);if(audio.error.length()>0)message("设备音频不可用："+audio.error);}
            else if(menu==10)change(1);
            else menu=0;
        }catch(Exception e){message(menu==1?"此记录不存在或已损坏":"操作失败："+e.toString());}
        keys=0;
    }
    private int viewHeight(){return Math.max(1,(menu==-1||menu==-3)&&touch()?getHeight()-Math.max(64,getHeight()/5):getHeight());}
    private void startStory(int id)throws IOException {
        Story next=new Story(id,korean,true);story=next;menu=-2;keys=0;noticeUntil=0;
        for(int i=0;i<stories.length;i++)if(stories[i]==id)storyIndex=i;
        audio.stop();currentMusic=-1;int music=story.takeMusic();if(music>=0){currentMusic=music;audio.play(music,0,true,true);}
    }
    private void saveRecord(String name,byte[] data)throws Exception {
        RecordStore r=RecordStore.openRecordStore(name,true);
        try{if(r.getNumRecords()==0)r.addRecord(data,0,data.length);else r.setRecord(1,data,0,data.length);}finally{r.closeRecordStore();}
    }
    private byte[] readRecord(String name)throws Exception {
        RecordStore r=RecordStore.openRecordStore(name,false);try{return r.getRecord(1);}finally{r.closeRecordStore();}
    }
    private void savePreferences(){try{saveRecord("dnf-preferences",new byte[]{1,(byte)session.speed,(byte)session.touchMode,(byte)audio.volume});}catch(Exception e){message("设置保存失败");}}
    private void loadPreferences(){try{byte[] b=readRecord("dnf-preferences");if(b.length==4&&b[0]==1&&b[1]>=0&&b[1]<5&&b[2]>=0&&b[2]<3&&b[3]>=0&&b[3]<=100){session.speed=b[1];session.touchMode=b[2];audio.volume=b[3];}}catch(Exception ignored){}}
    private void enterBattle()throws IOException {
        Battle next=battle!=null&&battle.field==story.exitWords[0]&&battle.stage==story.exitWords[1]?battle:new Battle(new Session());next.campaign=progress;next.fromStory(story);progress=next.campaign;if(next.tutorial()||next.field==41&&next.stage==2)next.music=currentMusic;battle=next;menu=-3;battleClock=0;keys=0;noticeUntil=0;syncBattleMusic(false);saveBattle();
    }
    private void syncBattleMusic(boolean force)throws IOException {battle.refreshMusic();if(force||currentMusic!=battle.music){currentMusic=battle.music;if(currentMusic>=0)audio.play(currentMusic,0,true,true);}}
    private void advanceBattle()throws IOException {if(battle.menuRequest>=0){int tab=battle.menuRequest;battle.menuRequest=-1;openGameMenu(tab);return;}long now=System.currentTimeMillis();int elapsed=battleClock==0?Session.TICK_MS[session.speed]:(int)Math.max(0,Math.min(1000,now-battleClock));battleClock=now;battle.tick(keys,elapsed);syncBattleMusic(false);if(battle.sceneChanged){battle.sceneChanged=false;keys=0;saveBattle();}if(battle.campaign.loot.notice.length()>0){message(battle.campaign.loot.notice);battle.campaign.loot.notice="";}int sound=battle.takeSound();if(sound>=0)audio.play(0,sound,false,false);checkBattleStory();}
    private void checkBattleStory(){if(battle!=null&&battle.pendingStory>=0)try{int id=battle.pendingStory;progress=battle.campaign;startStory(id);saveStory();}catch(IOException e){menu=16;keys=0;message("剧情读取失败："+e.toString());}}
    private void openGameMenu(int tab){keys=0;gameMenu=new GameMenu(battle);gameMenu.tab=tab;gameMenu.refresh();menu=17;gamePage=0;saveBattle();}
    private void pauseBattle(){keys=0;menu=16;selected=0;saveBattle();}
    private void saveCampaign(){if(menu==-3||menu==16||menu==17)saveBattle();else if(menu==-2)saveStory();}
    private boolean saveBattle(){if(battle==null)return false;try{saveRecord("dnf-campaign-slot-"+slot,battle.encode());occupied[slot]=true;return true;}catch(Exception e){message("战斗存档失败："+e.toString());return false;}}
    private void confirmBattle(){Font f=Font.getFont(Font.FACE_SYSTEM,Font.STYLE_PLAIN,Font.SIZE_MEDIUM);int lines=Math.max(1,(getHeight()/2-(battle.rewardChoices()>0?68:42))/f.getHeight());battle.pageEnd=NativeText.draw(null,f,battle.dialogueText(),battle.pageStart,12,0,getWidth()-24,lines,0xffffff);battle.confirm();checkBattleStory();}
    private void saveStory(){
        if(story==null)return;
        try{ByteArrayOutputStream b=new ByteArrayOutputStream();DataOutputStream d=new DataOutputStream(b);
            int flags=(story.waiting?1:0)|(story.finished?2:0);
            d.writeInt(campaign?0x444e5334:0x444e5332);d.writeInt(story.id);d.writeInt(story.tick);d.writeInt(story.pageStart);d.writeInt(flags);d.writeInt(story.id^story.tick^story.pageStart^flags^0x1fa23b);
            if(campaign){if(progress==null)progress=new Campaign();progress.write(d);byte[] suspended=battle==null?new byte[0]:battle.encode();d.writeInt(suspended.length);d.write(suspended);d.flush();byte[] raw=b.toByteArray();d.writeInt(Campaign.checksum(raw,raw.length));}
            d.flush();saveRecord(campaign?"dnf-campaign-slot-"+slot:"dnf-story-progress",b.toByteArray());
            if(campaign)occupied[slot]=true;
        }catch(Exception e){message("剧情进度保存失败");}
    }
    private void resumeStory(){resumeStory("dnf-story-progress");}
    private void resumeStory(String name){
        try{byte[] b=readRecord(name);
            if(campaign&&b.length>=4&&b[0]==0x44&&b[1]==0x4e&&b[2]==0x42&&(b[3]==0x31||b[3]==0x32)){Battle restoredBattle=Battle.decode(session,b);battle=restoredBattle;progress=battle.campaign;menu=-3;battleClock=0;keys=0;noticeUntil=0;audio.stop();currentMusic=battle.music;if(currentMusic>=0)audio.play(currentMusic,0,true,true);return;}
            if(b.length<20||b.length>140000)throw new IOException("Progress length");
            DataInputStream d=new DataInputStream(new ByteArrayInputStream(b));int magic=d.readInt();boolean suspendedSave=magic==0x444e5334;boolean extended=magic==0x444e5333||suspendedSave;if(!extended&&b.length!=20&&b.length!=24)throw new IOException("Progress legacy length");if(!extended&&magic!=(b.length==20?0x444e5331:0x444e5332))throw new IOException("Progress version");
            int id=d.readInt(),time=d.readInt(),page=d.readInt(),flags=b.length>=24?d.readInt():0;if(flags<0||flags>3||d.readInt()!=(id^time^page^flags^0x1fa23b))throw new IOException("Progress checksum");
            Battle suspendedBattle=null;Campaign restoredProgress=null;if(extended){restoredProgress=Campaign.read(d);if(suspendedSave){int length=d.readInt();if(length<0||length>d.available()-4)throw new IOException("Suspended battle length");if(length>0){byte[] bytes=new byte[length];d.readFully(bytes);suspendedBattle=Battle.decode(session,bytes);suspendedBattle.campaign=restoredProgress;}}if(d.readInt()!=Campaign.checksum(b,b.length-4)||d.available()!=0)throw new IOException("Progress campaign checksum");}
            Story restored=new Story(id,korean,true);if(time<0||time>restored.duration||page<0)throw new IOException("Progress bounds");
            while(restored.tick<time){restored.waiting=false;restored.advance();}
            if(page>0&&(restored.dialogue<0||page>restored.nodes[restored.dialogue].text.length()))throw new IOException("Progress page");
            restored.pageStart=page;if(b.length>=24){restored.waiting=(flags&1)!=0;restored.finished=(flags&2)!=0;}
            if(restored.finished&&time!=restored.duration)throw new IOException("Progress end");
            if(campaign){progress=restoredProgress==null?new Campaign():restoredProgress;if(!extended&&id>=11&&id<100)progress.openingCheckpoint();battle=suspendedBattle;}
            story=restored;menu=campaign&&restored.finished?15:-2;keys=0;noticeUntil=0;audio.stop();currentMusic=-1;int music=story.takeMusic();if(music>=0){currentMusic=music;audio.play(music,0,true,true);}if(campaign&&restored.finished&&(restored.exitType==1||restored.exitType==3))enterBattle();else if(campaign&&restored.finished&&restored.exitType==0&&battle!=null){battle.pendingStory=-1;menu=-3;syncBattleMusic(true);}
        }catch(Exception e){message("没有可继续的剧情记录，或记录已损坏");}
    }
    protected synchronized void pointerPressed(int x,int y){
        if(!ready){if(menu==7&&y>=getHeight()-50)owner.quit();return;}
        if(!touch()||x<0||x>=getWidth()||y<0||y>=getHeight())return;
        if(menu==-3){
            if(battle.dialogue>=0){if(battle.rewardChoices()>0&&y>=getHeight()-54&&y<getHeight()-26){battle.selectReward(x<getWidth()/2?-1:1);repaint();return;}if(y>=getHeight()-32&&x>getWidth()/2&&battle.dialogue>=3)battle.dismiss();else if(y<30)pauseBattle();else confirmBattle();repaint();return;}
            int vh=viewHeight();if(y<vh)return;int column=Math.min(3,x*4/getWidth()),row=(y-vh)*2/(getHeight()-vh);
            if(row==0)keys=new int[]{Session.LEFT,Session.UP,Session.DOWN,Session.RIGHT}[column];
            else if(column==0){battle.attack();checkBattleStory();}else if(column==1)battle.skill(0);else if(column==2)battle.skill(1);else pauseBattle();return;
        }
        if(menu==17){if(y<44){keyPressed(x<getWidth()/2?KEY_NUM1:KEY_NUM3);}else if(y>=getHeight()-48){keyPressed(x<getWidth()/3?KEY_NUM5:x<2*getWidth()/3?KEY_POUND:KEY_NUM0);}else if(gameMenu.confirming){keyPressed(KEY_NUM5);}else{int row=(y-62)/gameRowHeight(),index=gameFirst()+row;if(row>=0&&row<gameRows()&&index<gameMenu.entries.length){gameMenu.selected=index;keyPressed(KEY_NUM5);}}repaint();return;}
        if(menu==16){if(y>=getHeight()-42)keyPressed(x<getWidth()/2?KEY_NUM5:KEY_NUM0);else{int row=(y-66)/pauseRowHeight();if(y>=66&&row>=0&&row<6){selected=row;keyPressed(KEY_NUM5);}}return;}
        if(menu>=11){
            if(menu==11)keyPressed(KEY_NUM5);
            else if(menu==12){if(y>=getHeight()-42){keyPressed(x<getWidth()/2?KEY_NUM5:KEY_NUM0);}else if(y<64){keyPressed(KEY_STAR);}else if(x<getWidth()/3)keyPressed(KEY_NUM4);else if(x>getWidth()*2/3)keyPressed(KEY_NUM6);else keyPressed(KEY_NUM5);}
            else if(menu==14){selected=x<getWidth()/2?0:1;keyPressed(KEY_NUM5);}
            else keyPressed(KEY_NUM0);
            return;
        }
        if(menu==-2){if(y<30&&x>=getWidth()/2)keyPressed(KEY_NUM0);else confirmStory();repaint();return;}
        if(menu!=-1){
            if(y>=getHeight()-42){if(x<getWidth()/2)choose();else{menu=menu==0?-1:0;selected=0;}}
            else if(menu==0){int row=(y-64)/24,item=menuFirst()+row;if(y>=64&&row>=0&&row<menuRows()&&item<MAIN.length){selected=item;choose();}}
            else if(menu==5){selected=Math.max(0,Math.min(2,(y-64)/30));choose();}
            else if(y<getHeight()/2)change(-1);else change(1);
            repaint();return;
        }
        if(y<viewHeight())return;
        int button=Math.min(5,x*6/getWidth());
        if(button<4)keys=new int[]{Session.LEFT,Session.UP,Session.DOWN,Session.RIGHT}[button];
        else if(button==4)session.attack();else {menu=0;selected=0;keys=0;}
    }
    protected synchronized void pointerDragged(int x,int y){keys=0;if(menu==-3&&touch()&&y>=viewHeight()&&y<viewHeight()+(getHeight()-viewHeight())/2&&x>=0&&x<getWidth())pointerPressed(x,y);else if(menu==-1&&touch()&&x>=0&&x<getWidth()&&y>=viewHeight()&&y<getHeight()&&x*6/getWidth()<4)pointerPressed(x,y);}
    protected synchronized void pointerReleased(int x,int y){keys=0;}
    protected synchronized void paint(Graphics g){
        int w=getWidth(),h=getHeight();g.setColor(0x11141a);g.fillRect(0,0,w,h);
        g.setFont(Font.getFont(Font.FACE_SYSTEM,Font.STYLE_PLAIN,Font.SIZE_MEDIUM));
        if(!ready){g.setColor(0xffffff);g.drawString(menu==7?"资源加载失败，0退出":"正在读取原版资源…",4,h/2,Graphics.TOP|Graphics.LEFT);return;}
        int vh=menu==11?getHeight()-32:viewHeight(),lw=menu>=11&&menu!=16&&menu!=17?240:w>h?320:240,lh=menu>=11&&menu!=16&&menu!=17?320:w>h?240:320;
        if(surface==null||surface.w!=lw||surface.h!=lh){surface=new Surface(lw,lh);scanline=new int[w*8];}
        if(menu>=11&&menu!=16&&menu!=17){surface.clear(0);int left=(lw-240)/2,top=(lh-320)/2;surface.tile(titleArt,0,0,left,top,0,false,1,0,0,0,false);surface.tile(titleArt,1,0,left,top+126,0,false,1,0,0,0,false);}
        else if((menu==-3||menu==16||menu==17)&&battle!=null)battle.draw(surface);
        else if(menu==-2&&story!=null)story.draw(surface);
        else if(menu==10)surface.clear(0x0841);
        else session.draw(surface);
        int dw=w,dh=lh*w/lw;if(dh>vh){dh=vh;dw=lw*vh/lh;}int ox=(w-dw)/2,oy=(vh-dh)/2;
        for(int py=0;py<dh;py+=8){int strip=Math.min(8,dh-py);
            for(int row=0;row<strip;row++){int sy=(py+row)*lh/dh;
                for(int px=0;px<dw;px++)scanline[row*dw+px]=Surface.rgb(surface.pixels[sy*lw+px*lw/dw]);}
            g.drawRGB(scanline,0,dw,ox,oy+py,dw,strip,false);
        }
        if(menu==17)drawGameMenu(g,w,h);
        else if(menu==16)drawBattlePause(g,w,h);
        else if(menu==-3)drawBattle(g,w,h,vh,ox,oy,dw,dh,lw,lh);
        else if(menu>=11)drawFront(g,w,h);
        else if(menu>=0&&menu!=10)drawMenu(g,w,h);
        else if(menu==-2){drawStoryText(g,ox,oy,dw,dh,lw,lh);g.setColor(0x10151d);g.fillRect(0,0,w,30);g.setColor(0x293444);g.fillRect(w/2,0,w-w/2,30);g.setColor(0xe6cf91);g.drawString(story.waiting?"5 继续":"剧情演出",w/4,4,Graphics.TOP|Graphics.HCENTER);g.drawString("0 保存返回",w*3/4,4,Graphics.TOP|Graphics.HCENTER);}
        else if(menu==10){Font f=g.getFont();NativeText.draw(g,f,journal.titles[journalIndex],0,12,12,w-24,2,0xffdf83);journalEnd=NativeText.draw(g,f,journal.bodies[journalIndex],journalPage,12,16+2*f.getHeight(),w-24,Math.max(1,(h-54-2*f.getHeight())/f.getHeight()),0xffffff);g.setColor(0xe6cf91);g.drawString("5 下一页    ↑ 首页    0 返回",w/2,h-21,Graphics.TOP|Graphics.HCENTER);}
        else {
            g.setColor(0x17202c);g.fillRect(0,0,w,18);g.setColor(0xe6cf91);g.drawString("DNF 鬼剑士 · 移植试玩",4,0,Graphics.TOP|Graphics.LEFT);
            g.setColor(0x17202c);g.fillRect(0,vh-17,w,17);g.setColor(0xffffff);
            g.drawString(session.actionViewer?"动作 "+session.hero.animation.clip+" / 110   1、3切换":"方向移动  5挥剑  *菜单",4,vh-17,Graphics.TOP|Graphics.LEFT);
            if(touch()){int bw=w/6;for(int i=0;i<6;i++){g.setColor(0x293444);g.fillRect(i*bw+1,vh+2,bw-2,h-vh-4);g.setColor(0xe6cf91);g.drawString(TOUCH[i],i*bw+bw/2,vh+(h-vh)/2-8,Graphics.TOP|Graphics.HCENTER);}}
        }
        if(noticeUntil>System.currentTimeMillis()){g.setColor(0x101010);g.fillRect(0,h-35,w,35);g.setColor(0xffd77a);wrap(g,notice,5,h-34,w-10,2);}
    }
    private void drawBattle(Graphics g,int w,int h,int vh,int ox,int oy,int dw,int dh,int lw,int lh){
        Font f=g.getFont();int fh=f.getHeight();g.setColor(0x121923);g.fillRect(0,0,w,fh*2+8);
        g.setColor(0xffdf83);g.drawString((battle.father()?"德林":"巴隆")+" Lv."+battle.level,5,2,Graphics.TOP|Graphics.LEFT);
        int left=w/2,bw=w-left-7;g.setColor(0x473339);g.fillRect(left,5,bw,7);g.setColor(0xd34b4b);g.fillRect(left,5,bw*battle.hp/battle.maxHp,7);
        g.setColor(0x293444);g.fillRect(left,15,bw,5);g.setColor(0x468fd0);g.fillRect(left,15,bw*battle.mp/battle.maxMp,5);
        NativeText.draw(g,f,battle.objective(),0,5,fh+5,w-10,1,0xffffff);
        if(battle.target>=0){Battle.Enemy e=battle.enemies[battle.target];if(!e.dead){int ew=Math.min(140,w-32);g.setColor(0x222222);g.fillRect((w-ew)/2,fh*2+11,ew,7);g.setColor(0xc04444);g.fillRect((w-ew)/2,fh*2+11,ew*e.hp/e.data.hp,7);g.setColor(0xffdf83);g.drawString(e.data.name(),w/2,fh*2+19,Graphics.TOP|Graphics.HCENTER);}}
        for(int i=0;i<battle.enemies.length;i++){Battle.Enemy e=battle.enemies[i];if(e.numberTicks>0){g.setColor(0xffe484);g.drawString(""+e.number,ox+(e.x-battle.cameraX)*dw/lw,oy+(e.y-battle.cameraY-65)*dh/lh-(24-e.numberTicks),Graphics.TOP|Graphics.HCENTER);}}
        if(battle.hitFlash>0){g.setColor(0xdb3c44);g.drawRect(1,1,w-3,vh-3);}
        if(battle.zone==0||battle.zone==20||battle.campaign.dungeon>0){
            for(int i=0;i<battle.scene.areas.length;i++){int[] a=battle.scene.areas[i];String label=battle.areaLabel(a);if(label.length()==0)continue;
                int ax=ox+((a[6]+a[8])/2-battle.cameraX)*dw/lw,ay=oy+(a[7]-battle.cameraY-(a[0]==2?45:12))*dh/lh;
                if(ax< -20||ax>w+20||ay<fh*2+12||ay>vh-30)continue;ax=Math.max(g.getFont().stringWidth(label)/2+2,Math.min(w-g.getFont().stringWidth(label)/2-2,ax));
                g.setColor(0x10151d);g.drawString(label,ax+1,ay+1,Graphics.TOP|Graphics.HCENTER);g.setColor(a[0]==2?0xffdf83:0x87dfbe);g.drawString(label,ax,ay,Graphics.TOP|Graphics.HCENTER);
            }
        }
        for(int i=0;i<battle.campaign.loot.ground.length;i++){int[] a=battle.campaign.loot.ground[i];if(a==null||a[0]!=battle.field||a[1]!=battle.stage)continue;int x=ox+(a[2]-battle.cameraX)*dw/lw,y=oy+(a[3]-battle.cameraY)*dh/lh;if(x<0||x>w||y<fh*2+30||y>vh-30)continue;g.setColor(a[4]<0?0xffdf83:0x87dfbe);g.fillRect(x-3,y-3,7,7);String label=a[4]<0?"金币 "+a[6]:battle.campaign.bag.items.name(a[4],a[5]);NativeText.draw(g,f,label,0,Math.max(4,Math.min(w-110,x-50)),y-20,106,1,0xffdf83);}
        if(battle.hp<=0){g.setColor(0x121923);g.fillRect(12,h/2-35,w-24,70);NativeText.draw(g,f,"战斗失败\n按5返回城镇，休整后再来挑战。",0,20,h/2-27,w-40,3,0xffdf83);}
        if(battle.field==41&&battle.stage==2){int x=ox+(207-battle.cameraX)*dw/lw,y=oy+(146-battle.cameraY)*dh/lh;g.setColor(0xffe484);g.drawString("研究日志 5",x,y,Graphics.TOP|Graphics.HCENTER);}
        if(touch()){String[] labels={"←","↑","↓","→","攻击",battle.father()?"技能1":"上挑",battle.father()?"技能3":"鬼斩","菜单"};int bh=(h-vh)/2;for(int i=0;i<8;i++){int bx=(i%4)*w/4,by=vh+(i/4)*bh;g.setColor(0x293444);g.fillRect(bx+1,by+1,w/4-2,bh-2);g.setColor(0xffdf83);g.drawString(labels[i],bx+w/8,by+(bh-fh)/2,Graphics.TOP|Graphics.HCENTER);}}
        else{g.setColor(0x121923);g.fillRect(0,h-fh-2,w,fh+2);g.setColor(0xffdf83);g.drawString((battle.zone==0||battle.zone==20)?"5交谈  7任务  0菜单":battle.father()?"5攻击  1/3技能  0菜单":"5攻击  1上挑  3鬼斩  0菜单",w/2,h-fh-1,Graphics.TOP|Graphics.HCENTER);}
        if(battle.dialogue>=0){int top=h/2;g.setColor(0x121923);g.fillRect(5,top-8,w-10,h-top-20);g.setColor(0xb99b64);g.drawRect(5,top-8,w-11,h-top-21);battle.pageEnd=NativeText.draw(g,f,battle.dialogueText(),battle.pageStart,12,top,w-24,Math.max(1,(h/2-(battle.rewardChoices()>0?68:42))/fh),0xffffff);if(battle.rewardChoices()>0){g.setColor(0x6e4222);g.fillRect(6,h-54,w-12,27);g.setColor(0xffdf83);g.drawString("1 ‹ "+battle.rewardLabel()+" › 3",w/2,h-51,Graphics.TOP|Graphics.HCENTER);}g.setColor(0x121923);g.fillRect(0,h-26,w,26);g.setColor(0xffdf83);g.drawString(battle.dialogue>=3?"5 继续 / 确认   0 取消":"5 继续    0 保存菜单",w/2,h-22,Graphics.TOP|Graphics.HCENTER);}
    }
    private int gameDetailEnd(){Font f=Font.getFont(Font.FACE_SYSTEM,Font.STYLE_PLAIN,Font.SIZE_MEDIUM);gameEnd=NativeText.draw(null,f,gameMenu.detail(),gamePage,14,62,getWidth()-28,Math.max(1,(getHeight()-118)/f.getHeight()),0xffffff);return gameEnd;}
    private int gameRowHeight(){return Math.max(22,Font.getFont(Font.FACE_SYSTEM,Font.STYLE_PLAIN,Font.SIZE_MEDIUM).getHeight()+8);}
    private int gameRows(){return Math.max(1,(getHeight()-142)/gameRowHeight());}
    private int gameFirst(){return Math.max(0,Math.min(gameMenu.selected-gameRows()/2,gameMenu.entries.length-gameRows()));}
    private void drawGameMenu(Graphics g,int w,int h){
        Font f=g.getFont();int fh=f.getHeight();g.setColor(0x121923);g.fillRect(4,4,w-8,h-8);g.setColor(0xb99b64);g.drawRect(4,4,w-9,h-9);
        g.setColor(0xffdf83);g.drawString("‹  "+GameMenu.TABS[gameMenu.tab]+"  ›",w/2,12,Graphics.TOP|Graphics.HCENTER);
        g.setColor(0xb7c2d2);g.drawString("Lv."+battle.campaign.level+"  金币 "+battle.campaign.gold,12,36,Graphics.TOP|Graphics.LEFT);
        if(gameMenu.confirming){gameEnd=NativeText.draw(g,f,gameMenu.detail(),gamePage,14,62,w-28,Math.max(1,(h-118)/fh),0xffffff);}
        else if(gameMenu.entries.length==0){NativeText.draw(g,f,gameMenu.detail(),0,14,68,w-28,4,0xb7c2d2);}
        else{int first=gameFirst(),rh=gameRowHeight();for(int row=0;row<gameRows()&&first+row<gameMenu.entries.length;row++){int i=first+row,y=62+row*rh;g.setColor(i==gameMenu.selected?0x6e4222:0x253040);g.fillRect(10,y,w-20,rh-2);NativeText.draw(g,f,gameMenu.row(i),0,16,y+3,w-32,1,i==gameMenu.selected?0xffdf83:0xffffff);}g.setColor(0xb7c2d2);g.drawString((gameMenu.selected+1)+" / "+gameMenu.entries.length,w-14,h-77,Graphics.TOP|Graphics.RIGHT);}
        if(gameMenu.result.length()>0)NativeText.draw(g,f,gameMenu.result,0,14,h-76,w-28,1,0x87dfbe);
        g.setColor(0xffdf83);g.drawString(gameMenu.confirming?(gameEnd<gameMenu.detail().length()?"5 下一页   0 取消":gameMenu.tab==4?"与NPC交谈交付   0 返回":"5 确认   # 更多   0 返回"):"5 查看   # 更多   0 返回",w/2,h-48,Graphics.TOP|Graphics.HCENTER);
        g.setColor(0xb7c2d2);g.drawString("1 / 3 切换栏目    ↑↓ 选择",w/2,h-24,Graphics.TOP|Graphics.HCENTER);
    }
    private int pauseRowHeight(){return Math.min(34,Math.max(20,(getHeight()-105)/6));}
    private void drawBattlePause(Graphics g,int w,int h){
        g.setColor(0x121923);g.fillRect(8,24,w-16,h-48);g.setColor(0xb99b64);g.drawRect(8,24,w-17,h-49);
        g.setColor(0xffdf83);g.drawString("冒险手册",w/2,32,Graphics.TOP|Graphics.HCENTER);
        String[] items={"继续冒险","保存进度","保存并返回标题","任务与角色","回城休整","背包 / 商店 / 地下城"};int row=pauseRowHeight();
        for(int i=0;i<items.length;i++){g.setColor(i==selected?0x6e4222:0x253040);g.fillRect(18,66+i*row,w-36,row-3);g.setColor(i==selected?0xffdf83:0xffffff);g.drawString(items[i],w/2,66+i*row+(row-g.getFont().getHeight())/2,Graphics.TOP|Graphics.HCENTER);}
        if(h>300)NativeText.draw(g,g.getFont(),battle.location()+" · Lv."+battle.level,0,18,66+6*row+8,w-36,2,0xb7c2d2);
        g.setColor(0xffdf83);g.drawString("5 确认    0 返回",w/2,h-24,Graphics.TOP|Graphics.HCENTER);
    }
    private void drawMenu(Graphics g,int w,int h){
        int boxW=Math.min(w-16,280),left=(w-boxW)/2;g.setColor(0x151b25);g.fillRect(left,8,boxW,h-16);g.setColor(0x9e8152);g.drawRect(left,8,boxW-1,h-17);
        int y=17;if(icon!=null){g.drawImage(icon,left+8,y,Graphics.TOP|Graphics.LEFT);}
        g.setColor(0xecd19b);g.drawString("地下城与勇士",w/2+12,y,Graphics.TOP|Graphics.HCENTER);
        g.setColor(0xa6b4c6);g.drawString("鬼剑士 · WIPI 移植 0.6.0",w/2+12,y+19,Graphics.TOP|Graphics.HCENTER);
        y=64;
        if(menu==0){int first=menuFirst(),rows=menuRows();for(int row=0;row<rows;row++){int i=first+row;g.setColor(i==selected?0x6e4222:0x253040);g.fillRect(left+10,y+row*24,boxW-20,22);g.setColor(i==selected?0xffdf83:0xe7edf4);g.drawString(MAIN[i],left+19,y+row*24+2,Graphics.TOP|Graphics.LEFT);}g.setColor(0xa6b4c6);g.drawString((selected+1)+" / "+MAIN.length,w-25,h-45,Graphics.TOP|Graphics.RIGHT);}
        else {
            g.setColor(0xffffff);
            if(menu==1||menu==2){g.drawString((menu==1?"读取":"保存")+"试玩记录 "+(slot+1),w/2,y,Graphics.TOP|Graphics.HCENTER);wrap(g,"四个独立记录位置。上下选择，确认读取或保存。此记录仅保存试玩场景、位置与设置。",left+12,y+30,boxW-24,6);}
            else if(menu==3){g.drawString("原版场景 "+maps[mapIndex]+"  ("+(mapIndex+1)+"/"+maps.length+")",w/2,y,Graphics.TOP|Graphics.HCENTER);wrap(g,"上下选择，确认进入。当前为场景浏览，原剧情的关卡解锁和切换条件尚未接入。",left+12,y+30,boxW-24,6);}
            else if(menu==4){g.drawString("原始外观组合 "+(session.hero.family+1)+" / 20",w/2,y,Graphics.TOP|Graphics.HCENTER);wrap(g,"上下切换原资源中的职业与装备组合，确认返回场景。尚未接入装备属性和职业成长。",left+12,y+30,boxW-24,6);}
            else if(menu==5){g.setColor(selected==0?0xffdf83:0xffffff);g.drawString("动画速度："+Session.TICK_MS[session.speed]+" 毫秒/帧",left+12,y,Graphics.TOP|Graphics.LEFT);g.setColor(selected==1?0xffdf83:0xffffff);g.drawString("触屏："+new String[]{"自动","开启","关闭"}[session.touchMode],left+12,y+30,Graphics.TOP|Graphics.LEFT);g.setColor(selected==2?0xffdf83:0xffffff);g.drawString("音量："+audio.volume+"%",left+12,y+60,Graphics.TOP|Graphics.LEFT);g.setColor(0xb7c2d2);wrap(g,"上下选择，确认更改。低分辨率默认隐藏触屏按键。设置自动保存。",left+12,y+90,boxW-24,4);}
            else if(menu==7){g.drawString("原版剧情 "+stories[storyIndex]+"  ("+(storyIndex+1)+"/"+stories.length+")",w/2,y,Graphics.TOP|Graphics.HCENTER);wrap(g,"上下选段，5播放，1继续上次。原文逐条汉化，中文使用设备字体。此处为全档浏览；正常开场请从标题进入。",left+12,y+30,boxW-24,8);}
            else if(menu==8){g.drawString("剧情日记 "+(journalIndex+1)+" / "+journal.titles.length,w/2,y,Graphics.TOP|Graphics.HCENTER);wrap(g,"上下选篇，5阅读中文。已收录原版日记文本；目前为资料阅读，尚未按任务进度解锁。",left+12,y+30,boxW-24,7);}
            else if(menu==9){g.drawString("原版声音 "+(soundIndex+1)+" / "+audio.resources.length,w/2,y,Graphics.TOP|Graphics.HCENTER);wrap(g,"资源 "+audio.resources[soundIndex]+" / 音轨 "+audio.tracks[soundIndex]+"。上下选择，5试听。音效为原包采样，乐曲保留旋律与节奏，音色取决于设备。",left+12,y+30,boxW-24,8);}
            else {wrap(g,"已接入原地图、角色动作、剧情时间轴、中文对白、日记和原包声音。剧情可选段播放并续看。开场研究日志、研究员战斗和德林保护战已接入。完整装备、城镇任务和高级敌人AI仍在恢复。1/3查看角色动作。",left+12,y,boxW-24,10);}
        }
        g.setColor(0xe6cf91);g.drawString("5 确认       0 返回",w/2,h-27,Graphics.TOP|Graphics.HCENTER);
    }
    private void refreshSlots(){for(int i=0;i<4;i++){try{occupied[i]=readRecord("dnf-campaign-slot-"+i).length>0;}catch(Exception e){occupied[i]=false;}}}
    private void openCampaign(){campaign=true;if(occupied[slot])resumeStory("dnf-campaign-slot-"+slot);else newCampaign();}
    private void newCampaign(){try{battle=null;progress=new Campaign();campaign=true;startStory(100);saveStory();}catch(Exception e){message("开始游戏失败："+e.toString());}}
    private void confirmStory(){
        // Measure even if an input arrives before the first repaint; never skip untranslated layout.
        if(story.waiting){int w=getWidth(),h=getHeight(),lw=w>h?320:240,lh=w>h?240:320;
            int dw=w,dh=lh*w/lw;if(dh>h){dh=h;dw=lw*h/lh;}
            drawStoryText(null,(w-dw)/2,(h-dh)/2,dw,dh,lw,lh);story.confirm();}
    }
    private void drawStoryText(Graphics g,int ox,int oy,int dw,int dh,int lw,int lh){
        Font f=Font.getFont(Font.FACE_SYSTEM,Font.STYLE_PLAIN,Font.SIZE_MEDIUM);
        for(int i=0;i<story.nodes.length;i++){Story.Node n=story.nodes[i];if(n.kind!=2||n.hidden||n.dialog)continue;
            int x=ox+(n.x+(lw==320?40:0)-story.cameraX())*dw/lw,y=oy+(n.y+(lw==240?40:0)-story.cameraY())*dh/lh;
            NativeText.draw(g,f,n.text,0,x,y,Math.max(1,Math.min(200*dw/lw,getWidth()-x-4)),Math.max(1,(oy+dh-y)/f.getHeight()),0xffffff);
        }
        if(story.dialogue>=0){Story.Node n=story.nodes[story.dialogue];int x=ox+((lw-240)/2+10)*dw/lw,y=oy+(lh-53)*dh/lh,width=220*dw/lw;
            NativeText.draw(g,f,n.speaker,0,x,y-f.getHeight()-4,width,1,0xffdf83);
            story.pageEnd=NativeText.draw(g,f,n.text,story.pageStart,x,y,width,Math.max(1,(oy+dh-y-4)/f.getHeight()),0xffffff);
        }
    }
    private void drawFront(Graphics g,int w,int h){
        Font f=g.getFont();int fh=f.getHeight();
        if(menu==11){g.setColor(0x090c14);g.fillRect(0,h-32,w,32);g.setColor(0xffdf83);g.drawString("按确认键开始",w/2,h-26,Graphics.TOP|Graphics.HCENTER);return;}
        int left=8,width=w-16,top=Math.max(30,h/3),height=Math.min(154,h-top-32);
        g.setColor(0x121923);g.fillRect(left,top,width,height);g.setColor(0xb99b64);g.drawRect(left,top,width-1,height-1);
        if(menu==12){g.setColor(0xffdf83);g.drawString("选择记录   "+(slot+1)+" / 4",w/2,top+8,Graphics.TOP|Graphics.HCENTER);
            for(int i=0;i<4;i++){int bx=left+8+i*(width-16)/4,bw=(width-16)/4-4;g.setColor(i==slot?0x9b642c:0x30394a);g.fillRect(bx,top+36,bw,34);g.setColor(0xffffff);g.drawString(""+(i+1),bx+bw/2,top+44,Graphics.TOP|Graphics.HCENTER);}
            g.setColor(0xffffff);g.drawString(occupied[slot]?"继续游戏":"空记录 · 开始新游戏",w/2,top+78,Graphics.TOP|Graphics.HCENTER);
            g.setColor(0xb7c2d2);g.drawString("← → 选择   * 删除重开",w/2,top+100,Graphics.TOP|Graphics.HCENTER);
        }else if(menu==14){NativeText.draw(g,f,"已有记录。删除此记录并重新开始？",0,left+12,top+12,width-24,3,0xffffff);g.setColor(0xffdf83);g.drawString(selected==0?"【是】       否":"是       【否】",w/2,top+height-30,Graphics.TOP|Graphics.HCENTER);}
        else NativeText.draw(g,f,"开场进度已保存。后续关卡的战斗与任务触发尚未移植，可返回标题继续浏览已恢复内容。",0,left+12,top+12,width-24,Math.max(1,(height-20)/fh),0xffffff);
        g.setColor(0xffdf83);g.drawString("5 确认       0 返回",w/2,h-24,Graphics.TOP|Graphics.HCENTER);
    }
    private void wrap(Graphics g,String text,int x,int y,int width,int lines){Font f=g.getFont();int start=0;
        while(start<text.length()&&lines-->0){int end=start;while(end<text.length()&&f.substringWidth(text,start,end-start+1)<=width)end++;if(end==start)end++;g.drawString(text.substring(start,end),x,y,Graphics.TOP|Graphics.LEFT);y+=f.getHeight();start=end;}
    }
}
