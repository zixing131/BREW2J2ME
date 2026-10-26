"""Convert this game's SMAF tracks to portable MMAPI WAV/SMF assets.

Format evidence: native 0x6c2b4; Yamaha SMAF Mobile Standard; dlunch/smaf.
No downloaded replacement audio or synthesizer/ffmpeg dependency at build time.
"""
import io, json, struct, wave
from pathlib import Path
from formats import Reader

def chunks(data):
    r=Reader(data)
    while r.pos<len(data):
        tag=r.take(4); size=struct.unpack('>I',r.take(4))[0]
        yield tag,r.take(size)

def vlq(r):
    n=0
    for _ in range(4):
        b=r.u8(); n=(n<<7)|(b&127)
        if b<128:return n
    raise ValueError('oversized MIDI VLQ')

def putvlq(n):
    out=[n&127];n>>=7
    while n:out.insert(0,128|(n&127));n>>=7
    return bytes(out)

def yamaha(data):
    history=0;step=127;out=bytearray()
    for b in data:
        # SMAF MA-series packing is low nibble first, unlike OPNA ADPCM-B.
        for nibble in (b&15,b>>4):
            delta=((1+2*(nibble&7))*step)>>3
            history=max(-32768,min(32767,history+(-delta if nibble&8 else delta)))
            step=max(127,min(24576,step*(230,230,230,230,307,409,512,614)[nibble&7]>>8))
            out+=struct.pack('<h',history)
    return bytes(out)

def pcm(track):
    if track[:6]!=bytes.fromhex('000011000202'):raise ValueError('unsupported ATR format')
    parts=dict(chunks(track[6:]))
    waves=[v for k,v in parts.items() if k.startswith(b'Awa')]
    if len(waves)!=1:raise ValueError('expected one ATR wave')
    samples=yamaha(waves[0]);out=io.BytesIO()
    with wave.open(out,'wb') as w:
        w.setnchannels(1);w.setsampwidth(2);w.setframerate(8000);w.writeframes(samples)
    return out.getvalue(),{'samples':len(samples)//2,'duration_ms':len(samples)//16}

def midi(track):
    if track[:4]!=bytes.fromhex('02000202'):raise ValueError('unsupported MTR format')
    parts=dict(chunks(track[20:]));r=Reader(parts[b'Mtsq']);events=[];now=0;notes=0;sysex=0
    velocity=[64]*16; triggers=[]
    while r.pos<len(r.data):
        now+=vlq(r);status=r.u8();kind=status&240;ch=status&15
        if kind in (128,144):
            note=r.u8()
            if kind==144:velocity[ch]=r.u8()
            gate=vlq(r)
            if note==0:triggers.append((now,ch+1,velocity[ch]))
            else:
                events.append((now,len(events),bytes((144|ch,note,velocity[ch]))))
                events.append((now+gate,len(events),bytes((128|ch,note,0))));notes+=1
        elif kind in (160,176,192,208,224):
            msg=bytes((status,))+r.take(1 if kind in (192,208) else 2)
            if any(b>=128 for b in msg[1:]):raise ValueError('invalid MIDI data byte')
            events.append((now,len(events),msg))
        elif status==240:
            r.take(vlq(r));sysex+=1 # Yamaha FM voice definitions have no portable GM equivalent.
        elif status==255:
            meta=r.u8()
            if meta==47:
                if r.u8()!=0:raise ValueError('bad end of sequence')
                break
            if meta!=0:raise ValueError('unknown SMAF meta event')
        else:raise ValueError('unknown SMAF event '+hex(status))
    r.end()
    # PPQ 250 at 1 second/quarter gives the original 4 ms duration/gate units.
    out=bytearray(b'\0\xff\x51\x03\x0f\x42\x40');last=0
    banks=[0]*16;mapping={};rhythm=set()
    def channel(ch):
        if banks[ch]==125:rhythm.add(ch);return 9
        if ch not in mapping:
            used=set(mapping.values())|{9};available=[n for n in range(16) if n not in used]
            if not available:raise ValueError('more than 15 melodic channels')
            mapping[ch]=available[0]
        return mapping[ch]
    for tick,_,msg in sorted(events):
        status=msg[0]&240;ch=msg[0]&15;body=msg[1:]
        if status==176 and body[0]==0:banks[ch]=body[1]
        dest=channel(ch)
        if status==176 and body[0] in (0,32):body=bytes((body[0],0)) # Portable GM bank.
        if status==192 and dest==9:body=b'\0'
        msg=bytes((status|dest,))+body
        out+=putvlq(tick-last)+msg;last=tick
    end=max(now,last);out+=putvlq(end-last)+b'\xff\x2f\0'
    result=b'MThd'+struct.pack('>IHHH',6,0,1,250)+b'MTrk'+struct.pack('>I',len(out))+out
    stats={'notes':notes,'events':len(events),'duration_ms':end*4,'yamaha_sysex_omitted':sysex,'rhythm_channels':sorted(rhythm)}
    if triggers:
        # These five SFX have one sampled note plus a velocity-1 guide tone.
        # Preserve the guide tone in a companion MIDI rather than silently discard it.
        waves={k[3]:v for k,v in chunks(parts[b'Mtsp']) if k.startswith(b'Mwa')}
        rates={struct.unpack_from('>H',waves[ch],1)[0] for _,ch,_ in triggers}
        if len(rates)!=1:raise ValueError('mixed sample rates')
        rate=rates.pop();samples=[]
        for tick,ch,volume in triggers:
            wave_data=waves[ch]
            if wave_data[0]!=32:raise ValueError('unsupported embedded wave')
            decoded=yamaha(wave_data[3:]);start=tick*4*rate//1000
            values=struct.unpack('<%dh'%(len(decoded)//2),decoded)
            samples.extend([0]*max(0,start+len(values)-len(samples)))
            for i,v in enumerate(values):samples[start+i]=max(-32768,min(32767,samples[start+i]+v*volume//127))
        out=io.BytesIO()
        with wave.open(out,'wb') as w:
            w.setnchannels(1);w.setsampwidth(2);w.setframerate(rate);w.writeframes(struct.pack('<%dh'%len(samples),*samples))
        stats['pcm_triggers']=len(triggers);stats['companion_midi']=result
        stats['samples']=len(samples);stats['duration_ms']=max(stats['duration_ms'],len(samples)*1000//rate)
        return out.getvalue(),stats
    return result,stats

def convert(data):
    if data[:4]!=b'MMMD' or struct.unpack_from('>I',data,4)[0]!=len(data)-8:raise ValueError('bad MMMD')
    tracks=[(k,v) for k,v in chunks(data[8:-2]) if k.startswith((b'ATR',b'MTR'))]
    if len(tracks)!=1:raise ValueError('expected one SMAF track')
    tag,track=tracks[0]
    if tag.startswith(b'ATR'):out,report=pcm(track);return 'wav',out,report
    out,report=midi(track);return ('wav' if 'pcm_triggers' in report else 'mid'),out,report

def extract(resources,build):
    folder=resources/'audio';folder.mkdir(exist_ok=True);report=[]
    for path in sorted((resources/'original').glob('*.snd'),key=lambda p:int(p.stem)):
        r=Reader(path.read_bytes())
        for i in range(r.u8()):
            flag=r.u8();data=r.take(struct.unpack('<I',r.take(4))[0]);ext,out,stats=convert(data)
            name=path.stem+'-'+str(i)+'.'+ext;(folder/name).write_bytes(out)
            if 'companion_midi' in stats:
                (folder/(path.stem+'-'+str(i)+'-guide.mid')).write_bytes(stats.pop('companion_midi'))
            report.append(dict(resource=int(path.stem),track=i,flag=flag,file=name,**stats))
        r.end()
    # Tiny table for the runtime; keep source flags without guessing their meaning.
    (resources/'audio.bin').write_bytes(struct.pack('>H',len(report))+b''.join(struct.pack('>HBBB',r['resource'],r['track'],0 if r['file'].endswith('.wav') else 1,r['flag']) for r in report))
    (build/'audio-report.json').write_text(json.dumps(report,indent=2)+'\n')
    return report
