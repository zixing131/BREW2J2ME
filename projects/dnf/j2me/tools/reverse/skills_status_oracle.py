#!/usr/bin/env python3
"""Explicit regeneration: native skill effect dispatch, negative status init and replacement.
Host resource IO/allocator shims; effect-loader capture after native hero loading.
Class growth isolates armor mastery with explicit zero-contribution shims.
"""
import struct,json,hashlib
from native_oracle import Native,ROOT
from unicorn import UC_HOOK_CODE
from unicorn.arm_const import *
def main():
 n=Native();root=n.alloc(10000);hero=n.alloc(12000);n.w32(0x1501d90,root);n.w32(root+16,hero)
 n.call(0x6ea60,hero+68,0,0);effects=[];calls=[]
 def capture(u,a,s,x):
  calls.append([u.reg_read(UC_ARM_REG_R0)-hero,u.reg_read(UC_ARM_REG_R1)]);u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
 hook=n.u.hook_add(UC_HOOK_CODE,capture,begin=0x6ea60,end=0x6ea60)
 for id,clip in enumerate(n.read(0x140306d,75)):
  calls.clear()
  if clip!=255:n.call(0x7adf0,hero,clip,0,0)
  effects.append([id,clip,next((r for p,r in calls if p==572),-1),next((r for p,r in calls if p==104),-1)])
 n.u.hook_del(hook)
 table=n.alloc(866);n.w32(0x1536b58,table);n.call(0x73044,0);state=n.alloc(12);statuses=[];priority=[]
 # Player stun init invokes actor reset: initialize native hero earlier; its side effect is real.
 for id in range(12):
  for rank in (0,1,2,3,10,30):
   for enemy in (0,1):
    n.u.mem_write(state,b'\0'*12);n.call(0x75074,state,id,rank,enemy);raw=n.read(state,12)
    statuses.append([id,rank,enemy]+list(raw))
 for negative in (0,1):
  for old in (0,1,2,30):
   for active in (0,1):
    for value in (0,1,2,10,30):
     p=0x1538f9c+(128 if negative else 416)
     n.u.mem_write(p,b'\0'*12)
     if negative:n.u.mem_write(p,bytes([old]));n.u.mem_write(p+7,bytes([active]))
     else:n.u.mem_write(p+8,struct.pack('<H',old));n.u.mem_write(p+10,bytes([active]))
     n.call(0x71c4c,10 if negative else 11,value,0,0,0)
     priority.append([negative,old,active,value,n.u.reg_read(UC_ARM_REG_R0)])
 # Class growth in isolation: no learned armor mastery/equipment-derived contribution.
 def no_armor(u,a,s,x):
  u.reg_write(UC_ARM_REG_R0,0);u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
 for address in (0x77094,0x77144):n.u.hook_add(UC_HOOK_CODE,no_armor,begin=address,end=address)
 growth=[]
 for job in range(9):
  family=0 if job==0 else (job-1)%4+1
  factors=n.read(0x1402fa4+6*family,6)
  for level in (1,18,48,60):
   for vit,spi,flat_hp,flat_mp,stone_hp,stone_mp in ((0,0,0,0,0,0),(3,4,11,13,25,20)):
    n.u.mem_write(hero+50,bytes([job]));n.u.mem_write(hero+6597,bytes([level]))
    n.u.mem_write(hero+1060,struct.pack('<10H',*(list(level*x for x in factors[:4])+[0,0,vit,spi,flat_hp,flat_mp])))
    n.w32(hero+6600,stone_hp);n.w32(hero+6604,stone_mp)
    n.call(0x79e14,0);n.call(0x79c88,0)
    growth.append([job,level,vit,spi,flat_hp,flat_mp,stone_hp,stone_mp,n.u32(hero+6584),n.u32(hero+12)])
 for name,rows in [('class-growth-arm',growth),('skill-effects-arm',effects),('status-init-arm',statuses),('status-priority-arm',priority)]:
  (ROOT/'tests/fixtures'/f'{name}.csv').write_text('# '+__doc__.splitlines()[0]+'\n'+'\n'.join(','.join(map(str,r)) for r in rows)+'\n')
 (ROOT/'tests/fixtures/skills-status-provenance.json').write_text(json.dumps({'binary_sha256':hashlib.sha256(n.raw).hexdigest(),'executed':['0x6ea60','0x7adf0','0x73044','0x75074','0x71c4c','0x79e14','0x79c88'],'scope':__doc__,'growth_shims':{'0x77094':'zero HP armor mastery contribution','0x77144':'zero MP armor mastery contribution'}},indent=2)+'\n')
 print('Native class growth',len(growth));print('Native effects',len(effects),'status init',len(statuses),'priority',len(priority))
if __name__=='__main__':main()
