#!/usr/bin/env python3
"""Generate independent PCM checksums with FFmpeg's SMAF demuxer/decoder.

Explicit regeneration only; ffmpeg is not required for normal builds or tests.
"""
import hashlib,json,lzma,shutil,struct,subprocess,tempfile,zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[2]
def main():
    ffmpeg=shutil.which('ffmpeg');assert ffmpeg,'ffmpeg required for fixture regeneration'
    output=[]
    with tempfile.TemporaryDirectory(prefix='dnf-audio-oracle-') as tmp,zipfile.ZipFile(ROOT.parent/'originals/0002E1A1.jar') as z:
        for name in sorted(n for n in z.namelist() if n.endswith('.snd')):
            raw=z.read(name);_,size,packed=struct.unpack_from('<HII',raw);data=lzma.decompress(raw[10:]) if packed<size else raw[10:];p=1
            for i in range(data[0]):
                length=struct.unpack_from('<I',data,p+1)[0];payload=data[p+5:p+5+length];p+=5+length
                if b'ATR' not in payload:continue
                source=Path(tmp)/'input.mmf';dest=Path(tmp)/'out.pcm';source.write_bytes(payload)
                subprocess.run([ffmpeg,'-v','error','-y','-i',str(source),'-f','s16le',str(dest)],check=True)
                pcm=dest.read_bytes();output.append(dict(resource=int(Path(name).stem),track=i,samples=len(pcm)//2,sha256=hashlib.sha256(pcm).hexdigest()))
    result=dict(decoder=subprocess.check_output([ffmpeg,'-version'],text=True).splitlines()[0],tracks=output)
    (ROOT/'tests/fixtures/audio-ffmpeg.json').write_text(json.dumps(result,indent=2)+'\n');print('Independent FFmpeg PCM tracks:',len(output))
if __name__=='__main__':main()
