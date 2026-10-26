#!/usr/bin/env python3
"""Explicit regeneration: execute original ARM 0x7638c for combat hit-box fixtures."""
import json,random,struct,hashlib
from native_oracle import Native,ROOT
from unicorn.arm_const import UC_ARM_REG_R0

def main():
    n=Native();a=n.alloc(20);b=n.alloc(24);rng=random.Random(7638);rows=[]
    for i in range(512):
        attack=[rng.randrange(-90,30),rng.randrange(-90,0),rng.randrange(0,100),rng.randrange(-20,20),15,20]
        bounds=[-20,-56,20,0];ax=200;ay=240;bx=rng.randrange(80,340);by=rng.randrange(210,270)
        n.u.mem_write(a,struct.pack('<4hihh2h',*attack[:4],ax,ay,0,*attack[4:]))
        n.u.mem_write(b,struct.pack('<6i',*bounds,bx,by));n.call(0x7638c,a,b)
        rows.append(attack+[ax,ay]+bounds+[bx,by,n.u.reg_read(UC_ARM_REG_R0)])
    out=ROOT/'tests/fixtures'
    (out/'hitbox-arm.csv').write_text('# original ARM 0x7638c: attack[6],origin[2],bounds[4],origin[2],result\n'+'\n'.join(','.join(map(str,r))for r in rows)+'\n')
    (out/'combat-provenance.json').write_text(json.dumps({'binary_sha256':hashlib.sha256(n.raw).hexdigest(),'executed':['0x7638c'],'cases':len(rows),'note':'No collision logic replaced by host shims.'},indent=2)+'\n')
    print('Executed original ARM collision:',len(rows),'cases')
if __name__=='__main__':main()
