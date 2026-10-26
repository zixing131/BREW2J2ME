import importlib.util
from pathlib import Path
import struct
import unittest

ROOT=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('extract_assets',ROOT/'tools/extract_assets.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)

class AssetTest(unittest.TestCase):
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
    def test_special_effect_explicitly_unresolved(self):
        self.assertIsNone(m.decode_bitmap(bytes(4),1,1,0x11,0))

if __name__=='__main__':unittest.main()
