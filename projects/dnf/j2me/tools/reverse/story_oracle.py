#!/usr/bin/env python3
"""Explicit fixture regeneration: execute original font and ANI handlers in ARM.

Only the final rectangle fill is a host display shim. Glyph selection, Jamo
composition, rectangle decoding, event copying and state handlers are original.
"""
import csv,json,struct,sys
from pathlib import Path
from native_oracle import Native,ROOT
from unicorn import UC_HOOK_CODE
from unicorn.arm_const import *
sys.path.insert(0,str(ROOT/'tools'))
import story_assets

def main():
    n=Native();data=n.decoded('font');src=n.alloc(len(data));n.u.mem_write(src,data);offset=0
    for address in (0x1536cbc,0x15377c8,0x1536b60):
        n.call(0x8b988,address,src+offset);offset+=n.u.reg_read(UC_ARM_REG_R0)
    assert offset==len(data)
    symbols=n.read(0x9c92c,408).decode('euc_kr');table=n.alloc(410)
    n.u.mem_write(table,b''.join(struct.pack('<H',ord(c)) for c in symbols)+b'\0\0');n.w32(0x15369c8,table)
    rows=[]
    def rect(u,address,size,unused):
        x,y,w,h=[u.reg_read(r) for r in (UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3)]
        for yy in range(y,min(12,y+h)):
            for xx in range(x,min(16,x+w)):rows[yy]|=1<<xx
        u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
    n.u.hook_add(UC_HOOK_CODE,rect,begin=0x6a854,end=0x6a854)
    raw=(ROOT/'resources/korean.bin').read_bytes();expected=[]
    for p in range(2,len(raw),27):
        cp=struct.unpack_from('>H',raw,p)[0]
        if chr(cp) in '‘’…':continue # documented punctuation substitutions, absent in source font
        rows[:]=[0]*12;n.call(0x72484,0,0,cp,0xffffff00);width=n.u.reg_read(UC_ARM_REG_R0)
        expected.append([cp,width]+list(rows))
        assert tuple(rows)==struct.unpack_from('>12H',raw,p+3),(cp,rows)
    fixture=ROOT/'tests/fixtures/font-arm.csv'
    with fixture.open('w') as f:
        f.write('# Original 0x8b988 + 0x72484 + 0x72368; final rectangle fill shim only\n');csv.writer(f).writerows(expected)
    lines=[]
    for id,index in ((2,8),(2,9),(3,4),(999,13),(100,3)):
        data=n.decoded(str(id)+'.ani');node=n.alloc(624);n.u.mem_write(node,data[12+36*index:48+36*index]);n.w32(0x1536348,node)
        eo=story_assets.word(data,8);size=story_assets.word(data,4);events=n.alloc(size);n.u.mem_write(events,data[eo:eo+size]);n.w32(0x1535f54,events)
        n.u.mem_write(0x15364fd,b'\1');n.call(0x703d8)
        for tick in range(story_assets.word(data,2)+1):
            n.w32(0x153653c,tick);n.call(0x703b4,0,tick);n.call(0x6ead8,0);n.call(0x6eb20,0)
            x,y,action,reset,mirror,weight=struct.unpack('<6h',n.read(node+576,12))
            if n.read(node+614,1)==b'\1':
                dx,dy=struct.unpack('bb',n.read(node+610,2));start=struct.unpack('<H',n.read(node+612,2))[0];x+=dx*(tick-start);y+=dy*(tick-start)
            lines.append([id,index,tick,x,y,action,mirror,weight,n.read(node+592,1)[0],n.read(node+618,1)[0],n.read(node+619,1)[0]])
    with (ROOT/'tests/fixtures/story-arm.csv').open('w') as f:
        f.write('# id,node,tick,x,y,action,mirror,weight,hidden,frozen,fixedFrame; original ARM command handlers\n');csv.writer(f).writerows(lines)
    print('ARM fixtures:',len(expected),'glyphs;',len(lines),'story node states')
if __name__=='__main__':main()
