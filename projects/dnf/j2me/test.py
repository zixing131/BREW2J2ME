#!/usr/bin/env python3
"""Tests use committed original ARM fixtures, never regenerate expectations."""
import os,subprocess,sys,zipfile,struct,hashlib,json
from pathlib import Path
ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT.parents[2]/'tools'))
from toolchain import load_toolchain,java_executable

def check_class(data):
    assert data[:4]==b'\xca\xfe\xba\xbe'
    minor,major=struct.unpack_from('>HH',data,4);assert major==45,(major,minor)
    # ProGuard -microedition must emit CLDC StackMap, not Java SE StackMapTable.
    assert b'StackMapTable' not in data
    return b'StackMap' in data

def main():
    tc=load_toolchain();jdk=tc['J2ME_JDK_HOME'];jar=ROOT/'dist/DnfGhostKnight.jar'
    with zipfile.ZipFile(jar) as z:
        names=z.namelist();classes=[n for n in names if n.endswith('.class')]
        assert all(n.startswith('dnf/') for n in classes)
        assert 'icon.png' in names and 'original/0.act' in names
        assert not any('app_info' in n or 'binary.mod' in n for n in names)
        assert sum(check_class(z.read(n)) for n in classes)>=10
        manifest=z.read('META-INF/MANIFEST.MF').decode('utf-8');assert 'dnf.DnfMIDlet' in manifest
    jad=(ROOT/'dist/DnfGhostKnight.jad').read_text();assert 'MIDlet-Jar-Size: '+str(jar.stat().st_size) in jad
    provenance=json.loads((ROOT/'tests/fixtures/provenance.json').read_text())
    assert hashlib.sha256((ROOT.parent/'originals/0002E1A1.jar').read_bytes()).hexdigest()==provenance['source_sha256']
    subprocess.run([sys.executable,str(ROOT/'tests/test_content.py')],check=True,cwd=ROOT)
    target=ROOT/'build/test-classes';target.mkdir(exist_ok=True)
    sources=[p for p in (ROOT/'src').rglob('*.java') if p.name not in ('DnfCanvas.java','DnfMIDlet.java','Audio.java','NativeText.java')]+[ROOT/'tests/PortTest.java',ROOT/'tests/StoryTest.java',ROOT/'tests/BattleTest.java',ROOT/'tests/CampaignTest.java',ROOT/'tests/GameplayTest.java',ROOT/'tests/CombatRulesTest.java']
    subprocess.run([str(java_executable(jdk,'javac')),'-encoding','UTF-8','-d',str(target)]+[str(p) for p in sources],check=True,cwd=ROOT)
    subprocess.run([str(java_executable(jdk,'java')),'-Djava.awt.headless=true','-cp',str(target)+os.pathsep+str(jar),'dnf.CombatRulesTest'],check=True,cwd=ROOT)
    subprocess.run([str(java_executable(jdk,'java')),'-Djava.awt.headless=true','-cp',str(target)+os.pathsep+str(jar),'dnf.PortTest'],check=True,cwd=ROOT)
    subprocess.run([str(java_executable(jdk,'java')),'-Djava.awt.headless=true','-cp',str(target)+os.pathsep+str(jar),'dnf.StoryTest'],check=True,cwd=ROOT)
    subprocess.run([str(java_executable(jdk,'java')),'-Djava.awt.headless=true','-cp',str(target)+os.pathsep+str(jar),'dnf.BattleTest'],check=True,cwd=ROOT)
    subprocess.run([str(java_executable(jdk,'java')),'-Djava.awt.headless=true','-cp',str(target)+os.pathsep+str(jar),'dnf.CampaignTest'],check=True,cwd=ROOT)
    subprocess.run([str(java_executable(jdk,'java')),'-Djava.awt.headless=true','-cp',str(target)+os.pathsep+str(jar),'dnf.GameplayTest'],check=True,cwd=ROOT)
    ui=ROOT/'build/ui-classes';ui.mkdir(exist_ok=True)
    subprocess.run([str(java_executable(jdk,'javac')),'-encoding','UTF-8','-d',str(ui)]+[str(p) for p in sorted((ROOT/'src').rglob('*.java'))+sorted((ROOT/'tests/midp').rglob('*.java'))+[ROOT/'tests/CanvasTest.java']],check=True,cwd=ROOT)
    subprocess.run([str(java_executable(jdk,'java')),'-Djava.awt.headless=true','-cp',str(ui)+os.pathsep+str(jar),'dnf.CanvasTest'],check=True,cwd=ROOT)
    print('Validated preverified JAR:',len(classes),'CLDC classes,',jar.stat().st_size,'bytes, SHA256',hashlib.sha256(jar.read_bytes()).hexdigest())
if __name__=='__main__':main()
