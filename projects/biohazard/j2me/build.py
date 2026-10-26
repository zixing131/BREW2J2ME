#!/usr/bin/env python3
"""Reproducible local build; override J2ME_JDK_HOME, J2ME_API_HOME, PROGUARD_JAR."""
import os
from pathlib import Path
import subprocess
import sys
import zipfile
import shutil

ROOT=Path(__file__).resolve().parent
BUILD=ROOT/'build'
DIST=ROOT/'dist'
sys.path.insert(0,str(ROOT.parents[2]/'tools'))
from toolchain import load_toolchain, validate_toolchain, java_executable
TOOLCHAIN=load_toolchain()
JDK=TOOLCHAIN['J2ME_JDK_HOME']
API=TOOLCHAIN['J2ME_API_HOME']
PROGUARD=TOOLCHAIN['PROGUARD_JAR']

def run(args):
    subprocess.run([str(x) for x in args],cwd=ROOT,check=True)

def main():
    validate_toolchain(TOOLCHAIN)
    BUILD.mkdir(exist_ok=True);DIST.mkdir(exist_ok=True)
    classes=BUILD/'classes'
    classes.mkdir(exist_ok=True)
    for p in classes.rglob('*.class'):p.unlink()
    run([sys.executable,ROOT/'tools/extract_assets.py'])
    original=ROOT/'resources/original';original.mkdir(exist_ok=True)
    for p in (BUILD/'extracted/mbx').glob('*.bin'):
        if p.stem not in ('30000','30001'):shutil.copyfile(p,original/p.name)
    cp=str(API/'cldc11.jar')+os.pathsep+str(API/'midp21.jar')
    run([java_executable(JDK,'javac'),'-encoding','UTF-8','-source','1.3','-target','1.1','-bootclasspath',cp,'-d',classes]+sorted((ROOT/'src').rglob('*.java')))
    manifest=('Manifest-Version: 1.0\r\nMIDlet-Name: Biohazard J2ME Port\r\nMIDlet-Version: 0.3.8\r\n'
        'MIDlet-Vendor: BREW Preservation Study\r\nMIDlet-1: 3D生化启示录,/icon.png,bio.BioMIDlet\r\nMIDlet-Icon: /icon.png\r\n'
        'MicroEdition-Configuration: CLDC-1.1\r\nMicroEdition-Profile: MIDP-2.0\r\n\r\n')
    source=BUILD/'unverified.jar'
    with zipfile.ZipFile(source,'w',zipfile.ZIP_DEFLATED) as z:
        z.writestr('META-INF/MANIFEST.MF',manifest)
        for base in (classes,ROOT/'resources'):
            for p in sorted(base.rglob('*')):
                if p.is_file():z.write(p,p.relative_to(base).as_posix())
    out=DIST/'BiohazardDemo.jar'
    # Do not suppress warnings: API mismatches must fail the build.
    run([java_executable(JDK,'java'),'-jar',PROGUARD,'-injars',source,'-outjars',out,
         '-libraryjars',API/'cldc11.jar','-libraryjars',str(API/'midp21.jar')+'(!java/**,!javax/microedition/io/**)',
         '-microedition','-dontshrink','-dontoptimize','-dontobfuscate',
         '-keep','public class bio.BioMIDlet { public <init>(); }'])
    jad=manifest.replace('Manifest-Version: 1.0\r\n','').rstrip()+'\r\nMIDlet-Jar-URL: BiohazardDemo.jar\r\nMIDlet-Jar-Size: '+str(out.stat().st_size)+'\r\n'
    (DIST/'BiohazardDemo.jad').write_bytes(jad.encode('utf-8'))
    print('Built %s (%d bytes), CLDC preverified' % (out,out.stat().st_size))

if __name__=='__main__':main()
