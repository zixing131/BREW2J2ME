"""Execute original 0x20228 scrolling/expiry, adapting only BREW GetAppInstance."""
from arm_oracle import *
from unicorn import UC_HOOK_CODE

state,table,context,screen=0x100000,0x180000,0x181000,0x182000
word(8,table);word(table+192,0x500100);word(context+32,screen)
def host(u,address,size,user):
    u.reg_write(UC_ARM_REG_R0,context)
    u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
uc.hook_add(UC_HOOK_CODE,host,begin=0x500100,end=0x500100)
cases=[]
for w in (176,240,320,180,360):
    uc.mem_write(screen,struct.pack('<H',w))
    for text_width in (0,72,80,800,1950):
        uc.mem_write(state,bytes(16));uc.mem_write(state,struct.pack('<hh',3*w//4,text_width));uc.mem_write(state+8,b'\1')
        frames=[]
        for frame in range(2000):
            call(0x20228,[state]);x=struct.unpack('<h',uc.mem_read(state,2))[0];active=uc.mem_read(state+8,1)[0]
            frames.append((x,active))
            if not active:break
        else:raise AssertionError('Notice did not expire')
        cases.append((w,text_width,frames))
with (ROOT/'j2me/tests/fixtures/arm-notice.bin').open('wb') as f:
    f.write(struct.pack('>I',len(cases)))
    for w,text_width,frames in cases:
        f.write(struct.pack('>3i',w,text_width,len(frames)))
        for row in frames:f.write(struct.pack('>2i',*row))
print('Original ARM notice:',sum(len(c[2]) for c in cases),'frames in',len(cases),'streams')
