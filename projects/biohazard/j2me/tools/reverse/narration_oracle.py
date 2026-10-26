"""Original 0x20298 / 0x101B4 / 0xA10 narration traces, with no host callbacks."""
from arm_oracle import *

raw_text=(ROOT/'j2me/resources/original/0.bin').read_bytes()
n=struct.unpack_from('<I',raw_text)[0]
ids=struct.unpack_from('<%dI'%n,raw_text,4);ends=struct.unpack_from('<%dI'%n,raw_text,4+4*n)
def text(id):
    i=ids.index(id);start=4+8*n if i==0 else ends[i-1]
    return raw_text[start:ends[i]].decode('utf-16le').rstrip('\0')
cases=[]
for strings,accelerated in (([text(6018),text(6019)],False),([text(6025)],False),([text(6025)],True),(['$T00000$Hffffff甲$n$S123456乙','$H00ff00AB'],True)):
    state=0x100000;uc.mem_write(state,bytes(128));word(state+56,0x180000);uc.mem_write(0x180000,bytes(16000))
    uc.mem_write(state+62,b'\1');uc.mem_write(state+64,struct.pack('<H',len(strings)))
    for i,s in enumerate(strings):
        ptr=0x120000+0x1000*i;word(state+16+4*i,ptr);uc.mem_write(ptr,s.encode('utf-16le')+b'\0\0')
    trace=[]
    for frame in range(4000):
        fast=accelerated and frame%13==3
        if fast:call(0x101b4,[state,258,57398])
        call(0x20298,[state])
        ticks=struct.unpack('<I',uc.mem_read(state+12,4))[0];position=struct.unpack('<H',uc.mem_read(state+86,2))[0]
        finished=uc.mem_read(state+6,1)[0];delay=struct.unpack('<H',uc.mem_read(state+4,2))[0];active=uc.mem_read(state+62,1)[0]
        message='$n'.join(strings)+'$n'
        assert bytes(uc.mem_read(0x180000,2*position))==message[:position].encode('utf-16le')
        trace.append([int(fast),ticks,position,delay,finished,active])
        if not active:break
    else:raise AssertionError('Narration never ended')
    cases.append(('$n'.join(strings),trace))
with (ROOT/'j2me/tests/fixtures/arm-narration.bin').open('wb') as f:
    f.write(struct.pack('>I',len(cases)))
    for message,trace in cases:
        encoded=message.encode('utf-16be');f.write(struct.pack('>I',len(encoded)//2));f.write(encoded);f.write(struct.pack('>I',len(trace)))
        for row in trace:f.write(struct.pack('>6i',*row))
print('Original ARM narration:',sum(len(t) for _,t in cases),'frames across',len(cases),'streams')
