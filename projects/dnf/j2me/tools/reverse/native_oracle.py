#!/usr/bin/env python3
"""Run original ARM loaders/animation in Unicorn. Explicit regeneration only.

Host shims: resource IO, malloc/free, memcpy/memset, sprintf and LZMA.
All ACT/FRA/DAT structure decoding and animation transitions execute binary.mod.
"""
from pathlib import Path
import hashlib,json,lzma,struct,sys,zipfile
from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB,UC_HOOK_CODE
from unicorn.arm_const import *
ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'tools'))
import formats
SOURCE=ROOT.parent/'originals/0002E1A1.jar'

class Native:
    def __init__(self):
        self.zip=zipfile.ZipFile(SOURCE); raw=self.zip.read('binary.mod');self.raw=raw
        self.u=Uc(UC_ARCH_ARM,UC_MODE_THUMB)
        for addr,size in [(0x1000,0xa0000),(0x1400000,0x4000),(0x1500000,0x40000),(0x2000000,0x2000000),(0x5000000,0x10000)]:self.u.mem_map(addr,size)
        self.u.mem_write(0x1000,raw[0x34:0x34+0x9c350]);self.u.mem_write(0x1400000,raw[0xba244:0xba244+0x35fc])
        self.heap=0x2000000
        self.w32(0x1535c2c,0x68dd5)
        for addr in [0x140327c,0x140329c,0x14032cc,0x14032ec,0x14032fc,0x6cbe0,0x692b4]:
            self.u.hook_add(UC_HOOK_CODE,self.shim,begin=addr,end=addr)
    def alloc(self,n):
        p=self.heap;self.heap+=(n+7)&~7
        if self.heap>=0x4000000:raise MemoryError('oracle heap')
        self.u.mem_write(p,b'\0'*n);return p
    def read(self,p,n):return bytes(self.u.mem_read(p,n))
    def u32(self,p):return struct.unpack('<I',self.read(p,4))[0]
    def w32(self,p,v):self.u.mem_write(p,struct.pack('<I',v))
    def string(self,p):
        b=bytearray()
        while self.read(p,1)!=b'\0':b.extend(self.read(p,1));p+=1
        return b.decode('ascii')
    def shim(self,u,addr,size,unused):
        a,b,c,d=[u.reg_read(r) for r in (UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3)]
        result=a
        if addr==0x140327c:u.mem_write(a,self.read(b,c))
        elif addr==0x140329c:u.mem_write(a,bytes([b&255])*c)
        elif addr==0x14032cc:u.mem_write(a,(self.string(b)%c).encode('ascii')+b'\0')
        elif addr==0x14032ec:result=self.alloc(a)
        elif addr==0x14032fc:pass
        elif addr==0x6cbe0:
            raw=self.zip.read('res/'+self.string(a));result=self.alloc(len(raw));u.mem_write(result,raw)
        elif addr==0x692b4:
            raw=self.read(a,d);data=lzma.decompress(raw) if d<c else raw
            assert len(data)==c;u.mem_write(b,data);result=0
        u.reg_write(UC_ARM_REG_R0,result);u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
    def call(self,address,*args):
        sp=0x500f000
        for i,r in enumerate((UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3)):self.u.reg_write(r,args[i] if i<len(args) else 0)
        for i,arg in enumerate(args[4:]):self.w32(sp+i*4,arg)
        self.u.reg_write(UC_ARM_REG_SP,sp);self.u.reg_write(UC_ARM_REG_LR,0x5000001)
        self.u.emu_start(address|1,0x5000000,count=3000000)
        if self.u.reg_read(UC_ARM_REG_PC)!=0x5000000:raise RuntimeError('ARM instruction limit at '+hex(self.u.reg_read(UC_ARM_REG_PC)))
    def decoded(self,name):
        raw=self.zip.read('res/'+name);v,n,c=struct.unpack_from('<HII',raw);return lzma.decompress(raw[10:]) if c<n else raw[10:]

def main():
    n=Native();actor=n.alloc(36);state=n.alloc(16);n.call(0x6ea60,actor,0,0)
    parsed=formats.act(n.decoded('0.act'));clips=n.u32(actor+24)
    assert n.read(actor,1)[0]==len(parsed['actions'])
    # Check exact native decoded fields, including signed bounds and 16-bit attack regions.
    for ci,clip in enumerate(parsed['actions']):
        p=clips+ci*36;assert n.read(p,1)[0]==clip['next'];assert n.read(p+2,1)[0]==len(clip['frames']);fp=n.u32(p+32)
        for fi,f in enumerate(clip['frames']):
            p=fp+fi*68;assert n.read(p,1)[0]==f['duration'];assert n.read(p+2,7)==bytes(f['fields'])
            if f['delta']:assert struct.unpack('<4i',n.read(p+12,16))==f['delta']
            if f['region']:assert tuple(struct.unpack('<h',n.read(p+k,2))[0] for k in (40,42,44,46,56,58))==f['region']
            pp=n.u32(p+64);assert n.read(p+1,1)[0]==len(f['parts'])
            for i,part in enumerate(f['parts']):
                v=pp+i*12;assert n.read(v,1)[0]==part['frame'];assert struct.unpack('<hh',n.read(v+2,4))==(part['x'],part['y']);assert n.read(v+6,5)==bytes(part['fields'])
    out=ROOT/'tests/fixtures';out.mkdir(parents=True,exist_ok=True)
    lines=['# ARM binary.mod 0x6c9bc init, 0x6c8d0 tick; clip,override,tick,active,finished,elapsed,duration,clip,frame,next-default,next-override']
    count=0
    for ci,clip in enumerate(parsed['actions']):
        if not clip['frames']:continue
        for override in (255,0):
            n.u.mem_write(state,b'\0'*16);n.call(0x6c9bc,actor,state,ci,1);n.u.mem_write(state+7,bytes([override]))
            steps=min(512,max(24,sum(f['duration']+1 for f in clip['frames'])*2+3))
            for tick in range(steps):
                n.call(0x6c8d0,actor,state)
                lines.append(','.join(map(str,[ci,override,tick]+list(n.read(state,8)))));count+=1
    (out/'animation-arm.csv').write_text('\n'.join(lines)+'\n')
    # Execute native palette conversion and blending, retaining exact packed 565 output.
    dst=n.alloc(64);pal=n.alloc(16);pic=n.alloc(16);ctx=n.alloc(64);pair=n.alloc(8);src=n.alloc(8)
    n.w32(pair,ctx);n.w32(pair+4,pic);n.w32(pic+4,pal);n.w32(ctx+32,formats_key:=((32&248)<<8)|((144&252)<<3)|(32>>3));n.w32(ctx+36,65535)
    samples=[]
    for style,fn in [(0,0x684d8),(3,0x6872c)]:
        for weight in (0,1,17,31,32):
            for color in (0,0xffff,0xf800,0x07e0,formats_key):
                palette=n.alloc(2);n.u.mem_write(palette,struct.pack('<H',color));n.w32(pal+4,palette);n.u.mem_write(src,b'\0');n.u.mem_write(dst,struct.pack('<H',0x4a69));n.call(fn,pair,1,dst+2,src,0,weight)
                samples.append([style,color,0x4a69,weight,struct.unpack('<H',n.read(dst,2))[0]])
    (out/'blend-arm.csv').write_text('# style,source,dest,weight,result\n'+'\n'.join(','.join(map(str,row)) for row in samples)+'\n')
    (out/'provenance.json').write_text(json.dumps({'source_sha256':hashlib.sha256(SOURCE.read_bytes()).hexdigest(),'binary_sha256':hashlib.sha256(n.raw).hexdigest(),'executed':['0x6ea60','0x6d838','0x6de68','0x6e440','0x68dd4','0x6c9bc','0x6c8d0','0x684d8','0x6872c'],'animation_steps':count,'host_shims':['resource IO','malloc/free','memcpy/memset','sprintf','LZMA'],'note':'No game parsing, animation or pixel blend logic replaced by shims.'},indent=2)+'\n')
    print('Original ARM loader fields matched ACT 0; generated',count,'animation states and',len(samples),'blend samples')
if __name__=='__main__':main()
