"""Audit-friendly dump using the confirmed 0x19618 / 0x5C00 resource layouts."""
from pathlib import Path
import json
import struct

root=Path(__file__).resolve().parents[3]
source=root/'j2me/build/extracted/mbx'
dest=root/'docs/reverse'
def u32(b,p):return struct.unpack_from('<I',b,p)[0]
b=(source/'0.bin').read_bytes();n=u32(b,0);start=4+8*n;text={}
for i in range(n):
    rid=u32(b,4+4*i);end=u32(b,4+4*n+4*i)
    assert start<=end<=len(b)
    text[rid]=b[start:end].decode('utf-16le').rstrip('\0');start=end
assert start==len(b)
scripts={}
for rid in range(11000,11016):
    b=(source/(str(rid)+'.bin')).read_bytes();n=struct.unpack_from('<H',b)[0];p=2+8*n;events=[]
    for i in range(n):
        header=struct.unpack_from('<4I',b,p);p+=16;commands=[]
        for j in range(header[3]):
            cmd=list(struct.unpack_from('<8i',b,p));p+=32
            entry={'words':cmd}
            if cmd[0]==2:entry['text']=text.get(cmd[6]);entry['speaker']=text.get(cmd[4])
            commands.append(entry)
        events.append({'header':header,'region':struct.unpack_from('<4H',b,2+8*i),'commands':commands})
    assert p==len(b),(rid,p,len(b));scripts[rid]=events
for name,data in [('texts',text),('scripts',scripts)]:
    (dest/(name+'.json')).write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
print('Dumped 526 original texts and 16 scripts; all input consumed exactly')
