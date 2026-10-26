#!/usr/bin/env python3
"""Explicit ARM fixtures for rank decoding, four base-damage branches and route selection.
No arithmetic is shimmed. RNG is supplied at its original entry point; native
passive, enchantment and critical state is zero. Not an oracle for the hit pipeline.
"""
import hashlib,json,struct
from native_oracle import Native,ROOT
from unicorn import UC_HOOK_CODE
from unicorn.arm_const import UC_ARM_REG_R0,UC_ARM_REG_PC,UC_ARM_REG_LR

def main():
 n=Native();root=n.alloc(10000);hero=n.alloc(12000);monster=n.alloc(200);zone=n.alloc(222)
 n.w32(0x1501d90,root);n.w32(root+16,hero);n.w32(0x1538860,monster);n.w32(0x150d89c,zone)
 rolls=[];requests=[];choice=None
 def rng(u,a,s,x):
  limit=u.reg_read(UC_ARM_REG_R0);requests.append(limit);roll=choice%limit if choice is not None else rolls.pop(0) if rolls else limit//2
  assert 0<=roll<limit,(roll,limit)
  u.reg_write(UC_ARM_REG_R0,roll);u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
 n.u.hook_add(UC_HOOK_CODE,rng,begin=0x6c7d4,end=0x6c7d4)
 out=ROOT/'tests/fixtures';ranks=[]
 for id in range(75):
  data=n.decoded(str(100+id)+'.bd')
  for rank in range(1,data[0]):
   n.u.mem_write(hero+1480,bytes([id,rank,rank]));n.call(0x2490c,0,0)
   ranks.append([id,rank]+list(n.read(hero+1536,48)))
 rows=[]
 for fixed in (0,1):
  for magic in (0,1):
   for power in (0,80,100,230,430,1200):
    for level,attribute,weapon,bonus,extra,defence,wlevel in [(1,2,0,0,0,0,0),(2,4,10,0,0,10,1),(20,43,134,11,7,300,20),(60,155,830,31,13,2500,55)]:
     for pe,me,edge in [(0,0,0),(1,1,-1),(1,2,1),(3,4,0),(2,3,0)]:
      n.u.mem_write(hero,b'\0'*12000)
      for i in range(13):n.u.mem_write(hero+5224+104*i,b'\xff')
      n.u.mem_write(hero+5224,b'\x00');n.u.mem_write(hero+5294,struct.pack('<H',power))
      n.u.mem_write(hero+1060,struct.pack('<HH',attribute,attribute));n.u.mem_write(hero+1084,struct.pack('<HH',bonus,bonus));n.u.mem_write(hero+1092,struct.pack('<H',extra))
      n.u.mem_write(hero+6,bytes([pe]));n.u.mem_write(hero+6597,bytes([level]));n.u.mem_write(monster,bytes([level,0,0,me]));n.u.mem_write(monster+34,struct.pack('<HH',defence,defence))
      n.u.mem_write(root+5905,bytes([int(weapon>0)]));n.u.mem_write(root+5916,bytes([wlevel]));n.u.mem_write(root+5924,struct.pack('<HH',weapon,weapon))
      span=(wlevel//4 if weapon else 0)+1;rolls[:]=[span+edge*span]
      fn=(0x7bf58 if magic else 0x7c298) if fixed else (0x7c544 if magic else 0x7c8bc)
      n.call(fn,0,0,1,0);rows.append([fixed,magic,power,attribute,weapon,bonus,extra,defence,level,pe,me,span,span+edge*span,n.u.reg_read(UC_ARM_REG_R0)])
 attacks=[];ranges=[]
 def no_wander(u,a,s,x):u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
 n.u.hook_add(UC_HOOK_CODE,no_wander,begin=0x89d84,end=0x89d84)
 monsters=n.decoded('6.bd');reach=n.decoded('5.bd');entity=0x1538f9c
 for id in (4,7,10,25,46,59,144,187):
  record=monsters[4+(id-1)*145:4+id*145]
  for slot in range(3):
   n.u.mem_write(monster+84+16*slot,bytes([record[78+15*slot]]))
   at=4+3*record[85+15*slot];bounds=reach[at:at+3];n.u.mem_write(0x1538860+8+slot*4,bounds)
   for mirror in (0,1):
    for dx,dy in [(bounds[0],bounds[2]),(bounds[0]+1,0),(-bounds[1],0),(-bounds[1]-1,0),(0,bounds[2]+1),(-bounds[0],0),(-bounds[0]-1,0)]:
     n.u.mem_write(entity+16,struct.pack('<HH',1000,1000));n.u.mem_write(entity+32,bytes([slot]));n.u.mem_write(entity+48,bytes([mirror]));n.u.mem_write(hero+58,struct.pack('<HH',1000+dx,1000+dy));n.call(0x81bb8,0)
     ranges.append([id,slot,mirror,dx,dy,n.u.reg_read(UC_ARM_REG_R0)])
  for roll in range(100):
   rolls[:]=[roll];n.call(0x89e18,0);attacks.append([id,roll,n.read(entity+32,1)[0]])
 xp_rows=[]
 def side_effect(u,a,s,x):
  if a==0x77094:u.reg_write(UC_ARM_REG_R0,0)
  u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
 for addr in (0x773a4,0x773dc,0x77094,0x350d4):n.u.hook_add(UC_HOOK_CODE,side_effect,begin=addr,end=addr)
 for level in (1,2,17,18,39,40,59,60):
  needed=230*level**3//100+700*level
  for xp in (0,needed//2,needed-1):
   for award in (1,25,needed//2,needed,needed*3):
    n.u.mem_write(hero,b'\0'*12000);n.u.mem_write(hero+6597,bytes([level]));n.w32(hero+16,xp);n.w32(hero+20,needed)
    n.call(0x7cf20,hero,award)
    xp_rows.append([level,xp,award,n.read(hero+6597,1)[0],n.u32(hero+16),struct.unpack('<H',n.read(hero+2,2))[0]])
 routes=[]
 for id in range(46):
  # Selection trace contains precisely the RNG limits issued by the real loader.
  for pick in (0,1,2):
   requests.clear()
   choice=pick
   n.u.mem_write(root+6888,bytes([id]));n.call(0x2b8e0,id)
   routes.append([id,pick,n.read(zone+12,1)[0],n.read(zone+13,1)[0],n.read(zone+4,1)[0],n.read(zone+5,1)[0],n.read(zone+8,1)[0],n.read(zone+9,1)[0]]+list(struct.unpack('<HH',n.read(zone+16,4))))
 for name,header,data in [('monster-slots-arm','monster,roll,slot(255 wander)',attacks),('monster-range-arm','monster,slot,mirror,dx,dy,inRange',ranges),('skill-sp-arm','level,xp,award,newLevel,newXP,SP',xp_rows),('skill-ranks-arm','id,rank,native48bytes',ranks),('base-damage-arm','fixed,magic,power,attribute,weapon,bonus,extra,defence,enemyLevel,playerElement,enemyElement,span,roll,result',rows),('zone-choice-arm','zone,pick,entryX,entryY,bossX,bossY,specialX,specialY,spawnX,spawnY',routes)]:
  (out/(name+'.csv')).write_text('# '+header+'\n'+'\n'.join(','.join(map(str,r)) for r in data)+'\n')
 (out/'combat-rules-provenance.json').write_text(json.dumps({'binary_sha256':hashlib.sha256(n.raw).hexdigest(),'executed':['0x2490c','0x7c298','0x7bf58','0x7c8bc','0x7c544','0x2b8e0','0x7cf20','0x89e18','0x81bb8'],'host_shims':['native_oracle resource/allocator/memory/LZMA','0x6c7d4 RNG','0x89d84 wander follow-up skipped after slot255','XP-only: 0x773a4/773dc refresh, 0x77094 passiveHP=0, 0x350d4 level VFX'],'scope':__doc__},indent=2)+'\n')
 print(len(ranks),'skill ranks;',len(rows),'damage cases;',len(routes),'route selections')
if __name__=='__main__':main()
