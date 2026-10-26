#!/usr/bin/env python3
"""Optional asset regeneration, NOT part of builds. Inputs: downloaded OGA archives.
Usage: python3 tools/prepare_sfx.py build/sfx-source (requires ffmpeg).
"""
from pathlib import Path
import hashlib,json,subprocess,sys,zipfile
root=Path(__file__).resolve().parents[1];source=Path(sys.argv[1]);out=root/'assets/sfx';out.mkdir(parents=True,exist_ok=True)
clips=[('guns.zip','sounds/cz.wav','pistol',.245,.5),('guns.zip','sounds/sks.wav','rifle',.345,.45),('guns.zip','sounds/shotty.wav','shotgun',.08,.6),('guns.zip','sounds/mosin.wav','sniper',.445,.7),('zombies.zip','zombies/zombie-1.wav','zombie-attack',0,.854),('zombies.zip','zombies/zombie-5.wav','zombie-hit',0,.5),('zombies.zip','zombies/zombie-24.wav','zombie-death',0,.333)]
manifest=[]
for archive,member,name,start,duration in clips:
 with zipfile.ZipFile(source/archive) as z:raw=z.read(member)
 original=source/(name+'-original.wav');original.write_bytes(raw)
 dest=out/(name+'.wav');filters='volume=0.7,highpass=f=90,lowpass=f=5000,afade=t=in:d=0.003,afade=t=out:st=%.3f:d=0.025'%(duration-.025)
 subprocess.run(['ffmpeg','-v','error','-y','-ss',str(start),'-i',str(original),'-t',str(duration),'-af',filters,'-ar','11025','-ac','1','-c:a','pcm_s16le','-map_metadata','-1',str(dest)],check=True)
 manifest.append(dict(file=dest.name,archive=archive,member=member,source_sha256=hashlib.sha256(raw).hexdigest(),start=start,seconds=duration,sha256=hashlib.sha256(dest.read_bytes()).hexdigest()))
(out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Prepared',len(manifest),'mono PCM16 effects:',sum((out/m['file']).stat().st_size for m in manifest),'bytes')
