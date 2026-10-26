#!/usr/bin/env python3
"""Read-only BREW importer. PNG encoder uses only Python's standard library."""
import argparse
import gzip
import hashlib
import json
from pathlib import Path
import struct
import zlib

ROOT = Path(__file__).resolve().parents[2]


def u32(data, offset=0):
    return struct.unpack_from('<I', data, offset)[0]


def png(width, height, rgba):
    def chunk(kind, data):
        return struct.pack('>I', len(data)) + kind + data + struct.pack('>I', zlib.crc32(kind + data))
    rows = b''.join(b'\0' + rgba[y * width * 4:(y + 1) * width * 4] for y in range(height))
    return (b'\x89PNG\r\n\x1a\n' + chunk(b'IHDR', struct.pack('>2I5B', width, height, 8, 6, 0, 0, 0))
            + chunk(b'IDAT', zlib.compress(rows, 9)) + chunk(b'IEND', b''))


def decode_bitmap(raw, width, height, flags, color_key):
    if not 0 < width <= 4096 or not 0 < height <= 4096:
        raise ValueError('invalid bitmap dimensions')
    if raw[:4 * height] != bytes(4 * height):
        raise ValueError('unexpected nonzero row workspace')
    if flags == 0x11:
        return None  # Alpha masks are exported separately, never treated as color images.
    if flags not in (0, 0x10, 0x20, 0x30):
        raise ValueError('unrecognized bitmap flags')
    if flags & 0x10:
        left = raw[4 * height:5 * height]
        count = raw[5 * height:6 * height]
        cursor = (7 * height + 1) & ~1  # RGB565 must begin at an even offset.
    else:
        left, count, cursor = [0] * height, [width] * height, 4 * height
    rgba = bytearray(width * height * 4)
    for y in range(height):
        if left[y] + count[y] > width:
            raise ValueError('row span exceeds width')
        for x in range(left[y], left[y] + count[y]):
            value = struct.unpack_from('<H', raw, cursor)[0]
            cursor += 2
            start = (y * width + x) * 4
            rgba[start:start + 4] = bytes(((value >> 11) * 255 // 31,
                ((value >> 5) & 63) * 255 // 63, (value & 31) * 255 // 31,
                0 if value == color_key else 255))
    if len(raw) != (cursor + 3) & ~3:
        raise ValueError('bitmap payload does not end at the expected alignment')
    return png(width, height, rgba)


def alpha_mask(raw, width, height):
    """0x11: row pointers workspace, left/count bytes, then 0..32 opacity samples."""
    if len(raw) < 6 * height or raw[:4 * height] != bytes(4 * height):
        raise ValueError('invalid alpha workspace')
    left, counts = raw[4*height:5*height], raw[5*height:6*height]
    if any(x+n > width for x,n in zip(left,counts)):
        raise ValueError('alpha span exceeds width')
    end = 6*height + sum(counts)
    if len(raw) != (end+3)&~3 or any(x > 32 for x in raw[6*height:end]):
        raise ValueError('invalid alpha samples')
    return struct.pack('<HH', width, height) + raw


def extract(source, output, raw_output):
    images, audio, effects = output / 'images', output / 'audio', output / 'effects'
    for path in (images, audio, effects, raw_output / 'mbx', raw_output / 'images'):
        path.mkdir(parents=True, exist_ok=True)
    manifest = {'sources': {}, 'images': [], 'resources': []}
    for name in ('bin.dat', 'map.hkm', 'mbxres.bin', 'save.dat', 'shenghua.mod'):
        data = (source / name).read_bytes()
        manifest['sources'][name] = {'size': len(data), 'sha256': hashlib.sha256(data).hexdigest()}
    data = (source / 'bin.dat').read_bytes()
    if u32(data) != len(data) - 4:
        raise ValueError('bin.dat size mismatch')
    (raw_output / 'game-arm.bin').write_bytes(gzip.decompress(data[4:]))
    data = (source / 'mbxres.bin').read_bytes()
    n = u32(data)
    ids = struct.unpack_from('<%dI' % n, data, 4)
    ends = struct.unpack_from('<%dI' % n, data, 4 + n * 4)
    start = 4 + 8 * n
    for rid, end in zip(ids, ends):
        if not start < end <= len(data):
            raise ValueError('invalid mbx bounds')
        raw = gzip.decompress(data[start:end])
        (raw_output / 'mbx' / ('%d.bin' % rid)).write_bytes(raw)
        entry = {'id': rid, 'offset': start, 'end': end, 'decoded_bytes': len(raw)}
        if raw.startswith(b'MThd'):
            (audio / ('%d.mid' % rid)).write_bytes(raw)
            entry['format'] = 'midi'
        if 52000 <= rid <= 52015:
            entry['candidate_dimensions'] = struct.unpack_from('<HH', raw)
        manifest['resources'].append(entry)
        start = end
    if start != len(data):
        raise ValueError('unaccounted mbx tail')
    data = (source / 'map.hkm').read_bytes()
    n = u32(data)
    offsets = struct.unpack_from('<%dI' % n, data, 4)
    ids = struct.unpack_from('<%dI' % n, data, 4 + n * 4)
    if offsets[0] != 4 + 8 * n or len(set(ids)) != n:
        raise ValueError('invalid map index')
    for i, (rid, start) in enumerate(zip(ids, offsets)):
        end = offsets[i + 1] if i + 1 < n else len(data)
        width, height, flags, key, reserved, length = struct.unpack_from('<HHHHII', data, start)
        if reserved != 0 or not 0 <= end - (start + 16 + length) <= 3:
            raise ValueError('invalid image record')
        raw = gzip.decompress(data[start + 16:start + 16 + length])
        (raw_output / 'images' / ('%d.bin' % rid)).write_bytes(raw)
        encoded = decode_bitmap(raw, width, height, flags, key)
        if flags == 0x11:
            (effects / ('%d.bin' % rid)).write_bytes(alpha_mask(raw, width, height))
        if encoded:
            (images / ('%d.png' % rid)).write_bytes(encoded)
        manifest['images'].append({'id': rid, 'offset': start, 'width': width, 'height': height,
            'flags': flags, 'color_key': key, 'gzip_bytes': length, 'decoded_bytes': len(raw),
            'status': 'png' if encoded else 'alpha-mask'})
    (output / 'image-index.txt').write_text('\n'.join(str(x['id']) for x in manifest['images'] if x['status'] == 'png') + '\n')
    (output / 'NOTICE.txt').write_text('原作版权所有：北京魔百创娱。资源提取：B站阿拉雷叔；手机提供：B站圣莫尼卡；技术支持：Youtube Krz One。\n本目录图像/音乐由用户提供的 BREW 文件转换，不是新绘制素材。\n', encoding='utf-8')
    (raw_output / 'manifest.json').write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + '\n')
    converted = sum(x['status'] == 'png' for x in manifest['images'])
    print('%d PNGs + %d alpha masks; %d mbx records; ARM image extracted' % (converted, n-converted, len(manifest['resources'])))
    return manifest


if __name__ == '__main__':
    p = argparse.ArgumentParser()
    p.add_argument('--source', type=Path, default=ROOT / 'originals/1073745158')
    p.add_argument('--output', type=Path, default=ROOT / 'j2me/resources')
    p.add_argument('--raw-output', type=Path, default=ROOT / 'j2me/build/extracted')
    args = p.parse_args()
    extract(args.source, args.output, args.raw_output)
