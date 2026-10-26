import hashlib,json,math,struct,unittest,wave
from pathlib import Path

class SupplementalSounds(unittest.TestCase):
    def test_pcm_and_integrity(self):
        root=Path(__file__).resolve().parents[1]/'assets/sfx'
        manifest=json.loads((root/'manifest.json').read_text())
        self.assertEqual(len(manifest),7)
        total=0
        for entry in manifest:
            p=root/entry['file'];raw=p.read_bytes();total+=len(raw)
            self.assertEqual(hashlib.sha256(raw).hexdigest(),entry['sha256'])
            with wave.open(str(p)) as w:
                self.assertEqual((w.getnchannels(),w.getframerate(),w.getsampwidth()),(1,11025,2))
                self.assertLess(w.getnframes()/w.getframerate(),.9)
                b=w.readframes(w.getnframes());samples=struct.unpack('<%dh'%(len(b)//2),b)
                self.assertGreater(math.sqrt(sum(x*x for x in samples)/len(samples)),100,'Silent asset '+p.name)
                self.assertLess(max(abs(x) for x in samples),32767,'Clipped asset '+p.name)
        self.assertLess(total,100000)
        self.assertIn('CC BY 3.0',(root/'LICENSE.txt').read_text())
