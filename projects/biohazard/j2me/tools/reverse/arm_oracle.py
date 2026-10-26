"""Execute original ARM routines. These expected values are NOT from the Java port."""
from pathlib import Path
import json,struct,random
from unicorn import Uc,UC_ARCH_ARM,UC_MODE_ARM
from unicorn.arm_const import *
ROOT=Path(__file__).resolve().parents[3]
raw=(ROOT/'j2me/build/extracted/game-arm.bin').read_bytes()
uc=Uc(UC_ARCH_ARM,UC_MODE_ARM);uc.mem_map(0,0x30000);uc.mem_write(0,raw)
uc.mem_map(0x100000,0x100000);uc.mem_map(0x400000,0x10000);uc.mem_map(0x500000,0x1000)
def word(a,v):uc.mem_write(a,struct.pack('<I',v&0xffffffff))
def call(ea,args):
 sp=0x408000;uc.reg_write(UC_ARM_REG_SP,sp);uc.reg_write(UC_ARM_REG_LR,0x500000)
 for reg,v in zip([UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3],args):uc.reg_write(reg,v&0xffffffff)
 for i,v in enumerate(args[4:]):word(sp+4*i,v)
 uc.emu_start(ea,0x500000,count=200000)
 if uc.reg_read(UC_ARM_REG_PC)!=0x500000:raise RuntimeError('ARM routine failed to return')
 return uc.reg_read(UC_ARM_REG_R0)
def movement(w,h,grid,x,y,angle,speed,entity,ghost):
 engine,level,rows,data,state,xy=0x100000,0x102000,0x110000,0x120000,0x130000,0x140000
 word(engine+2200,level);word(engine+2224,state);uc.mem_write(state+32,bytes([ghost]))
 uc.mem_write(level,struct.pack('<HH',w,h));word(level+40,rows)
 for row in range(h*2):word(rows+row*4,data+row*w*2)
 uc.mem_write(data,grid);word(xy,x);word(xy+4,y)
 call(0x1bab8,[engine,angle,speed,xy,xy+4,entity])
 return struct.unpack('<ii',uc.mem_read(xy,8)),bytes(uc.mem_read(data,len(grid)))
def script_step(values):
 # No host callbacks: scriptState=0, only the original blocking-action updater runs.
 kind,frame,duration,target,direction,sx,sy,tx,ty,x,y,angle,flags=values
 state,engine,coords=0x150000,0x160000,0x170000
 uc.mem_write(state,bytes(128));uc.mem_write(state+5,bytes([kind]))
 for off,v in [(22,target),(24,sx),(26,sy),(28,tx),(30,ty),(32,duration),(34,frame),(42,frame),(44,duration),(62,1)]:
  uc.mem_write(state+off,struct.pack('<H',v&65535))
 uc.mem_write(state+36,bytes([direction]));word(state+64,engine)
 for off,ptr,v in [(804,coords,x),(808,coords+4,y),(812,coords+8,angle),(816,coords+12,flags)]:
  word(engine+off,ptr);word(ptr,v)
 call(0x1f908,[state])
 return [uc.mem_read(state+5,1)[0],struct.unpack('<h',uc.mem_read(state+(42 if kind in (1,2) else 34),2))[0]]+list(struct.unpack('<4i',uc.mem_read(coords,16)))
def generate():
 rng=random.Random(2211133);out=ROOT/'j2me/tests/fixtures';out.mkdir(exist_ok=True)
 with (out/'arm-motion.bin').open('wb') as f:
  count=2400;f.write(struct.pack('>I',count))
  for i in range(count):
   w=h=8;grid=bytearray(rng.choice([0,0,0,1,2,3,4,8,12]) for _ in range(w*h*4))
   x,y=rng.randrange(16,w*32-16),rng.randrange(16,h*32-16)
   angle=rng.randrange(-359,360);speed=rng.choice([0,3,10,16,20]);entity=i%2;ghost=(i//2)%2
   (nx,ny),after=movement(w,h,bytes(grid),x,y,angle,speed,entity,ghost)
   f.write(struct.pack('>10i',w,h,x,y,angle,speed,entity,ghost,nx,ny));f.write(grid);f.write(after)
 with (out/'arm-trig.bin').open('wb') as f:
  f.write(struct.pack('>I',719))
  for angle in range(-359,360):f.write(struct.pack('>iII',angle,call(0x196d8,[angle]),call(0x197a8,[angle])))
 with (out/'arm-script-action.bin').open('wb') as f:
  f.write(struct.pack('>I',4000))
  for i in range(4000):
   kind=[1,2,19,20][i%4];duration=rng.randrange(1,80);target=rng.randrange(360)
   values=[kind,rng.randrange(duration+1),duration,target,rng.randrange(2)]+[rng.randrange(16,1900) for _ in range(6)]+[target if i%3==0 else rng.randrange(360),rng.randrange(4)]
   result=script_step(values);f.write(struct.pack('>19i',*(values+result)))
 (ROOT/'docs/reverse/arm-oracle.json').write_text(json.dumps({'engine':'Unicorn ARM32','raw_sha256':__import__('hashlib').sha256(raw).hexdigest(),'motion_address':'0x1bab8','motion_cases':count,'trig_cases':719,'script_action_address':'0x1f908','script_action_cases':4000,'seed':2211133},indent=2)+'\n')
 print('Original ARM oracle: 2400 movement + 719 trig + 4000 script-action cases')
if __name__=='__main__':generate()
