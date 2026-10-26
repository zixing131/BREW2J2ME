"""Run original 0x9990 sprite/tracer draws; only resource/output services are stubbed."""
from arm_oracle import *
from unicorn import UC_HOOK_CODE
engine,level,node,meta,surface=0x100000,0x102000,0x104000,0x106000,0x108000
calls=[]
def s16(v):return (v&65535)-65536 if v&32768 else v&65535
def hook(u,ea,size,user):
 args=[u.reg_read(r) for r in (UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3)]
 args+=list(struct.unpack('<9I',u.mem_read(u.reg_read(UC_ARM_REG_SP),36)))
 if ea==0x500100:u.reg_write(UC_ARM_REG_R0,0x110000)
 elif ea==0x11dd8:
  id=args[1];assert id in (4201,2501,2502,1234),id
  u.reg_write(UC_ARM_REG_R0,0x120000+{4201:0,2501:32,2502:64,1234:96}[id])
 elif ea==0x18bc:
  calls.append([s16(args[i]) for i in (1,2,3,4,7,9)])
 elif ea==0x1165c:calls.append([s16(x) for x in args[1:7]]+[args[8]])
 u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
for ea in (0x500100,0x11dd8,0x18bc,0x105d0,0x1165c):uc.hook_add(UC_HOOK_CODE,hook,begin=ea,end=ea)
word(8,0x111000);word(0x111000+192,0x500100);word(0x110000+40,0x112000)
word(surface+40,0x113000);word(engine+2200,level);word(engine+2188,meta);word(engine+2244,0x114000)
word(engine+2256,node);word(meta,1234);uc.mem_write(meta+4,bytes([1]));uc.mem_write(meta+12,bytes([1,0]));uc.mem_write(0x114000,bytes([32])*2048)
for i,(w,h) in enumerate(((60,237),(25,25),(25,25),(60,80))):uc.mem_write(0x120000+32*i,struct.pack('<HH',w,h))
cases=[]
for kind in (4,5):
 for scale in (1,32,100,256,511):
  for cx,cy in ((120,130),(-10,20),(300,260)):
   for phase in (range(1,6) if kind==4 else (1,2)):
    uc.mem_write(node,bytes(80));uc.mem_write(node,bytes([kind]));uc.mem_write(engine+2204,struct.pack('<4H',240,273,0,0))
    if kind==4:
     word(node+40,cx);word(node+44,100);word(node+48,scale);word(node+52,273-cy);uc.mem_write(node+73,bytes([phase]))
    else:
     word(node+20,cx);word(node+24,273-cy);word(node+28,scale);uc.mem_write(node+33,bytes([phase]))
    calls.clear();call(0x9990,[engine,surface,0]);assert len(calls)==1,calls
    cases.append([kind,scale,cx,cy,phase]+calls[0])
tracers=[]
for age in (1,2,3):
 for x1,y1,x2,y2,w1,w2 in ((120,150,160,140,12,6),(-30,100,330,20,3,10),(20,30,20,90,0,1)):
  uc.mem_write(node,bytes(80));uc.mem_write(node,bytes([6]));word(node+4,age)
  for off,v in ((32,x1),(36,273-y1),(40,x2),(44,273-y2),(48,w1),(52,w2)):word(node+off,v)
  calls.clear();call(0x9990,[engine,surface,0]);assert len(calls)==2,calls
  tracers.append([age,x1,y1,x2,y2,w1,w2]+calls[0]+calls[1])
# Execute the original muzzle offset block with ARM's actual signed divisions.
starts=[]
for angle in range(360):
 uc.reg_write(UC_ARM_REG_R4,engine+2088);uc.reg_write(UC_ARM_REG_R6,node);word(engine+2088,700);word(engine+2092,400)
 uc.reg_write(UC_ARM_REG_R9,call(0x197a8,[angle]));uc.reg_write(UC_ARM_REG_R10,call(0x196d8,[angle]));uc.reg_write(UC_ARM_REG_SP,0x408000)
 uc.emu_start(0x209b8,0x20a00,count=2000)
 assert uc.reg_read(UC_ARM_REG_PC)==0x20a00
 starts.append([angle]+list(struct.unpack('<2h',uc.mem_read(node+24,4))))
with (ROOT/'j2me/tests/fixtures/arm-effects.bin').open('wb') as f:
 for rows in (cases,tracers,starts):
  f.write(struct.pack('>i',len(rows)))
  for row in rows:f.write(struct.pack('>%di'%len(row),*row))
print('Original ARM effects:',len(cases),'sprite commands,',len(tracers)*2,'triangles,',len(starts),'muzzle offsets')
