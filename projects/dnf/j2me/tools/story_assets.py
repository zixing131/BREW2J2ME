"""Original ANI timelines and Korean bitmap glyphs, no authored replacement plot.

ANI: native 0x704e8/0x7035c/0x703d8. Font: 0x8b988/0x72484/0x72368.
"""
import json,struct,zipfile
from pathlib import Path
from formats import Reader

def word(data,p):return struct.unpack_from('<H',data,p)[0]
def text(data):return data.split(b'\0')[0].decode('euc_kr')
def utf(s):
    d=s.encode('utf-8');assert '\0' not in s and len(d)<65536
    return struct.pack('>H',len(d))+d

def ani(data):
    r=Reader(data);kind=r.u8();count=r.u8();duration=r.u16();event_bytes=r.u16();text_bytes=r.u16();eo=r.u16();to=r.u16()
    objects=[r.take(36) for _ in range(count)]
    if eo!=r.pos or to!=eo+event_bytes or len(data)!=to+text_bytes+21:raise ValueError('ANI layout')
    events=r.take(event_bytes);strings=r.take(text_bytes);tail=r.take(21);r.end();dialogue=[];blocks=0;ops={}
    for obj in objects:
        lines=[]
        for lp,op in ((20,26),(22,28)):
            length=word(obj,lp);offset=word(obj,op)
            if obj[0]==2:
                if offset+length>len(strings):raise ValueError('ANI text bounds')
                lines.append(text(strings[offset:offset+length]))
            else:lines.append('')
        dialogue.append(lines)
        offset=word(obj,30);seen=set()
        while word(obj,32):
            if offset in seen or offset+8>len(events):raise ValueError('ANI event chain')
            seen.add(offset);time,n,next_time,next_offset=struct.unpack_from('<4H',events,offset)
            if n>10 or offset+8+n*52>len(events):raise ValueError('ANI event slots')
            for j in range(n):
                op=events[offset+8+j*52];ops[op]=ops.get(op,0)+1
            blocks+=1;offset=next_offset
            # +32 is only tested for nonzero by the native loader/update loop.
            # Editor counts can include unreachable blocks; follow the actual links.
            if next_time==60000:break
    return dict(duration=duration,objects=objects,dialogue=dialogue,blocks=blocks,opcodes=ops,tail=tail)

class OriginalFont:
    def __init__(self,data,binary):
        self.blocks=[];offset=0
        for count in (95,348,204):
            size=word(data,offset);head=data[offset:offset+7]
            table=list(struct.unpack_from('<%dH'%count,data,offset+7))+[size]
            if count in (95,204):table[-2]=size # 0x8b31c overwrites the last table entry with its end value.
            base=offset+7+2*count;self.blocks.append((head,table,data[base:base+size]));offset=base+size
        if offset!=len(data):raise ValueError('font length')
        self.cho0=binary[641258-0xfcc:641258-0xfcc+21]
        self.cho1=binary[641279-0xfcc:641279-0xfcc+21]
        self.jong=binary[0x9c914-0xfcc:0x9c914-0xfcc+21]
        raw=binary[0x9c92c-0xfcc:0x9c92c-0xfcc+408]
        self.symbols={raw[i:i+2].decode('euc_kr'):i//2 for i in range(0,408,2)}
    def glyph(self,c):
        cp=ord(c);pieces=[];width=9
        if 32<=cp<=126:pieces=[(0,cp-32)];width=6
        elif 0xac00<=cp<=0xd7a3:
            cho,rem=divmod(cp-0xac00,588);jung,jong=divmod(rem,28)
            a=(self.cho1 if jong else self.cho0)[jung]
            b=(2 if cho in (0,15) else 3) if jong else (0 if cho in (0,15) else 1)
            pieces=[(1,a*19+cho),(1,152+b*21+jung),(1,236+self.jong[jung]*28+jong)]
        elif c in self.symbols:pieces=[(2,self.symbols[c])];width=12
        elif c in '‘’':return self.glyph("'")
        elif c=='…':
            _,dots=self.glyph('.')
            return 12,[row|(row<<4)|(row<<8) for row in dots]
        else:return None
        rows=[0]*12
        for block,index in pieces:
            _,table,payload=self.blocks[block];data=payload[table[index]:table[index+1]]
            if len(data)%2:raise ValueError('font rectangle pair')
            for i in range(0,len(data),2):
                x,y=data[i]>>4,data[i]&15;w,h=data[i+1]>>4,data[i+1]&15
                for yy in range(y,min(12,y+h)):
                    for xx in range(x,min(width,x+w)):rows[yy]|=1<<xx
        return width+1,rows # Native advance includes a one-pixel inter-character gap.

def extract(resources,build,source):
    folder=resources/'story';folder.mkdir(exist_ok=True);ids=[];report=[];chars=set(' ?')
    translated=folder/'zh-CN';translated.mkdir(exist_ok=True)
    translations=json.loads((Path(__file__).resolve().parents[1]/'localization/zh-CN.json').read_text())['strings']
    used=set()
    def zh(value):
        if not value:return ''
        used.add(value)
        if value not in translations:raise ValueError('Missing Chinese translation: '+value)
        return translations[value]
    for path in sorted((resources/'original').glob('*.ani'),key=lambda p:int(p.stem)):
        parsed=ani(path.read_bytes());id=int(path.stem);ids.append(id)
        (folder/(str(id)+'.text')).write_bytes(struct.pack('>H',len(parsed['dialogue']))+b''.join(utf(t) for pair in parsed['dialogue'] for t in pair))
        (translated/(str(id)+'.text')).write_bytes(struct.pack('>H',len(parsed['dialogue']))+b''.join(utf(zh(t)) for pair in parsed['dialogue'] for t in pair))
        for pair in parsed['dialogue']:
            for line in pair:chars.update(line)
        report.append(dict(id=id,duration=parsed['duration'],objects=len(parsed['objects']),blocks=parsed['blocks'],opcodes=parsed['opcodes'],exit=parsed['tail'][0],next=word(parsed['tail'],13)))
    # Native diary loader 0x209f8, 882-byte source records. Archive browser, not quest unlocks.
    r=Reader((resources/'original/diary').read_bytes());diary=[]
    for _ in range(r.u16()):
        record=r.take(882);title=text(record[:22]);body=text(record[22:872]);diary.append((title,body));chars.update(title+body)
    r.end();(resources/'diary.bin').write_bytes(struct.pack('>H',len(diary))+b''.join(utf(a)+utf(b) for a,b in diary))
    (resources/'diary-zh-CN.bin').write_bytes(struct.pack('>H',len(diary))+b''.join(utf(zh(a))+utf(zh(b)) for a,b in diary))
    if set(translations)!=used:raise ValueError('Stale Chinese translation keys')
    with zipfile.ZipFile(source) as z:font=OriginalFont((resources/'original/font').read_bytes(),z.read('binary.mod'))
    glyphs=[];missing=[]
    for c in sorted(chars):
        if c in '\r\n\t':continue
        glyph=font.glyph(c)
        if glyph:glyphs.append(struct.pack('>HB12H',ord(c),glyph[0],*glyph[1]))
        else:missing.append(c)
    (resources/'korean.bin').write_bytes(struct.pack('>H',len(glyphs))+b''.join(glyphs))
    (resources/'stories.bin').write_bytes(struct.pack('>H',len(ids))+b''.join(struct.pack('>H',n) for n in ids))
    (build/'story-report.json').write_text(json.dumps(dict(scenes=report,diary_entries=len(diary),glyphs=len(glyphs),missing_glyphs=missing,translated_strings=len(used)),ensure_ascii=False,indent=2)+'\n')
    return report
