#!/usr/bin/env python3
from pathlib import Path
import os
import subprocess
import sys
import zipfile
import struct

root=Path(__file__).resolve().parent
sys.path.insert(0,str(root.parents[2]/'tools'))
from toolchain import load_toolchain, validate_toolchain, java_executable
toolchain=load_toolchain();validate_toolchain(toolchain,full=False)
jdk=toolchain['J2ME_JDK_HOME']
out=root/'build/tests';out.mkdir(parents=True,exist_ok=True)
subprocess.run([sys.executable,'-m','unittest','discover','-s',str(root/'tests'),'-p','test_*.py'],check=True)
source=[root/'src/bio'/n for n in ('GameState.java','Trig.java','RayRenderer.java')]
subprocess.run([str(java_executable(jdk,'javac')),'-encoding','UTF-8','-d',str(out)]+list(map(str,source))+[str(root/'tests/CoreTest.java')],check=True)
subprocess.run([str(java_executable(jdk,'java')),'-Djava.awt.headless=true','-cp',str(out),'bio.CoreTest',str(root/'resources'),str(root/'build/render-preview.png')],check=True)
original=list((root/'src/bio/original').glob('*.java'))
subprocess.run([str(java_executable(jdk,'javac')),'-encoding','UTF-8','-d',str(out)]+list(map(str,original))+[str(root/'tests/OriginalTest.java'),str(root/'tests/OriginalPreview.java'),str(root/'tests/OriginalSystemsTest.java')],check=True)
subprocess.run([str(java_executable(jdk,'java')),'-cp',str(out),'bio.original.OriginalTest',str(root/'tests/fixtures'),str(root/'build/extracted/mbx')],check=True)
subprocess.run([str(java_executable(jdk,'java')),'-cp',str(out),'bio.original.OriginalSystemsTest',str(root/'tests/fixtures'),str(root/'resources/original'),str(root.parent/'originals/1073745158/save.dat')],check=True)
subprocess.run([str(java_executable(jdk,'java')),'-Djava.awt.headless=true','-cp',str(out),'bio.original.OriginalPreview',str(root/'build/extracted/mbx'),str(root/'resources'),str(root/'build/original-preview.png')],check=True)
desktop=root/'build/desktop-tests';desktop.mkdir(exist_ok=True)
subprocess.run([str(java_executable(jdk,'javac')),'-encoding','UTF-8','-d',str(desktop)]+list(map(str,original))+list(map(str,(root/'tests/midp').rglob('*.java')))+[str(root/'src/bio/OriginalCanvas.java'),str(root/'src/bio/OriginalSaves.java'),str(root/'tests/DesktopCanvasTest.java')],check=True)
subprocess.run([str(java_executable(jdk,'java')),'-Djava.awt.headless=true','-cp',str(desktop)+os.pathsep+str(root/'resources'),'bio.DesktopCanvasTest',str(root/'build/ui-previews')],check=True)
jar=root/'dist/BiohazardDemo.jar';jad=(root/'dist/BiohazardDemo.jad').read_text()
assert 'MIDlet-Jar-Size: %d'%jar.stat().st_size in jad
with zipfile.ZipFile(jar) as z:
    classes=[n for n in z.namelist() if n.endswith('.class')]
    assert classes and all(n.startswith('bio/') for n in classes)
    for name in classes:
        data=z.read(name);assert struct.unpack_from('>H',data,6)[0]==45,(name,'not old Java bytecode')
    for name in ('bio/original/OriginalMotion.class','bio/original/OriginalVM.class','bio/OriginalCanvas.class'):
        assert b'StackMap' in z.read(name),(name,'CLDC StackMap absent')
    assert len([n for n in z.namelist() if n.endswith('.png')])==210
    assert len([n for n in z.namelist() if n.startswith('original/') and n.endswith('.bin')])==37
    assert b'OriginalCanvas' in z.read('bio/BioMIDlet.class')
print('PASS: JAR/JAD byte size, class version 45, CLDC StackMap presence, 210 PNGs, no bundled API classes')
