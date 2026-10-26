#!/usr/bin/env python3
"""Execute original quest/NPC loaders and availability predicates; explicit fixture regeneration."""
import json,struct
from native_oracle import Native,ROOT
from unicorn.arm_const import UC_ARM_REG_R0

def main():
    n=Native();n.call(0x2112c,0);n.call(0x20ebc,0)
    count=struct.unpack('<H',n.read(0x150c9d0,2))[0];table=n.u32(0x150c9d8)
    assert count==530
    raw=n.decoded('quest')
    for q in range(count):
        p=table+252*q;r=raw[2+225*q:2+225*(q+1)]
        assert n.read(p,161)==r[:161]
        assert n.read(p+162,4)==r[161:165]
        assert n.read(p+216,9)==r[198:207]
        for i in range(3):
            assert n.read(p+168+8*i,5)==r[165+5*i:170+5*i]
            assert n.read(p+192+8*i,1)==r[180+6*i:181+6*i]
            assert n.read(p+194+8*i,5)==r[181+6*i:186+6*i]
    hero=n.alloc(7000);root=n.alloc(7200);n.w32(0x1501d90,root);n.w32(root+16,hero)
    states=[]
    for level in (1,2,3,4):
        n.u.mem_write(hero+6597,bytes([level]))
        for done in (0,2):
            n.u.mem_write(0x150c7a8,bytes([done])*530)
            for q in (2,3,4,7,8):
                n.u.mem_write(0x150c7a8,bytes([done])*530);n.u.mem_write(0x150c7a8+q,b"\0");n.call(0x1fa10,q);states.append([q,level,done,n.u.reg_read(UC_ARM_REG_R0)])
    maps=n.read(0x150d160,1)[0];ptr=n.u32(0x150d168);npc=[]
    for i in range(maps):
        p=ptr+16*i;head=n.read(p,8);rows=n.u32(p+12)
        for j in range(head[0]):
            v=rows+24*j;npc.append({'field':head[3],'stage':head[4],'npc':n.read(v,1)[0],
                'offers':list(struct.unpack('<'+'H'*n.read(v+1,1)[0],n.read(n.u32(v+8),2*n.read(v+1,1)[0]))),
                'returns':list(struct.unpack('<'+'H'*n.read(v+12,1)[0],n.read(n.u32(v+20),2*n.read(v+12,1)[0])))})
    (ROOT/'tests/fixtures/quest-conditions-arm.csv').write_text('# quest,level,previous_states,available\n'+'\n'.join(','.join(map(str,row)) for row in states)+'\n')
    fixture={'source':'binary.mod 0x2112c / 0x20ebc / 0x1fa10','quest_records':count,'conditions':states,'npcs':npc,'xp_multipliers':list(n.read(0x9d0f8,3)),'normal_difficulty':list(struct.unpack('<18H',n.read(0x1401e3e,36)))}
    (ROOT/'tests/fixtures/campaign-arm.json').write_text(json.dumps(fixture,ensure_ascii=False,indent=2)+'\n')
    print('ARM campaign:',count,'quest records,',len(npc),'NPCs,',len(states),'availability cases')
if __name__=='__main__':main()
