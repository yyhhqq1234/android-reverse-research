#!/usr/bin/env python3
"""Iterate NSIS per-file LZMA chunks (incremental feed, no O(n2))."""
import lzma, os, struct
SRC = r'C:\Users\Administrator\AppData\Local\Temp\UnityAndroid\[0]'
OUTDIR = r'D:\安卓逆向\NECR\work_necr\prod\nsis_files'
os.makedirs(OUTDIR, exist_ok=True)
f = open(SRC, 'rb')
f.seek(28 + 14449)
pos = 28 + 14449
files = []
i = 0
pending = b''
eof_src = False
def need(n):
    global pending, eof_src
    while len(pending) < n and not eof_src:
        b = f.read(1 << 20)
        if not b:
            eof_src = True
            break
        pending += b
    r = pending[:n]
    pending = pending[n:]
    return r
while i < 20000:
    h = need(9)
    if len(h) < 9:
        print('SRC END at chunk', i)
        break
    cookie = struct.unpack('<I', h[:4])[0]
    props = h[4:9]
    if props[0] != 0x5D:
        print(f'chunk {i} at {hex(pos)}: not LZMA (cookie={hex(cookie)} props={props.hex()}) — STOP')
        break
    dd = struct.unpack('<I', props[1:5])[0]
    try:
        dc = lzma.LZMADecompressor(format=lzma.FORMAT_RAW, filters=[
            {'id': lzma.FILTER_LZMA1, 'dict_size': dd, 'lc': 3, 'lp': 0, 'pb': 2}])
    except Exception:
        print(f'chunk {i}: bad dict {hex(dd)} — STOP')
        break
    out = []
    total = 0
    while not dc.eof:
        b = need(1 << 20)
        if not b:
            print(f'chunk {i}: truncated src')
            break
        try:
            x = dc.decompress(b)
        except Exception as e:
            print(f'chunk {i}: corrupt {e}')
            break
        if x:
            out.append(x)
            total += len(x)
    leftover = len(dc.unused_data) if dc.eof else 0
    pending = dc.unused_data + pending if dc.eof else pending
    consumed = 9  # header; data consumed tracked via pending math below
    files.append((i, pos, total))
    if total > 300000 or i < 6:
        head = out[0][:12].hex() if out else 'empty'
        print(f'chunk {i} at {hex(pos)} out={total} head={head}', flush=True)
    if total > 800000:
        open(os.path.join(OUTDIR, f'f{i:04d}_{total}.bin'), 'wb').write(b''.join(out))
    # advance pos: 9 + (data bytes consumed) = recompute via file position math
    pos = f.tell() - len(pending)
    i += 1
print('CHUNKS=', i, 'final pos=', hex(pos))
open(os.path.join(OUTDIR, '_index.txt'), 'w').write('\n'.join(f'{a} {hex(b)} {c}' for a, b, c in files))
