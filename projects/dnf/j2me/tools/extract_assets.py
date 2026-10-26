#!/usr/bin/env python3
"""Rebuild decoded assets from the untouched WIPI ZIP; never read installer metadata."""
import hashlib,json,lzma,shutil,struct,zipfile
from pathlib import Path
import formats
import audio_assets,story_assets
ROOT=Path(__file__).resolve().parents[1]
SOURCE=ROOT.parent/'originals/0002E1A1.jar'
SHA256='4d76f21a698055e0f6e702910e1915d5e1fb9497549ce3e34c3e03c26841881d'

def main():
    raw=SOURCE.read_bytes()
    if hashlib.sha256(raw).hexdigest()!=SHA256: raise ValueError('Unexpected original archive SHA256')
    output=ROOT/'resources/original'; output.mkdir(parents=True,exist_ok=True)
    report={}; exceptions=[]
    parsers={'dat':formats.dat,'fra':formats.fra,'act':formats.act,'for':formats.grid,'fob':formats.grid,'bac':formats.bac,'fie':formats.fie}
    with zipfile.ZipFile(SOURCE) as z:
        for name in sorted(z.namelist()):
            if not name.startswith('res/') or name.endswith('/'): continue
            leaf=name[4:]
            if '/' in leaf or '\\' in leaf or leaf in ('.','..'): raise ValueError('Invalid resource path')
            data=z.read(name)
            version,unpacked,packed=struct.unpack_from('<HII',data)
            if len(data)!=packed+10: raise ValueError('Container length: '+name)
            data=lzma.decompress(data[10:]) if packed<unpacked else data[10:]
            if len(data)!=unpacked: raise ValueError('Decoded length: '+name)
            ext=Path(leaf).suffix[1:];report[ext]=report.get(ext,0)+1
            if ext in parsers:
                if leaf=='30037.fra':
                    # Native loader reads 0 groups, ignoring 32 trailing bytes. Preserve, do not repair.
                    assert data.hex()=='0101557555000106000000000000010000000002000000000000000100010000010002000001'
                    exceptions.append({'file':leaf,'reason':'native group count is zero; 32 unconsumed bytes','sha256':hashlib.sha256(data).hexdigest()})
                else: parsers[ext](data)
            (output/leaf).write_bytes(data)
    # Only the game image, never app_info or installation/account records.
    shutil.copyfile(ROOT.parent/'originals/middle.png',ROOT/'resources/icon.png')
    maps=sorted(int(p.stem) for p in output.glob('*.fie'))
    (ROOT/'resources/maps.bin').write_bytes(struct.pack('>H',len(maps))+b''.join(struct.pack('>H',n) for n in maps))
    (ROOT/'build').mkdir(exist_ok=True)
    sounds=audio_assets.extract(ROOT/'resources',ROOT/'build')
    stories=story_assets.extract(ROOT/'resources',ROOT/'build',SOURCE)
    (ROOT/'build/asset-report.json').write_text(json.dumps({'containers':sum(report.values()),'types':report,'exceptions':exceptions},ensure_ascii=False,indent=2)+'\n')
    print('Decoded %d resources; validated DAT/ACT/FRA/FIE/BAC/FOR/FOB, one documented source anomaly'%sum(report.values()))
    print('Converted %d original audio tracks; parsed %d story timelines and original bitmap font'%(len(sounds),len(stories)))
if __name__=='__main__':main()
