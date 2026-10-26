"""Content-level validation independent of MIDP device support."""
import hashlib,json,struct,sys,wave
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'tools'))
import audio_assets,story_assets
def main():
    report=json.loads((ROOT/'build/audio-report.json').read_text());assert len(report)==46
    fixture=json.loads((ROOT/'tests/fixtures/audio-ffmpeg.json').read_text())
    for row in fixture['tracks']:
        with wave.open(str(ROOT/'resources/audio'/('%d-%d.wav'%(row['resource'],row['track'])))) as w:
            assert w.getnchannels()==1 and w.getsampwidth()==2 and w.getframerate()==8000
            data=w.readframes(w.getnframes());assert w.getnframes()==row['samples']
        assert hashlib.sha256(data).hexdigest()==row['sha256'],row
    midi_count=0
    for row in report:
        if row['file'].endswith('.wav'):
            with wave.open(str(ROOT/'resources/audio'/row['file'])) as w:assert w.getnframes()>0
            continue
        data=(ROOT/'resources/audio'/row['file']).read_bytes();assert data[:4]==b'MThd'
        assert struct.unpack_from('>IHHH',data,4)==(6,0,1,250)
        assert data[14:18]==b'MTrk' and struct.unpack_from('>I',data,18)[0]==len(data)-22
        r=audio_assets.Reader(data[22:]);time=0;notes=0
        while r.pos<len(r.data):
            time+=audio_assets.vlq(r);status=r.u8()
            if status==255:
                kind=r.u8();length=audio_assets.vlq(r);r.take(length)
                if kind==47:break
            else:
                body=r.take(1 if status&240 in (192,208) else 2);assert all(x<128 for x in body)
                if status&240==144:notes+=1
        r.end();assert notes==row['notes'] and time*4==row['duration_ms'];midi_count+=1
    stories=json.loads((ROOT/'build/story-report.json').read_text());assert len(stories['scenes'])==63
    assert stories['missing_glyphs']==[] and stories['diary_entries']==30
    translations=json.loads((ROOT/'localization/zh-CN.json').read_text())['strings']
    assert stories['translated_strings']==len(translations)==669
    assert all(not any('\uac00'<=c<='\ud7a3' for c in v) for v in translations.values())
    assert translations['마리']=='玛丽' and translations['바론']=='巴隆'
    for row in stories['scenes']:
        parsed=story_assets.ani((ROOT/'resources/original'/('%s.ani'%row['id'])).read_bytes())
        expected=struct.pack('>H',len(parsed['dialogue']))+b''.join(story_assets.utf(translations[t] if t else '') for pair in parsed['dialogue'] for t in pair)
        assert (ROOT/'resources/story/zh-CN'/('%s.text'%row['id'])).read_bytes()==expected
    diary=story_assets.Reader((ROOT/'resources/original/diary').read_bytes());pairs=[]
    for _ in range(diary.u16()):
        record=diary.take(882);pairs.append((story_assets.text(record[:22]),story_assets.text(record[22:872])))
    diary.end()
    expected=struct.pack('>H',len(pairs))+b''.join(story_assets.utf(translations[t]) for pair in pairs for t in pair)
    assert (ROOT/'resources/diary-zh-CN.bin').read_bytes()==expected
    chain=[];current=100
    by_id={row['id']:row for row in stories['scenes']}
    while True:
        row=by_id[current];chain.append(current)
        if row['exit']!=2:break
        current=999 if row['next']==1 else row['next']
    assert chain==[100,101,102,103,999,201,3,4] and row['exit']==1

    # Broken linked event data must not cause loops or read outside the event section.
    data=bytearray((ROOT/'resources/original/2.ani').read_bytes());obj=12+8*36;struct.pack_into('<H',data,obj+30,65535)
    try:story_assets.ani(data)
    except (ValueError,struct.error):pass
    else:raise AssertionError('invalid ANI pointer accepted')
    print('PASS content: %d FFmpeg PCM hashes, %d MIDI scores, 63 ANI layouts, all story/diary glyphs'%(len(fixture['tracks']),midi_count))
if __name__=='__main__':main()
