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
 static void toggleTouch(OriginalCanvas c)throws Exception{int old=screen(c);field("screen").setInt(c,1);field("selection").setInt(c,2);key(c,53);key(c,53);field("screen").setInt(c,old);}
 static final class LabelProbe implements OriginalRenderer.Images,OriginalRenderer.Labels {
  final OriginalCanvas canvas;final java.util.Vector ids=new java.util.Vector();
  LabelProbe(OriginalCanvas c){canvas=c;}
  public OriginalRenderer.Picture get(int id)throws IOException{return canvas.get(id);}
  public void drawLabel(int[] pixels,int w,int h,int id,int x,int y){ids.addElement(new Integer(id));canvas.drawLabel(pixels,w,h,id,x,y);}
  boolean has(int id){return ids.contains(new Integer(id));}
 }
 static void hints(OriginalCanvas c,OriginalData data)throws Exception{
  field("touchConfigured").setBoolean(c,false);c.resizeTest(240,320);field("screen").setInt(c,2);
  OriginalSession s=new OriginalSession(data,c);field("session").set(c,s);s.vm.running=false;s.vm.action.kind=0;s.player.variables[0]=2;
  s.player.x=912;s.player.y=80;s.player.angle=0;s.combat.rebuildOccupancy();
  OriginalRenderer r=(OriginalRenderer)field("renderer").get(c);LabelProbe probe=new LabelProbe(c);r.render(s,probe);
  check(probe.has(6000)&&probe.has(6001),"Axe label and invisible stair-door label both reach renderer");
  int[] labeled=(int[])r.pixels.clone();final OriginalCanvas images=c;
  r.render(s,new OriginalRenderer.Images(){public OriginalRenderer.Picture get(int id)throws IOException{return images.get(id);}});
  check(!Arrays.equals(labeled,r.pixels),"Floating labels change visible production world pixels");capture(c,"labels-axe-240x320");
  s.player.variables[20]=1;probe.ids.removeAllElements();r.render(s,probe);check(!probe.has(6000)&&probe.has(6001),"Original story flag hides axe label but preserves door label");
  int ammo=-1;for(int i=0;i<s.level.objectCount;i++)if(s.level.objects[8*i+1]==1){ammo=8*i;break;}
  check(ammo>=0,"Hospital ammo fixture");int ox=Binary.s16(s.level.objects,ammo+4),oy=Binary.s16(s.level.objects,ammo+6),id=Binary.u16(s.level.objects,ammo+2);
  s.player.x=ox;s.player.y=oy+64;s.player.angle=270;probe.ids.removeAllElements();r.render(s,probe);check(probe.has(6071),"Ammo resource label rendered");capture(c,"labels-ammo-240x320");
  s.player.x=ox;s.player.y=oy;s.combat.tick(0);tick(c);OriginalNotice hint=(OriginalNotice)field("hint").get(c);
  check(hint.active&&hint.message.indexOf("子弹")>=0,"Production Canvas consumes first ammo tutorial");
  for(int i=0;i<30;i++)hint.tick(240);capture(c,"pickup-ammo-guide-240x320");
  check(s.player.variables[id]==1,"Ammo pickup remembered");
  s.player.medicines=0;key(c,48);check(hint.active&&hint.message.indexOf("药品已用完")>=0,"Medicine failure visible in world");capture(c,"medicine-empty-guide");
  s.player.medicines=1;s.player.hp=10;key(c,48);check(hint.message.indexOf("成功使用")>=0,"Medicine success visible in world");
  field("screen").setInt(c,1);field("selection").setInt(c,2);key(c,53);key(c,53);check(field("touch").getBoolean(c),"Explicit keypad enable");
  key(c,56);key(c,53);check(!field("touch").getBoolean(c)&&!field("touchConfigured").getBoolean(c),"Restore automatic setting removes QVGA keypad");
  c.resizeTest(320,240);check(!field("touch").getBoolean(c),"Automatic landscape QVGA has no keypad");
  c.resizeTest(360,640);check(field("touch").getBoolean(c),"Automatic high resolution enables keypad");
 }
 static void buy(OriginalCanvas c,int category)throws Exception{
  field("screen").setInt(c,11);field("selection").setInt(c,category);key(c,53);check(screen(c)==12,"Category opens purchase confirmation "+category);key(c,53);
 }
 static void chineseShop(OriginalCanvas c,OriginalData data)throws Exception{
  OriginalSession s=new OriginalSession(data,c);field("session").set(c,s);s.vm.running=false;s.player.variables[0]=2;
  c.resizeTest(240,320);field("touchConfigured").setBoolean(c,false);c.resizeTest(240,320);
  for(int category=1;category<=5;category++){buy(c,category);check(screen(c)==11,"Mall purchase succeeds "+category);check(((String)field("notice").get(c)).indexOf("购买成功")>=0,"Chinese receipt");capture(c,"purchase-category-"+category);}
  check(s.player.infiniteAmmo&&s.player.global[46]==1,"Ammo/GPS entitlements applied");
  check(Binary.u16(s.player.global,44)==1&&s.player.maxHp==100&&s.player.hp==100&&s.player.money==5000,"Invisibility/life/currency effects applied");
  buy(c,2);buy(c,3);buy(c,5);check(Binary.u16(s.player.global,44)==2&&s.player.maxHp==200&&s.player.money==10000,"Consumable, life and currency remain purchasable");
  buy(c,4);check(screen(c)==12&&((String)field("notice").get(c)).indexOf("已购买")>=0,"Owned permanent item has explicit Chinese feedback");capture(c,"purchase-already-owned");key(c,48);
  for(int i=0;i<5;i++){
   field("screen").setInt(c,11);field("selection").setInt(c,0);key(c,53);check(screen(c)==14,"Super weapons submenu");field("selection").setInt(c,i);key(c,53);check(screen(c)==12,"Each super gun has a purchase page");key(c,53);
   check(screen(c)==14&&s.player.current==s.player.premiumSlot&&(s.player.slots[8*s.player.current]&255)==9+i,"Each super gun becomes equipped "+i);
   for(int stat=0;stat<5;stat++)check((s.player.slots[8*s.player.current+2+stat]&255)==data.maxUpgrade(s.player.slots[8*s.player.current+1]&255,stat),"Super gun has original maximum upgrades");
  }
  field("selection").setInt(c,0);key(c,53);key(c,53);check((s.player.slots[8*s.player.current]&255)==9,"Previously purchased gun can be equipped again");
  OriginalSession saved=OriginalSaves.load(3,data,c);check(saved.player.infiniteAmmo&&saved.player.global[46]==1&&saved.player.maxHp==200&&saved.player.money==10000&&Binary.u16(saved.player.global,44)==2&&(saved.player.slots[8*saved.player.current]&255)==9,"Purchase effects survive production RMS auto-save");
  check(OriginalSaves.description(3,data,c).indexOf("生命")>=0&&!OriginalSaves.description(3,data,c).contains("HP"),"Chinese save description");
  int[][] sizes={{176,220},{240,320},{320,240},{360,640},{640,360}};
  for(int k=0;k<sizes.length;k++){
   int w=sizes[k][0],h=sizes[k][1];field("touchConfigured").setBoolean(c,false);c.resizeTest(w,h);
   int[] screens={3,6,7,9,10,15};
   for(int j=0;j<screens.length;j++){
    field("screen").setInt(c,screens[j]);field("selection").setInt(c,0);field("shopSlot").setInt(c,0);field("notice").set(c,"");capture(c,"chinese-"+screens[j]+"-"+w+"x"+h);
    Method shown=OriginalCanvas.class.getDeclaredMethod("shown"),top=OriginalCanvas.class.getDeclaredMethod("listTop"),step=OriginalCanvas.class.getDeclaredMethod("listStep"),hit=OriginalCanvas.class.getDeclaredMethod("menuHit",Integer.TYPE,Integer.TYPE);
    shown.setAccessible(true);top.setAccessible(true);step.setAccessible(true);hit.setAccessible(true);
    int rows=((Integer)shown.invoke(c)).intValue(),y=((Integer)top.invoke(c)).intValue(),dy=((Integer)step.invoke(c)).intValue();ScreenLayout layout=(ScreenLayout)field("layout").get(c);
    check(y>=52&&y+rows*dy<=layout.height-60,"Menu rows clear title and footer at "+w+"x"+h);
    for(int row=0;row<rows;row++)check(((Integer)hit.invoke(c,new Object[]{new Integer(layout.width/2),new Integer(y+row*dy+dy/2)})).intValue()==row,"Painted row and pointer target agree");
   }
   field("screen").setInt(c,1);field("selection").setInt(c,3);key(c,53);capture(c,"chinese-help-"+w+"x"+h);key(c,48);
   field("selection").setInt(c,4);key(c,53);capture(c,"chinese-about-"+w+"x"+h);key(c,48);
   field("screen").setInt(c,13);field("pendingSlot").setInt(c,0);capture(c,"chinese-overwrite-"+w+"x"+h);
   field("screen").setInt(c,11);field("selection").setInt(c,2);key(c,53);capture(c,"chinese-purchase-"+w+"x"+h);
   if(k==3){c.pointerPressed(w-15,h-10);c.pointerReleased(w-15,h-10);check(screen(c)==11&&Binary.u16(s.player.global,44)==3,"High-resolution touch confirmation buys item");}
  }
 }
 public static void main(String[] args)throws Exception{
  output=new File(args[0]);output.mkdirs();OriginalCanvas c=new OriginalCanvas(new BioMIDlet());field("running").setBoolean(c,false);field("active").setBoolean(c,false);check(screen(c)==0,"Canvas initialized");
  check(!field("touch").getBoolean(c),"QVGA starts with touch disabled");c.pointerPressed(100,100);c.pointerReleased(100,100);check(screen(c)==0,"Disabled touch ignores cover tap");
  key(c,53);field("selection").setInt(c,2);key(c,53);check(screen(c)==15&&!field("touch").getBoolean(c),"Opening settings does not enable virtual keypad");capture(c,"settings-240x320");key(c,48);
  field("selection").setInt(c,3);key(c,53);capture(c,"help-240x320");c.resizeTest(176,220);key(c,56);check(field("infoLine").getInt(c)>0,"Original Chinese help scrolls to remaining controls");capture(c,"help-last-page");c.resizeTest(240,320);key(c,48);field("screen").setInt(c,0);
  capture(c,"cover-240x320");key(c,53);capture(c,"menu-240x320");key(c,53);OriginalSession s=(OriginalSession)field("session").get(c);check(screen(c)==2&&s!=null,"Start new game");
  for(int i=0;i<1000;i++){if(s.vm.action.kind==18)break;if(s.vm.action.kind==4||s.vm.action.kind==17)s.vm.acknowledge();tick(c);}
  check(s.vm.action.kind==18,"Original save prompt");capture(c,"save-prompt");key(c,53);check(screen(c)==6,"Prompt opens records");key(c,53);check(screen(c)==2&&s.vm.action.kind==0,"Save acknowledges original prompt");
  OriginalSession saved=OriginalSaves.load(0,s.data,c);check(saved.vm.action.kind==0,"Saved prompt already acknowledged");
  s.player.money=111;OriginalSaves.save(0,s);s.player.money=222;OriginalSaves.save(0,s);check(OriginalSaves.load(0,s.data,c).player.money==222,"Latest journal entry");
  RecordStore r=RecordStore.openRecordStore("bio-original-v3-0",false);byte[] b=r.getRecord(1);b[b.length/2]^=1;r.setRecord(1,b,0,b.length);check(OriginalSaves.load(0,s.data,c).player.money==111,"Corrupt latest falls back to previous");
  RecordStore.failWrites=true;try{OriginalSaves.save(0,s);throw new Exception("Write failure hidden");}catch(Exception expected){check(expected.getMessage().equals("Disk full"),"RMS disk error propagated");}finally{RecordStore.failWrites=false;}
  check(OriginalSaves.load(0,s.data,c).player.money==111,"Failed write preserves prior save");
  OriginalSession guided=new OriginalSession(s.data,c);field("session").set(c,guided);boolean radarGuide=false,markerGuide=false;
  for(int i=0;i<3000&&guided.vm.action.kind!=18;i++){
   tick(c);int id=guided.vm.textId;
   if(guided.vm.action.kind==4){
    if(id==6300)radarGuide=true;if(id==6301)markerGuide=true;
    // Deliberately confirm before paint: stale geometry must not skip a long new guide.
    if((id==6300||id==6301)&&field("dialogPage").getInt(c)==0){key(c,53);check(guided.vm.action.kind==4,"Long original guide survives first confirm before paint");capture(c,"guide-"+id);}
    else key(c,53);
   }else if(guided.vm.action.kind==17)key(c,53);
  }
  check(radarGuide&&markerGuide&&guided.vm.action.kind==18,"New game reaches both original guides and save prompt through real input");
  field("session").set(c,s);
  s.vm.action.kind=0;s.vm.running=false;s.vm.variables[0]=2;s.player.x=889;s.player.y=105;s.player.angle=50;s.combat.rebuildOccupancy();s.player.addWeapon(2);s.player.slots[7]=6;s.player.reserve=50;
  int[][] sizes={{176,220},{240,320},{320,240},{360,640},{640,360}};
  for(int i=0;i<sizes.length;i++){int w=sizes[i][0],h=sizes[i][1];field("touchConfigured").setBoolean(c,false);c.resizeTest(w,h);check(field("touch").getBoolean(c)==(i>=3),"Resolution default "+w+"x"+h);field("screen").setInt(c,2);capture(c,"world-"+w+"x"+h);
   if(i<3){ScreenLayout noPad=(ScreenLayout)field("layout").get(c);check(noPad.touchHeight==0&&noPad.hud==47,"Default low resolution reserves no virtual keypad area");int before=screen(c);c.pointerPressed(w-3,3);c.pointerReleased(w-3,3);check(screen(c)==before,"Disabled HUD ignores touch");toggleTouch(c);check(field("touch").getBoolean(c),"Settings enable touch on QVGA");}
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
  OriginalSession chapter=new OriginalSession(s.data,c);chapter.tick(0);field("session").set(c,chapter);
  for(int i=0;i<36;i++)tick(c);capture(c,"chapter-intro");
  int typed=chapter.vm.narration.position;key(c,53);check(chapter.vm.narration.position>typed&&chapter.vm.action.kind==17,"Confirm accelerates narration without skipping it");
  capture(c,"chapter-accelerated");int narrativeTicks=0;
  while(chapter.vm.action.kind==17){tick(c);check(++narrativeTicks<1000,"Narration automatically finishes");}
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
  hints(c,s.data);
  chineseShop(c,s.data);
  System.out.println("PASS production Canvas/RMS via desktop adapters: "+checks+" assertions; previews "+output);
 }
}
