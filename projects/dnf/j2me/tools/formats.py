"""DNF WIPI asset readers, derived from binary.mod ARM loaders (see docs).

No heuristics or trailing data are accepted. Keep unresolved fields as raw values.
"""
import struct

class Reader:
    def __init__(self, data): self.data, self.pos = data, 0
    def take(self, n):
        if n < 0 or self.pos + n > len(self.data):
            raise ValueError('truncated at %d, need %d / %d' % (self.pos, n, len(self.data)))
        x = self.data[self.pos:self.pos+n]; self.pos += n; return x
    def u8(self): return self.take(1)[0]
    def s8(self): return struct.unpack('b', self.take(1))[0]
    def u16(self): return struct.unpack('<H', self.take(2))[0]
    def s16(self): return struct.unpack('<h', self.take(2))[0]
    def end(self):
        if self.pos != len(self.data): raise ValueError('trailing %d bytes' % (len(self.data)-self.pos))

def dat(data):
    r = Reader(data)
    palettes, colors, fmt, flags, count = [r.u8() for _ in range(5)]
    palette = [[tuple(r.take(3)) for _ in range(colors)] for _ in range(palettes)]
    tiles = []
    if fmt not in (9,10,11,12): raise ValueError('pixel format %d' % fmt)
    bits = 1 << (fmt-9)
    for _ in range(count):
        w,h,x,y = r.u8(),r.u8(),r.s8(),r.s8()
        raw = r.take((w*h*bits+7)//8)
        indices = bytes((raw[(i*bits)//8] >> (8-bits-(i*bits)%8)) & ((1<<bits)-1) for i in range(w*h))
        if indices and max(indices) >= colors: raise ValueError('palette index outside table')
        tiles.append(dict(w=w,h=h,x=x,y=y,pixels=indices))
    r.end()
    return dict(palettes=palette,flags=flags,format=fmt,tiles=tiles)

def fra(data):
    r=Reader(data); families,layers=r.u8(),r.u8()
    banks=[[r.u16() for _ in range(layers)] for _ in range(families)]
    palettes=[[r.u8() for _ in range(layers)] for _ in range(families)]
    frames=[]
    for _ in range(r.u8()):
        frames.append([dict(bank=r.u8(),tile=r.u8(),x=r.s16(),y=r.s16(),transform=r.u8()) for _ in range(r.u8())])
    r.end()
    return dict(banks=banks,palettes=palettes,frames=frames)

def act(data):
    r=Reader(data); fra_id=r.u16(); actions=[]
    for _ in range(r.u8()):
        next_action=r.u8(); box_a=tuple(r.take(6)) if r.u8()==1 else None
        box_b=tuple(r.take(6)) if r.u8()==1 else None
        frames=[]
        for _ in range(r.u8()):
            duration=r.u8()
            delta=tuple(r.s8() for _ in range(4)) if r.u8() else None
            region=tuple(r.s16() for _ in range(6)) if r.u8() else None
            fields=tuple(r.take(7))
            parts=[]
            for _ in range(r.u8()):
                parts.append(dict(frame=r.u8(),x=r.s16(),y=r.s16(),fields=tuple(r.take(5))))
            frames.append(dict(duration=duration,delta=delta,region=region,fields=fields,parts=parts))
        actions.append(dict(next=next_action,box_a=box_a,box_b=box_b,frames=frames))
    r.end()
    return dict(fra=fra_id,actions=actions)

def grid(data):
    r=Reader(data); w,h=r.u8(),r.u8()
    cells=[tuple(r.take(3)) for _ in range(w*h)]
    r.end(); return dict(w=w,h=h,cells=cells)

def bac(data):
    r=Reader(data); rows,cols=r.u8(),r.u8()
    cells=[tuple(r.take(5)) for _ in range(rows*cols)]
    r.end(); return dict(rows=rows,cols=cols,cells=cells)

def fie(data):
    r=Reader(data)
    ground_id,rows,cols,y_offset,field4,field5=[r.u8() for _ in range(6)]
    def banks(): return [dict(dat=r.u16(),source=r.u8(),palette=r.u8()) for _ in range(r.u8())]
    ground=banks()
    far_id,far_rows,far_cols,far_field=[r.u8() for _ in range(4)]
    far=banks(); objects=[]
    for _ in range(5):
        id=r.s8()
        if id<0: objects.append(None);continue
        x,y,repeat,gap=[r.u8() for _ in range(4)]
        objects.append(dict(id=id,x=x,y=y,repeat=repeat,gap=gap,banks=banks()))
    collision=r.take(rows*cols);r.end()
    return dict(ground_id=ground_id,rows=rows,cols=cols,y_offset=y_offset,field4=field4,field5=field5,ground=ground,
                far_id=far_id,far_rows=far_rows,far_cols=far_cols,far_field=far_field,far=far,objects=objects,collision=collision)
