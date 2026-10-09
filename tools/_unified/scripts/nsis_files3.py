#!/usr/bin/env python3
"""Resumable robust NSIS chunk walk, hunt Unity classes.jar."""
import lzma, os, struct, zipfile, io
SRC = r'C:\Users\Administrator\AppData\Local\Temp\UnityAndroid\[0]'
OUTDIR = r'D:\安卓逆向\NECR\work_necr\prod\nsis_files'
STATE = os.path.join(OUTDIR, '_pos.txt')
os.makedirs(OUTDIR, exist_ok=True)
data = open(SRC, 'rb').read()
end = len(data)
if os.path.exists(STATE):
    pos, i = [int(v, 0) for v in open(STATE).read().split()]
else:
    pos, i = 0x172A611, 35
found = []
n = 0
while pos + 9 < end and i < 100000:
    try:
        cookie = struct.unpack('<I', data[pos:pos + 4])[0]
        if cookie & 0x80000000:
            size = cookie & 0x7FFFFFFF
            if size < 6 or pos + 4 + size > end:
                print(f'chunk {i}: bad LZMA size {hex(size)} at {hex(pos)} — STOP')
                break
            props = data[pos + 4:pos + 9]
            dd = struct.unpack('<I', props[1:5])[0]
            dc = lzma.LZMADecompressor(format=lzma.FORMAT_RAW, filters=[
                {'id': lzma.FILTER_LZMA1, 'dict_size': dd, 'lc': 3, 'lp': 0, 'pb': 2}])
            x = dc.decompress(data[pos + 9:pos + 4 + size])
            pos = pos + 4 + size
        else:
            size = cookie
            if size < 0 or pos + 4 + size > end:
                print(f'chunk {i}: bad stored size {size} at {hex(pos)} — STOP')
                break
            x = data[pos + 4:pos + 4 + size]
            pos = pos + 4 + size
        if len(x) > 400000:
            head = x[:4]
            tag = ''
            if head[:2] == b'PK':
                try:
                    ns = zipfile.ZipFile(io.BytesIO(x)).namelist()
                    if any('com/unity3d/player' in q for q in ns):
                        tag = ' *** UNITY CLASSES ***'
                        open(os.path.join(OUTDIR, f'UNITY_{i:04d}.jar'), 'wb').write(x)
                        found.append(i)
                except Exception:
                    tag = ' zip-bad'
            print(f'chunk {i} out={len(x)} head={head.hex()} {tag}', flush=True)
        i += 1
        n += 1
        if n % 200 == 0:
            open(STATE, 'w').write(f'{hex(pos)} {i}')
    except Exception as e:
        print(f'chunk {i}: EXC {e} at {hex(pos)} — STOP')
        break
open(STATE, 'w').write(f'{hex(pos)} {i}')
print('DONE chunks=', i, 'pos=', hex(pos), 'end=', hex(end), 'FOUND=', found)
