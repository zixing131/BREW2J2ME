"""Run original 0x3324 with flag0x21 against the five original sparse alpha masks."""
from arm_oracle import *

def image(address,payload,id,width,height,flags,key):
    data=(ROOT/'j2me/build/extracted/images'/('%d.bin'%id)).read_bytes()
    uc.mem_write(payload,data)
    left=payload+4*height if flags&16 else 0
    count=payload+5*height if flags&16 else 0
    uc.mem_write(address,struct.pack('<HHHHIII',width,height,flags,key,payload,left,count))
    p=payload+(6*height if flags==17 else 4*height)
    for y in range(height):
        word(payload+y*4,p)
        p+=(data[5*height+y] if flags==17 else width*2)
    return data

color=image(0x110000,0x111000,4101,60,40,0,63263)
source=struct.unpack('<2400H',color[160:4960])
out=ROOT/'j2me/tests/fixtures/arm-flash.bin'
cases=[];w,h=72,52
uc.mem_write(0x120000,struct.pack('<8HII',w,h,0,0,w,h,0,0,0,0x121000))
for row in range(h):word(0x121000+row*4,0x130000+row*w*2)
for id in range(4111,4116):
    image(0x140000,0x141000,id,60,40,17,0)
    for x,y in ((6,5),(-13,5),(40,30),(6,-10),(-41,-17)):
        bg=0x3247;uc.mem_write(0x130000,struct.pack('<H',bg)*(w*h))
        call(0x3324,[0x120000,x,y,60,40,0x110000,0,0,0x21,0,0x140000])
        pixels=struct.unpack('<%dH'%(w*h),uc.mem_read(0x130000,w*h*2))
        cases.append(([id,w,h,x,y,bg],pixels))
with out.open('wb') as f:
    f.write(struct.pack('>I2400H',len(cases),*source))
    for inputs,pixels in cases:f.write(struct.pack('>6i%dH'%len(pixels),*(inputs+list(pixels))))
print('Original ARM flash:',len(cases),'full frames,',len(cases)*w*h,'RGB565 pixels')
