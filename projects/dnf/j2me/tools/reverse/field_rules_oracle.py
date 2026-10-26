#!/usr/bin/env python3
"""Explicit regeneration: original scene BGM, growth, stones and fate coin.

Music device calls are captured, passive HP is zero (no learned skills), and
coin RNG/damage eligibility are controlled. Selection and arithmetic run ARM.
"""
import hashlib, json, struct
from native_oracle import Native, ROOT
from unicorn import UC_HOOK_CODE
from unicorn.arm_const import UC_ARM_REG_R0, UC_ARM_REG_PC, UC_ARM_REG_LR

def main():
    n=Native(); root=n.alloc(8000); hero=n.alloc(10000); route=n.alloc(16)
    n.w32(0x1501d90,root); n.w32(root+16,hero)
    n.w32(0x150d89c,route); n.w32(0x150d8a0,route)
    n.u.mem_write(route,b'\0\0\0\0\1\1\0\0\2\2\0\0')
    tracks=[]; roll=0
    def shim(u,addr,size,unused):
        if addr==0x6c2b4: tracks.append(u.reg_read(UC_ARM_REG_R0))
        if addr==0x6c7d4: u.reg_write(UC_ARM_REG_R0,roll)
        if addr==0x2e6a4: u.reg_write(UC_ARM_REG_R0,1)
        if addr==0x77094: u.reg_write(UC_ARM_REG_R0,0)
        u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
    hooks=[0x39388,0x39360,0x30af4,0x6c2b4,0x6c6dc,0x77094,0x6c7d4,0x2e6a4]
    for addr in hooks:n.u.hook_add(UC_HOOK_CODE,shim,begin=addr,end=addr)
    rows=[]
    for field in (0,1,2,3,4,5,79,41):
        tracks.clear(); n.w32(root+6888,field*256+65536); n.u.mem_write(root+6893,b'\0')
        n.call(0x39724); rows.append([field,1,0,0,tracks[-1] if tracks else -1])
    for group in range(2,8):
        for room in range(3):
            tracks.clear(); n.w32(root+6888,6*256+65536); n.u.mem_write(root+6893,bytes([group]))
            n.u.mem_write(0x150d898,bytes([room,room])); n.call(0x39724)
            rows.append([6,1,group,room,tracks[-1]])
    stats=[]
    for level in (1,2,5,20,60):
        for vit,spirit,flat_hp,flat_mp,stone_hp,stone_mp in ((0,0,0,0,0,0),(3,4,11,13,25,20)):
            n.u.mem_write(hero+6597,bytes([level])); n.u.mem_write(hero+1064,struct.pack('<HHHHHHHH',2*level,2*level,0,0,vit,spirit,flat_hp,flat_mp))
            n.w32(hero+6600,stone_hp); n.w32(hero+6604,stone_mp)
            n.w32(hero+6580,999999); n.w32(hero+8,999999)
            n.call(0x79e14,0); n.call(0x79c88,0)
            stats.append([level,vit,spirit,flat_hp,flat_mp,stone_hp,stone_mp,n.u32(hero+6584),n.u32(hero+12)])
    coins=[]; effect=n.alloc(8); n.u.mem_write(effect,struct.pack('<4H',118,50,30,25))
    n.u.mem_write(root+6893,b'\2'); n.w32(hero+6584,1000)
    for roll in (0,49,50,99):
        for hp in (100,800,1000):
            n.w32(hero+6580,hp); n.call(0x7cc4c,effect,9); coins.append([roll,hp,n.u32(hero+6580)])
    out=ROOT/'tests/fixtures'
    for name,header,data in [('field-music-arm','field,stage,group,room(0 normal/1 boss/2 special),resource',rows),('growth-arm','level,vit,spirit,flatHP,flatMP,stoneHP,stoneMP,maxHP,maxMP',stats),('fate-coin-arm','roll,hp,resultHP (maxHP1000 chance50 heal30% harm25%)',coins)]:
        (out/(name+'.csv')).write_text('# '+header+'\n'+'\n'.join(','.join(map(str,r)) for r in data)+'\n')
    (out/'field-rules-provenance.json').write_text(json.dumps({'binary_sha256':hashlib.sha256(n.raw).hexdigest(),'executed':['0x39724','0x79e14','0x79c88','0x7cc4c','0x76664','0x76940'],'host_shims':[hex(a) for a in hooks],'note':__doc__,'region_table':list(n.read(0x1402042,80))},indent=2)+'\n')
    print('Original ARM:',len(rows),'music,',len(stats),'growth,',len(coins),'coin cases')
if __name__=='__main__':main()
