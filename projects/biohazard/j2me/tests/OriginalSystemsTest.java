package bio.original;
import java.io.*;
import java.util.Arrays;

/** Behavioral regression and original ARM differential fixtures. No MIDP mocks. */
public final class OriginalSystemsTest {
    static int checks;
    static void check(boolean b,String s)throws Exception{checks++;if(!b)throw new Exception(s);}
    static OriginalSession.Resources resources;
    static OriginalData data;
    static DataInputStream fixture(String root,String name)throws Exception{return new DataInputStream(new FileInputStream(root+"/"+name+".bin"));}
    static void settle(OriginalSession s)throws Exception{
        int n=0;do{if(s.vm.action.kind==4||s.vm.action.kind==17||s.vm.action.kind==18)s.vm.acknowledge();s.tick(0);check(++n<2000,"Script did not settle");}while(s.vm.busy());
    }
    static OriginalSession arena()throws Exception{
        OriginalSession s=new OriginalSession(data,resources);s.player.x=700;s.player.y=400;s.player.angle=0;
        Arrays.fill(s.level.collision,(byte)0);for(int i=0;i<s.combat.actors.length;i++){s.combat.actors[i][OriginalCombat.HP]=0;s.combat.actors[i][OriginalCombat.STATE]=2;}
        return s;
    }
    static void actor(OriginalSession s,int index,int x,int y,int hp){int[] a=s.combat.actors[index];Arrays.fill(a,0);a[OriginalCombat.X]=x;a[OriginalCombat.Y]=y;a[OriginalCombat.HP]=hp;a[OriginalCombat.STUN]=250;s.combat.rebuildOccupancy();Arrays.fill(s.level.collision,(byte)0);}
    public static void main(String[] args)throws Exception{
        final File root=new File(args[1]);resources=new OriginalSession.Resources(){public byte[] read(int id)throws IOException{try{return OriginalTest.read(new File(root,id+".bin"));}catch(Exception e){throw new IOException(e.toString());}}};
        data=new OriginalData(resources.read(15000),resources.read(51000));check(data.weaponCount==13&&data.shopCount==12,"Original tables");
        DataInputStream in=fixture(args[0],"arm-weapon");int n=in.readInt();OriginalPlayer p=new OriginalPlayer(data);p.count=1;p.current=0;int[] resolved=new int[12];
        for(int i=0;i<n;i++){in.readFully(p.slots,0,8);data.resolve(p,0,resolved);for(int j=0;j<12;j++)check(resolved[j]==in.readInt(),"ARM weapon "+i+" field "+j);}in.close();
        in=fixture(args[0],"arm-combat-math");n=in.readInt();for(int i=0;i<n;i++){int x=in.readInt(),y=in.readInt(),num=in.readInt();check(OriginalMath.angle(x,y)==in.readInt(),"ARM angle "+i);check(OriginalMath.sqrt(num)==in.readInt(),"ARM sqrt "+i);}in.close();
        in=fixture(args[0],"arm-cost");n=in.readInt();for(int i=0;i<n;i++){int b=in.readInt(),g=in.readInt(),lv=in.readInt();check(OriginalData.cumulativeCost(b,g,lv)==in.readInt(),"ARM upgrade cost");}in.close();
        // Use a minimal resource with a 16x16 collision grid, populated from the ARM inputs.
        byte[] raw=new byte[28+4+64*2+16];OriginalPlayer.put16(raw,0,8);OriginalPlayer.put16(raw,2,8);OriginalLevel l=new OriginalLevel(52000,raw);
        in=fixture(args[0],"arm-sight");n=in.readInt();for(int i=0;i<n;i++){int x=in.readInt(),y=in.readInt(),tx=in.readInt(),ty=in.readInt(),d=in.readInt(),a=in.readInt(),rd=in.readInt(),sight=in.readInt(),ray=in.readInt();in.readFully(l.collision);
            check(OriginalMath.sight(l,x,y,tx,ty,d)==(sight!=0),"ARM sight "+i);check(OriginalMath.ray(l,x,y,a,rd)==(ray!=0),"ARM ray "+i);}in.close();
        System.out.println("PASS original ARM: 520 weapon resolutions, 1000 angle/sqrt pairs, 300 costs, 1000 paired sight tests");
        OriginalSession s=new OriginalSession(data,resources);settle(s);check(s.player.x==912&&s.player.y==80&&s.player.variables[0]==1,"Integrated intro");
        // Enter original axe cell, run its real commands beyond the former opcode-16 boundary.
        s.player.x=31*32+16;s.player.y=2*32+16;s.combat.rebuildOccupancy();settle(s);
        check(s.player.count==1&&s.player.slots[0]==1&&s.player.variables[0]==2,"Original axe acquisition");
        check(s.vm.region(880,50,false)==6&&s.vm.region(930,50,false)==-1,"Region uses two corners, not width/height");
        // Hit original story-bound actor and verify death event leads to the original next objective.
        int enemy=-1;for(int i=0;i<s.level.actorCount;i++)if(s.level.actors[20*i+16]!=0&&Binary.u16(s.level.actors,20*i+18)==2){enemy=i;break;}
        check(enemy>=0,"Original death event actor");s.player.x=700;s.player.y=400;s.player.angle=0;actor(s,enemy,745,400,50);s.combat.aim();
        check(s.combat.target==enemy&&s.combat.targetMode==2,"Axe centered target");s.combat.fire();s.tick(0);for(int i=0;i<10&&!s.vm.busy();i++)s.tick(0);settle(s);
        check(s.combat.actors[enemy][OriginalCombat.HP]<=0&&s.player.variables[0]==3,"Kill advances original story");
        s=new OriginalSession(data,resources);s.tick(0);byte[] save=SaveCodec.encode(s,123456789L,7);OriginalSession restored=SaveCodec.decode(save,data,resources);
        check(Arrays.equals(save,SaveCodec.encode(restored,123456789L,7)),"Mid-dialog exact snapshot");settle(restored);check(restored.player.variables[0]==1,"Loaded dialogue resumes");
        for(int i=0;i<save.length;i+=67){byte[] bad=(byte[])save.clone();bad[i]^=16;try{SaveCodec.decode(bad,data,resources);throw new Exception("Corrupt snapshot accepted");}catch(IOException expected){checks++;}}
        for(int len=0;len<save.length;len+=89){try{SaveCodec.decode(Arrays.copyOf(save,len),data,resources);throw new Exception("Truncated snapshot accepted");}catch(IOException expected){checks++;}}
        s=arena();s.player.addWeapon(2);s.player.reserve=20;s.combat.tick(0);check(s.player.reserve==14&&(s.player.slots[7]&255)==6&&s.combat.reload==30,"Original auto reload");
        s.combat.fire();s.combat.tick(0);check(s.combat.shots==0,"Cannot fire while reloading");while(s.combat.reload>0)s.combat.tick(0);
        actor(s,0,900,400,100);s.combat.aim();s.combat.fire();s.combat.tick(0);check(s.combat.actors[0][0]==80&&s.player.slots[7]==5,"Handgun centered damage/ammo");
        s=arena();s.player.addWeapon(2);s.player.slots[7]=6;actor(s,0,975,400,100);s.combat.aim();s.combat.fire();s.combat.tick(0);check(s.combat.actors[0][0]==86,"Handgun distance falloff + center double damage");
        s=arena();s.player.addWeapon(2);s.player.slots[7]=6;actor(s,0,900,400,100);s.level.mark(50,24,2,true);s.combat.aim();check(s.combat.target==-1,"Wall blocks shot");
        s=arena();s.player.addWeapon(6);s.player.slots[7]=3;actor(s,0,900,400,200);s.combat.aim();s.combat.fire();s.combat.tick(0);check(s.combat.zoom==1&&s.combat.shots==0,"Sniper first press zoom");s.combat.fire();s.combat.tick(0);check(s.combat.shots==1,"Sniper second press fire");
        s=arena();int[] bullet=s.combat.projectiles[0];bullet[0]=1;bullet[1]=680;bullet[2]=400;bullet[3]=0;bullet[5]=300;bullet[6]=32;bullet[7]=7;s.combat.tick(0);check(s.player.hp==43&&bullet[0]==0,"Enemy projectile damages player");
        s=arena();actor(s,0,750,400,100);s.combat.actors[0][OriginalCombat.STUN]=0;s.combat.actors[0][OriginalCombat.ACTIVE]=1;s.combat.actors[0][OriginalCombat.CYCLE]=10;s.player.hp=10000;s.player.maxHp=10000;
        for(int i=0;i<400;i++)s.combat.tick(0);check(s.player.hp<10000,"Original actor AI attacks");
        p=new OriginalPlayer(data);p.money=119;check(!p.buySupply(0)&&p.money==119,"Unaffordable supply atomic");p.money=1000;check(p.buySupply(2)&&p.medicines==6&&p.money==500,"Medicine bundle price/count");p.hp=10;check(p.medicine()&&p.hp==30&&p.medicines==5,"40% medicine");
        p.addWeapon(2);int cost=data.upgradeCost(p,0,0,1);p.money=cost;check(p.upgrade(0,0)&&p.money==0&&p.slots[2]==1,"Original upgrade cost");
        check(p.grantPremium(3)&&p.global[46]==1&&!p.grantPremium(3),"GPS entitlement/limit");check(p.grantPremium(7)&&p.premiumSlot>=0&&p.slots[p.premiumSlot*8]==9,"Premium weapon original ID");check(p.grantPremium(8)&&p.count==2&&p.slots[p.premiumSlot*8]==10,"Premium weapon replaces dedicated slot");
        byte[] original=OriginalTest.read(new File(args[2]));p=OriginalPlayer.fromBrew(data,original);check(p.level==1&&p.x==883&&p.y==59&&p.money==37&&p.count==2,"Original 856-byte save import");check(Arrays.equals(original,p.brewSave()),"Original save lossless roundtrip");
        s=arena();s.player.addWeapon(2);s.player.reserve=11;s.player.money=999;s.player.medicines=4;s.player.grantPremium(3);s.combat.reload=12;s.combat.cooldown=4;s.combat.projectiles[0][0]=1;s.combat.projectiles[0][1]=550;s.combat.projectiles[0][2]=400;s.combat.projectiles[0][5]=300;s.combat.projectiles[0][6]=16;s.combat.projectiles[0][7]=7;
        // Keep the real original collision grid in snapshots (source geometry is rebuilt on load).
        s.level.resetCollision();s.combat.rebuildOccupancy();save=SaveCodec.encode(s,55L,3);restored=SaveCodec.decode(save,data,resources);check(Arrays.equals(save,SaveCodec.encode(restored,55L,3)),"Combat/projectile/inventory/entitlements snapshot");
        for(int i=0;i<50;i++){s.tick(0);restored.tick(0);}check(Arrays.equals(SaveCodec.encode(s,55L,3),SaveCodec.encode(restored,55L,3)),"Deterministic resume across 50 ticks");
        int[][] sizes={{176,220},{240,320},{320,240},{360,640},{640,360}};
        for(int k=0;k<sizes.length;k++){ScreenLayout layout=new ScreenLayout(sizes[k][0],sizes[k][1],true);for(int i=0;i<6;i++)check(layout.menuHit(layout.width/2,layout.menuTop(6)+i*layout.rowHeight+5,6,0,6)==i,"Menu draw/hit parity");check(layout.touchKey(1,1)==0&&layout.touchKey(layout.width-1,1)==11,"HUD touch");check(layout.touchKey(layout.width-1,layout.height-layout.touchHeight+2)==5,"Fire touch");check(layout.touchKey(-1,100)==-1,"Outside touch");}
        check(OriginalRenderer.textureU(.2,0)==.8&&OriginalRenderer.textureU(.2,1)==.2,"Wall U orientation flag");
        OriginalCamera camera=new OriginalCamera(176,173,1);
        // Original ARM 0x17858 executed in Unicorn: eye210, focal170, offset114.
        // A wall 100 map units away projects through a 400-unit original depth.
        check(camera.horizon==77&&camera.focal==170,"Native ARM camera initialization");
        check(camera.groundY(100)==166.25&&Math.abs(camera.heightY(100,96)-3.05)<.00001,"Original wall projection in map units");
        check(new OriginalCamera(240,273,1).focal==170,"ARM keeps focal length on QVGA");
        check(new OriginalCamera(176,173,2).focal==340,"Original sniper focal doubling");
        OriginalAnimation animation=new OriginalAnimation(resources.read(20000));
        check(animation.frame(7,0).length==2&&animation.frame(7,0)[0][5]==4,"Original cover reflected continuation");
        check(animation.frame(6,1)[0][1]==-13&&animation.frame(6,1)[1][0]==5001,"Original selected menu shift and arrow");
        check(animation.frame(3,9)[0][0]==6005&&animation.frame(3,9)[0][3]==90,"Original gun icon order and scale");
        in=fixture(args[0],"arm-material");int materials=in.readInt();int[] atlas=new int[2048];for(int i=0;i<atlas.length;i++)atlas[i]=OriginalMaterials.rgb(in.readUnsignedShort());
        for(int i=0;i<materials;i++){int packed=in.readInt();for(int y=0;y<32;y++)for(int x=0;x<32;x++)check(OriginalMaterials.compose(packed,x,y,atlas)==in.readUnsignedShort(),"ARM material "+i+" pixel "+x+","+y);}in.close();
        System.out.println("PASS original ARM material composition: "+materials+" complete RGB565 tiles");
        byte[] radar=OriginalTest.read(new File(args[0],"arm-radar.bin"));int[][] coords={OriginalRadar.EXITS,OriginalRadar.DESTINATIONS,OriginalRadar.OBJECTIVES};int offset=0;
        for(int a=0;a<coords.length;a++)for(int i=0;i<coords[a].length;i++){check(coords[a][i]==Binary.u16(radar,offset),"Original radar coordinates");offset+=2;}
        System.out.println("PASS original systems: "+checks+" assertions incl. axe/death story, combat, shops, save corruption/resume, original save, five layouts");
    }
}
