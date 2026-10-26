"""Additional original ARM fixtures: math, LOS, weapon resolution and upgrade cost.
Only host memset is adapted; all tested routines execute original ARM instructions.
"""
from arm_oracle import *
from unicorn import UC_HOOK_CODE
import hashlib

def memset_hook(u,address,size,user):
    u.mem_write(u.reg_read(UC_ARM_REG_R0),bytes([u.reg_read(UC_ARM_REG_R1)&255])*u.reg_read(UC_ARM_REG_R2))
    u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
uc.hook_add(UC_HOOK_CODE,memset_hook,begin=0x500100,end=0x500100)
word(8,0x180000);word(0x180004,0x500100)
rng=random.Random(2211134);out=ROOT/'j2me/tests/fixtures'
weapons=(ROOT/'j2me/resources/original/15000.bin').read_bytes();base=244
uc.mem_write(0x190000,weapons[base:]);word(0x150010,0x190000);uc.mem_write(0x15021c,struct.pack('<h',1))
with (out/'arm-weapon.bin').open('wb') as f:
    f.write(struct.pack('>i',520))
    for i in range(520):
        idx=i%13;levels=[rng.randrange(struct.unpack_from('<H',weapons,base+idx*72+off)[0]+1) for off in [6,22,14,38,46]]
        slot=bytes([idx+1,idx]+levels+[rng.randrange(256)]);uc.mem_write(0x15021e,slot)
        call(0x12f30,[0x170000,0x150000,0]);f.write(slot);f.write(struct.pack('>12i',*struct.unpack('<6H6B',uc.mem_read(0x170000,18))))
with (out/'arm-combat-math.bin').open('wb') as f:
    f.write(struct.pack('>i',1000))
    for i in range(1000):
        x=rng.randrange(-4000,4000);y=rng.randrange(-4000,4000);n=rng.randrange(0x100000000)
        f.write(struct.pack('>iiIII',x,y,n,call(0x19868,[x,y]),call(0x19930,[n])))
with (out/'arm-cost.bin').open('wb') as f:
    f.write(struct.pack('>i',300))
    for i in range(300):
        b=rng.randrange(1000);g=rng.randrange(80);lv=rng.randrange(12)
        f.write(struct.pack('>4i',b,g,lv,call(0x571c,[0,b,g,lv])))
with (out/'arm-sight.bin').open('wb') as f:
    f.write(struct.pack('>i',1000));engine,level,rows,grid=0x100000,0x102000,0x110000,0x120000
    word(engine+2200,level);uc.mem_write(level,struct.pack('<HH',8,8));word(level+40,rows)
    for row in range(16):word(rows+row*4,grid+row*16)
    for i in range(1000):
        cells=bytes(rng.choice([0,0,0,0,0,1,2,4,8]) for _ in range(256));uc.mem_write(grid,cells)
        x,y,tx,ty=[rng.randrange(16,240) for _ in range(4)];dist=call(0x19930,[(x-tx)**2+(y-ty)**2]);angle=rng.randrange(360)
        sight=call(0x576c,[engine,x,y,tx,ty,max(1,dist)]);ray=call(0x58ec,[engine,x,y,angle,dist])
        f.write(struct.pack('>9i',x,y,tx,ty,max(1,dist),angle,dist,sight,ray));f.write(cells)
(ROOT/'docs/reverse/combat-oracle.json').write_text(json.dumps({'raw_sha256':hashlib.sha256(raw).hexdigest(),'seed':2211134,'weapon':520,'math':1000,'cost':300,'sight':1000,'host_adapter':'memset only; all tested ARM bodies unchanged'},indent=2)+'\n')
print('ARM fixtures: 520 weapons, 1000 angle/sqrt, 300 costs, 1000 paired LOS')
