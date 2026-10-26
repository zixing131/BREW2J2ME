"""Fixed native catalog VAs; original ARM effect loader fixture is checked in tests."""
import zipfile

def extract(resources,source):
    with zipfile.ZipFile(source) as z: raw=z.read('binary.mod')
    def data(va,n): return raw[0xba244+va-0x1400000:0xba244+va-0x1400000+n]
    (resources/'skill-catalog.bin').write_bytes(data(0x1400563,30)+data(0x1400581,450)+data(0x140306d,75))
