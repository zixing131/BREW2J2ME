"""Execute original 0x235F4; adapt resource lookup, malloc/free and memcpy only."""
from arm_oracle import *
from unicorn import UC_HOOK_CODE

uc.mem_map(0x200000,0x200000)
heap=0x200000
def host(u,address,size,user):
    global heap
    r0,r1,r2=[u.reg_read(r) for r in (UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2)]
    if address==0x11dd8:u.reg_write(UC_ARM_REG_R0,0x170000)
    elif address==0x500100:
        u.mem_write(r0,bytes(u.mem_read(r1,r2)))
    elif address==0x500104:
        u.reg_write(UC_ARM_REG_R0,heap);heap+=(r0+3)&~3
    u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
uc.hook_add(UC_HOOK_CODE,host,begin=0x11dd8,end=0x11dd8)
uc.hook_add(UC_HOOK_CODE,host,begin=0x500100,end=0x500108)
word(8,0x180000);word(0x180000,0x500100);word(0x180068,0x500104);word(0x18006c,0x500108)
rng=random.Random(23594);atlas=[rng.randrange(65536) for _ in range(2048)]
word(0x170008,0x181000)
for row in range(64):word(0x181000+4*row,0x190000+64*row)
uc.mem_write(0x190000,struct.pack('<2048H',*atlas))
palette=[(1<<8)|(i<<16) for i in range(13)]+[(1<<8)|(5<<16)|(i<<24) for i in range(14)]
word(0x100008,len(palette))
for i,v in enumerate(palette):word(0x10000c+4*i,v)
uc.reg_write(UC_ARM_REG_SP,0x408000);uc.reg_write(UC_ARM_REG_LR,0x500000)
uc.reg_write(UC_ARM_REG_R0,0x100000);uc.reg_write(UC_ARM_REG_R1,1)
uc.emu_start(0x235f4,0x500000,count=10000000)
assert uc.reg_read(UC_ARM_REG_PC)==0x500000,'ARM did not return'
pointer=struct.unpack('<I',uc.mem_read(0x10080c,4))[0]
values=struct.unpack('<%dH'%(len(palette)*1024),uc.mem_read(pointer,len(palette)*2048))
with (ROOT/'j2me/tests/fixtures/arm-material.bin').open('wb') as f:
    f.write(struct.pack('>I2048H',len(palette),*atlas))
    for i,v in enumerate(palette):f.write(struct.pack('>I1024H',v,*values[i*1024:(i+1)*1024]))
print('Original ARM 0x235F4:',len(palette),'complete 32x32 material tiles')
(ROOT/'j2me/tests/fixtures/arm-radar.bin').write_bytes(raw[0x270f0:0x27288])
