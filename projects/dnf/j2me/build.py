#!/usr/bin/env python3
"""DNF WIPI -> CLDC 1.1 / MIDP 2.0, including mandatory CLDC preverification."""
import os,shutil,subprocess,sys,zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT.parents[2]/'tools'))
from toolchain import load_toolchain,validate_toolchain,java_executable
VERSION='0.5.0'
def main():
    tc=load_toolchain();validate_toolchain(tc);jdk,api=tc['J2ME_JDK_HOME'],tc['J2ME_API_HOME']
    def run(args):subprocess.run([str(x) for x in args],cwd=ROOT,check=True)
    build=ROOT/'build';dist=ROOT/'dist';classes=build/'classes';dist.mkdir(exist_ok=True);classes.mkdir(parents=True,exist_ok=True)
    for p in classes.rglob('*.class'):p.unlink()
    run([sys.executable,ROOT/'tools/extract_assets.py'])
    run([java_executable(jdk,'javac'),'-encoding','UTF-8','-source','1.3','-target','1.1','-bootclasspath',os.pathsep.join(str(api/n) for n in ('cldc11.jar','midp21.jar')),'-d',classes]+sorted((ROOT/'src').rglob('*.java')))
    manifest=('Manifest-Version: 1.0\r\nMIDlet-Name: DNF Ghost Knight Port\r\nMIDlet-Version: '+VERSION+'\r\nMIDlet-Vendor: WIPI Preservation Study\r\nMIDlet-1: DNF Ghost Knight,/icon.png,dnf.DnfMIDlet\r\nMIDlet-Icon: /icon.png\r\nMicroEdition-Configuration: CLDC-1.1\r\nMicroEdition-Profile: MIDP-2.0\r\n\r\n')
    with zipfile.ZipFile(build/'unverified.jar','w',zipfile.ZIP_DEFLATED) as z:
        z.writestr('META-INF/MANIFEST.MF',manifest)
        for base in (classes,ROOT/'resources'):
            for p in sorted(base.rglob('*')):
                if p.is_file():z.write(p,p.relative_to(base).as_posix())
    out=dist/'DnfGhostKnight.jar'
    run([java_executable(jdk,'java'),'-jar',tc['PROGUARD_JAR'],'-injars',build/'unverified.jar','-outjars',out,
         '-libraryjars',api/'cldc11.jar','-libraryjars',str(api/'midp21.jar')+'(!java/**,!javax/microedition/io/**)',
         '-microedition','-dontshrink','-dontoptimize','-dontobfuscate','-keep','public class dnf.DnfMIDlet { public <init>(); }'])
    jad=manifest.replace('Manifest-Version: 1.0\r\n','').rstrip()+'\r\nMIDlet-Jar-URL: '+out.name+'\r\nMIDlet-Jar-Size: '+str(out.stat().st_size)+'\r\n'
    (dist/'DnfGhostKnight.jad').write_bytes(jad.encode('utf-8'))
    print('Built CLDC preverified',out,out.stat().st_size,'bytes')
if __name__=='__main__':main()
