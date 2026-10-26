import importlib.util
from pathlib import Path
import struct
import unittest
import re
import zlib

ROOT=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('extract_assets',ROOT/'tools/extract_assets.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)

class AssetTest(unittest.TestCase):
    def test_original_mif_icon(self):
        mif=(ROOT.parent/'originals/1073745158.mif').read_bytes()
        encoded=m.mif_icon(mif)
        self.assertEqual(struct.unpack_from('>II',encoded,16),(26,26))
        at=8;compressed=b''
        while at<len(encoded):
            size=struct.unpack_from('>I',encoded,at)[0]
            if encoded[at+4:at+8]==b'IDAT':compressed+=encoded[at+8:at+8+size]
            at+=size+12
        rows=zlib.decompress(compressed)
        self.assertEqual(len(rows),26*105)
        # Bottom-up BMP with padded rows; compare top-left and bottom-right to the source.
        pixels=140+struct.unpack_from('<I',mif,150)[0]
        for x,y in [(0,0),(25,25),(13,12)]:
            b,g,r=mif[pixels+(25-y)*80+3*x:pixels+(25-y)*80+3*x+3]
            self.assertEqual(rows[y*105+1+4*x:y*105+5+4*x],bytes((r,g,b,255)))
        with self.assertRaises(ValueError):m.mif_icon(mif[:200])

    def test_chinese_ui_glyph_coverage(self):
        raw=(ROOT/'resources/original/10000.bin').read_bytes();count=struct.unpack_from('<I',raw)[0]
        glyphs={struct.unpack_from('<H',raw,516+4*i)[0] for i in range(count)}
        for name in ('src/bio/OriginalCanvas.java','src/bio/OriginalSaves.java','src/bio/original/OriginalPlayer.java'):
            strings=re.findall(r'"(?:[^"\\]|\\.)*"',(ROOT/name).read_text())
            missing={c for s in strings for c in s if ord(c)>127 and ord(c) not in glyphs}
            self.assertFalse(missing,(name,missing))

    def test_rgb565_and_key(self):
        raw=bytes(4)+struct.pack('<HH',0xf800,0xf81f)
        data=m.decode_bitmap(raw,2,1,0,0xf81f)
        self.assertTrue(data.startswith(b'\x89PNG'))
        import zlib
        p=8
        while p<len(data):
            n=struct.unpack_from('>I',data,p)[0]
            if data[p+4:p+8]==b'IDAT':
                rgba=zlib.decompress(data[p+8:p+8+n]);break
            p+=n+12
        self.assertEqual(rgba,b'\0\xff\0\0\xff\xff\0\xff\0')
    def test_odd_height_alignment(self):
        # 4-byte workspace; left=1, count=1, flag=0; one padding byte; one pixel.
        raw=bytes(4)+bytes([1,1,0,0])+struct.pack('<H',0x07e0)+bytes(2)
        self.assertIsNotNone(m.decode_bitmap(raw,3,1,0x10,0xf81f))
    def test_bad_span(self):
        raw=bytes(4)+bytes([2,2,0,0])+bytes(4)
        with self.assertRaises(ValueError):m.decode_bitmap(raw,3,1,0x10,0xf81f)
    def test_unknown_format_not_silent(self):
        with self.assertRaises(ValueError):m.decode_bitmap(bytes(8),1,1,0x42,0)
    def test_alpha_mask_is_not_color_bitmap(self):
        self.assertIsNone(m.decode_bitmap(bytes(4),1,1,0x11,0))
        raw=bytes(4)+bytes([0,1,31,0])
        self.assertEqual(m.alpha_mask(raw,1,1),struct.pack('<HH',1,1)+raw)
        with self.assertRaises(ValueError):m.alpha_mask(bytes(4)+bytes([0,1,33,0]),1,1)

if __name__=='__main__':unittest.main()
