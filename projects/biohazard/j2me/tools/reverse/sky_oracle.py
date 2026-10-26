"""Execute 0x21FB4 / 0x6E98, recording original graphics calls before rasterization.
Only image lookup and graphics output are intercepted; geometry runs as original ARM.
"""
from arm_oracle import *
from unicorn import UC_HOOK_CODE

engine,level,records=0x100000,0x102000,0x103000
calls=[]
def signed16(v):return (v&65535)-65536 if v&32768 else v&65535
def hook(u,address,size,user):
    args=[u.reg_read(r) for r in (UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3)]
    sp=u.reg_read(UC_ARM_REG_SP)
    args+=list(struct.unpack('<8I',u.mem_read(sp,32)))
    if address==0x11dd8:
        assert args[1] in (1400,1401)
        u.reg_write(UC_ARM_REG_R0,0x170000+(args[1]-1400)*32)
    elif address==0x3324:
        image=1400+(args[5]-0x170000)//32
        calls.append([image,signed16(args[1]),signed16(args[2]),signed16(args[3]),signed16(args[4]),args[8],args[10]])
    else:
        calls.append([0,signed16(args[1]),signed16(args[2]),signed16(args[3]),signed16(args[4]),args[5],args[6],args[7]])
    u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
for ea in (0x11dd8,0x3324,0x10c58):uc.hook_add(UC_HOOK_CODE,hook,begin=ea,end=ea)
for i,dims in enumerate(((100,100),(43,41))):uc.mem_write(0x170000+i*32,struct.pack('<HH',*dims))
for i,off in enumerate((2236,2240,2244,2248,2252)):word(engine+off,0x180000+i*0x4000)
word(engine+2200,level);word(engine+2096,210);word(engine+2104,170);word(engine+2112,1000)
cases=[]
for lid in (52000,52002,52007):
    data=(ROOT/'j2me/resources/original'/('%d.bin'%lid)).read_bytes();n=struct.unpack_from('<I',data,24)[0]
    uc.mem_write(level,data[:28]);word(level+28,records)
    if n:uc.mem_write(records,data[28:28+16*n])
    for w,h in ((176,173),(240,273),(320,193),(180,259),(320,299)):
        uc.mem_write(engine+2204,struct.pack('<HHhh',w,h,0,0));word(engine+2108,200-(h>>1))
        for zoom in (1,2):
            call(0x21fb4,[engine,zoom-1])
            ground,top=struct.unpack('<ii',uc.mem_read(engine+2228,8))
            for angle in (0,1,50,100,180,269,280,359):
                word(engine+2100,angle);word(engine+2212,101);calls.clear();call(0x6e98,[engine,0x160000,0])
                cases.append(([lid,w,h,angle,zoom,101,ground,top],list(calls)))
with (ROOT/'j2me/tests/fixtures/arm-sky.bin').open('wb') as f:
    f.write(struct.pack('>I',len(cases)))
    for inputs,draws in cases:
        f.write(struct.pack('>9i',*(inputs+[len(draws)])))
        for row in draws:f.write(struct.pack('>%di'%(len(row)+1),len(row),*row))
print('Original ARM sky:',len(cases),'camera/band/draw-command cases')
