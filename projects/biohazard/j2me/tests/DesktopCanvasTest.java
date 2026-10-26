package bio;
import bio.original.*;
import java.io.*;import java.lang.reflect.*;import java.util.Arrays;
import javax.microedition.lcdui.*;import javax.microedition.rms.*;import javax.imageio.ImageIO;
/** Drives production Canvas input/paint and production RMS journal through desktop adapters. */
public final class DesktopCanvasTest {
 static int checks;static File output;
 static void check(boolean b,String s)throws Exception{checks++;if(!b)throw new Exception(s);}
 static Field field(String n)throws Exception{Field f=OriginalCanvas.class.getDeclaredField(n);f.setAccessible(true);return f;}
 static int screen(OriginalCanvas c)throws Exception{return field("screen").getInt(c);}
 static void key(OriginalCanvas c,int key){c.keyPressed(key);c.keyReleased(key);}
 static void tick(OriginalCanvas c)throws Exception{Method m=OriginalCanvas.class.getDeclaredMethod("tick");m.setAccessible(true);m.invoke(c);}
 static void capture(OriginalCanvas c,String file)throws Exception{Graphics g=new Graphics(c.getWidth(),c.getHeight());c.paint(g);check(screen(c)!=5,"Canvas error: "+field("info").get(c));ImageIO.write(g.image,"png",new File(output,file+".png"));}
 static void toggleTouch(OriginalCanvas c)throws Exception{int old=screen(c);field("screen").setInt(c,1);field("selection").setInt(c,2);key(c,53);field("screen").setInt(c,old);}
 public static void main(String[] args)throws Exception{
  output=new File(args[0]);output.mkdirs();OriginalCanvas c=new OriginalCanvas(new BioMIDlet());field("running").setBoolean(c,false);field("active").setBoolean(c,false);check(screen(c)==0,"Canvas initialized");
  check(!field("touch").getBoolean(c),"QVGA starts with touch disabled");c.pointerPressed(100,100);c.pointerReleased(100,100);check(screen(c)==0,"Disabled touch ignores cover tap");
  capture(c,"cover-240x320");key(c,53);capture(c,"menu-240x320");key(c,53);OriginalSession s=(OriginalSession)field("session").get(c);check(screen(c)==2&&s!=null,"Start new game");
  for(int i=0;i<1000;i++){if(s.vm.action.kind==18)break;if(s.vm.action.kind==4||s.vm.action.kind==17)s.vm.acknowledge();tick(c);}
  check(s.vm.action.kind==18,"Original save prompt");capture(c,"save-prompt");key(c,53);check(screen(c)==6,"Prompt opens records");key(c,53);check(screen(c)==2&&s.vm.action.kind==0,"Save acknowledges original prompt");
  OriginalSession saved=OriginalSaves.load(0,s.data,c);check(saved.vm.action.kind==0,"Saved prompt already acknowledged");
  s.player.money=111;OriginalSaves.save(0,s);s.player.money=222;OriginalSaves.save(0,s);check(OriginalSaves.load(0,s.data,c).player.money==222,"Latest journal entry");
  RecordStore r=RecordStore.openRecordStore("bio-original-v3-0",false);byte[] b=r.getRecord(1);b[b.length/2]^=1;r.setRecord(1,b,0,b.length);check(OriginalSaves.load(0,s.data,c).player.money==111,"Corrupt latest falls back to previous");
  RecordStore.failWrites=true;try{OriginalSaves.save(0,s);throw new Exception("Write failure hidden");}catch(Exception expected){check(expected.getMessage().equals("Disk full"),"RMS disk error propagated");}finally{RecordStore.failWrites=false;}
  check(OriginalSaves.load(0,s.data,c).player.money==111,"Failed write preserves prior save");
  s.vm.action.kind=0;s.vm.running=false;s.vm.variables[0]=2;s.player.x=889;s.player.y=105;s.player.angle=50;s.combat.rebuildOccupancy();s.player.addWeapon(2);s.player.slots[7]=6;s.player.reserve=50;
  int[][] sizes={{176,220},{240,320},{320,240},{360,640},{640,360}};
  for(int i=0;i<sizes.length;i++){int w=sizes[i][0],h=sizes[i][1];field("touchConfigured").setBoolean(c,false);c.resizeTest(w,h);check(field("touch").getBoolean(c)==(i>=3),"Resolution default "+w+"x"+h);field("screen").setInt(c,2);capture(c,"world-"+w+"x"+h);
   if(i<3){int before=screen(c);c.pointerPressed(w-3,3);c.pointerReleased(w-3,3);check(screen(c)==before,"Disabled HUD ignores touch");toggleTouch(c);check(field("touch").getBoolean(c),"Settings enable touch on QVGA");}
   ScreenLayout l=new ScreenLayout(w,h,true);int x=(l.width-3)*l.scale,y=(l.height-l.touchHeight+3)*l.scale;int shots=s.combat.shots;s.combat.reload=0;s.combat.cooldown=0;
   c.pointerPressed(x,y);tick(c);c.pointerReleased(x,y);check(s.combat.shots>shots,"Touch fire "+w+"x"+h);
   x=(l.width-3)*l.scale;y=3;c.pointerPressed(x,y);c.pointerReleased(x,y);check(screen(c)==3,"Touch HUD pause");capture(c,"system-"+w+"x"+h);int previous=field("selection").getInt(c);c.pointerPressed(w*5/8,h-10);c.pointerReleased(w*5/8,h-10);check(field("selection").getInt(c)==previous+1,"Touch menu scroll");field("selection").setInt(c,0);key(c,53);check(screen(c)==2,"Resume from system");
  }
  toggleTouch(c);check(!field("touch").getBoolean(c),"Settings disable high-resolution touch");c.resizeTest(360,640);check(!field("touch").getBoolean(c),"Manual preference survives rotation");
  c.resizeTest(240,320);toggleTouch(c);field("screen").setInt(c,8);s.player.money=500;field("selection").setInt(c,0);key(c,53);check(s.player.medicines==1&&s.player.money==380,"Canvas supply purchase");capture(c,"supply-240x320");c.pointerPressed(200,310);c.pointerReleased(200,310);check(screen(c)==3,"Touch menu back");
  field("screen").setInt(c,11);field("selection").setInt(c,0);capture(c,"premium-240x320");key(c,53);check(screen(c)==14,"Original premium weapon category");capture(c,"premium-weapons");key(c,48);check(screen(c)==11,"Back to six premium categories");field("selection").setInt(c,4);key(c,53);capture(c,"premium-confirm");key(c,53);check(s.player.global[46]==1,"Offline GPS grant through UI");
  field("screen").setInt(c,9);field("selection").setInt(c,0);key(c,53);capture(c,"upgrade-240x320");
  field("screen").setInt(c,3);field("selection").setInt(c,1);key(c,53);capture(c,"records-240x320");key(c,53);check(screen(c)==13,"Overwrite requires confirmation");key(c,48);check(screen(c)==6,"Cancel overwrite");
  field("screen").setInt(c,1);field("selection").setInt(c,1);key(c,53);capture(c,"load-240x320");key(c,53);check(screen(c)==2&&((OriginalSession)field("session").get(c)).player.money==111,"Continue loads RMS record");
  OriginalSession sniper=new OriginalSession(s.data,c);sniper.vm.running=false;sniper.vm.action.kind=0;sniper.player.variables[0]=2;sniper.player.x=700;sniper.player.y=400;sniper.player.addWeapon(6);sniper.player.slots[7]=3;
  for(int i=0;i<sniper.combat.actors.length;i++){sniper.combat.actors[i][OriginalCombat.HP]=0;sniper.combat.actors[i][OriginalCombat.STATE]=2;}sniper.combat.rebuildOccupancy();
  field("session").set(c,sniper);field("screen").setInt(c,2);c.keyPressed(53);for(int i=0;i<8;i++)tick(c);
  check(sniper.combat.zoom==1&&sniper.combat.shots==0,"Holding first sniper press only zooms");capture(c,"sniper-zoom");
  ScreenLayout scopeLayout=(ScreenLayout)field("layout").get(c);check(((int[])field("frame").get(c))[(scopeLayout.hud+20)*scopeLayout.width+scopeLayout.width-1]==0,"Scope masks outside original radius");
  c.keyReleased(53);c.keyPressed(53);tick(c);c.keyReleased(53);check(sniper.combat.shots==1,"Second sniper press shoots");
  field("session").set(c,s);
  field("touchConfigured").setBoolean(c,false);c.resizeTest(176,220);field("screen").setInt(c,2);s.vm.running=false;s.vm.action.kind=0;
  s.player.current=0;s.data.resolve(s.player,0,s.combat.weapon);s.combat.cooldown=s.combat.weapon[1]&255;s.combat.shots=1;s.combat.zoom=0;
  capture(c,"weapon-muzzle");int[] muzzlePixels=(int[])((int[])field("frame").get(c)).clone();
  s.combat.cooldown--;capture(c,"weapon-after-muzzle");
  check(!Arrays.equals(muzzlePixels,(int[])field("frame").get(c)),"Shot frame changes rendered flash and recoil");
  check(((OriginalFlash[])field("flashes").get(c))[OriginalFlash.maskId(s.data.scene,s.data.effectBase+116*s.combat.weapon[11],1)-4111]!=null,"Production firing loads original alpha mask");
  for(int i=0;i<sizes.length;i++){
   int w=sizes[i][0],h=sizes[i][1];field("touchConfigured").setBoolean(c,false);c.resizeTest(w,h);field("screen").setInt(c,2);
   s.vm.action.kind=4;s.vm.dialogMode=2;s.vm.speaker=6020;s.vm.textId=6040;
   capture(c,"dialogue-"+w+"x"+h);check(field("dialogRows").getInt(c)==2,"Named dialogue retains two original lines");
   int lines=field("dialogLines").getInt(c),advances=0;
   while(s.vm.action.kind==4){key(c,53);if(s.vm.action.kind==4)capture(c,"dialogue-last-page-"+w+"x"+h);check(++advances<=lines,"Dialogue reaches final page");}
   check(advances>=1,"Dialogue confirms");
  }
  c.resizeTest(176,220);s.vm.action.kind=4;s.vm.dialogMode=2;s.vm.speaker=0;s.vm.textId=6023;capture(c,"dialogue-narrator");
  check(field("dialogRows").getInt(c)==3,"Unnamed dialogue has three original lines");
  s.vm.dialogMode=3;s.vm.textId=6033;capture(c,"dialogue-hint");
  OriginalSession chapter=new OriginalSession(s.data,c);chapter.tick(0);field("session").set(c,chapter);capture(c,"chapter-intro");
  field("session").set(c,s);s.vm.action.kind=0;s.vm.running=false;
  OriginalSession outdoor=new OriginalSession(s.data,c);outdoor.load(3,27*32+16,2*32+16,90);field("session").set(c,outdoor);
  for(int i=0;i<sizes.length;i++){field("touchConfigured").setBoolean(c,false);c.resizeTest(sizes[i][0],sizes[i][1]);capture(c,"outdoor-"+sizes[i][0]+"x"+sizes[i][1]);}
  field("session").set(c,s);
  for(int i=0;i<sizes.length;i++){
   int w=sizes[i][0],h=sizes[i][1];c.resizeTest(w,h);field("screen").setInt(c,1);field("selection").setInt(c,1);capture(c,"menu-"+w+"x"+h);
   ScreenLayout l=(ScreenLayout)field("layout").get(c);for(int row=0;row<6;row++)check(l.mainMenuHit(l.width/2,l.mainMenuTop()+row*l.mainMenuStep()+15,1)==row,"Original menu hit geometry");
   field("screen").setInt(c,11);capture(c,"premium-"+w+"x"+h);
  }
  for(int level=1;level<=16;level++){OriginalSession levelSession=new OriginalSession(s.data,c);levelSession.load(level,80,80,0);field("session").set(c,levelSession);field("screen").setInt(c,2);capture(c,"level-"+level);
   byte[] snapshot=SaveCodec.encode(levelSession,1L,1);check(Arrays.equals(snapshot,SaveCodec.encode(SaveCodec.decode(snapshot,s.data,c),1L,1)),"Every level save roundtrip "+level);
  }
  System.out.println("PASS production Canvas/RMS via desktop adapters: "+checks+" assertions; previews "+output);
 }
}
