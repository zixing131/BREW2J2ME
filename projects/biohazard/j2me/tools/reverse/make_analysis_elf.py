"""Wrap the unmodified decompressed ARM image for analysis (VA == raw offset)."""
from pathlib import Path
import struct
root=Path(__file__).resolve().parents[3]
raw=(root/'j2me/build/extracted/game-arm.bin').read_bytes()
header=struct.pack('<16sHHIIIIIHHHHHH',b'\x7fELF'+bytes([1,1,1])+bytes(9),2,40,1,12,52,0,0x05000000,52,32,1,0,0,0)
segment=struct.pack('<8I',1,4096,0,0,len(raw),len(raw),7,4096)
out=root/'docs/reverse/game-analysis.elf'
out.write_bytes((header+segment).ljust(4096,b'\0')+raw)
print(out)
