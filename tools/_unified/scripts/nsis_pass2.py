#!/usr/bin/env python3
"""Second pass: check EVERY chunk's zip namelist (catch small classes.jar)."""
import lzma, os, struct, zipfile, io
SRC = r'C:\Users\Administrator\AppData\Local\Temp\UnityAndroid\[0]'
OUTDIR = r'D:\安卓逆向\NECR\work_necr\prod\nsis_files'
data = open(SRC, 'rb').read()
end = len(data)
pos, i = 28 + 14449, 0
found = []
while pos + 9 < end and i < 100000:
    cookie = struct.unpack('<I', data[pos:pos + 4])[0]
    if cookie & 0x80000000:
        size = cookie & 0x7FFFFFFF
        props = data[pos + 4:pos + 9]
        dd = struct.unpack('<I', props[1:5])[0]
        dc = lzma.LZMADecompressor(format=lzma.FORMAT_RAW, filters=[
            {'id': lzma.FILTER_LZMA1, 'dict_size': dd, 'lc': 3, 'lp': 0, 'pb': 2}])
        x = dc.decompress(data[pos + 9:pos + 4 + size])
        pos = pos + 4 + size
    else:
        size = cookie
        x = data[pos + 4:pos + 4 + size]
        pos = pos + 4 + size
    if len(x) > 20000 and x[:2] == b'PK' and x[2:4] != b'\x06\x06':
        try:
            ns = zipfile.ZipFile(io.BytesIO(x)).namelist()
            s = '\n'.join(ns[:8])
            if any('com/unity3d/player' in q for q in ns):
                open(os.path.join(OUTDIR, f'UNITY_{i:04d}.jar'), 'wb').write(x)
                found.append(i)
                print(f'chunk {i} *** UNITY *** size={len(x)}', flush=True)
            elif 'classes.dex' in s or 'UnityPlayerActivity' in s:
                print(f'chunk {i} dex-ish size={len(x)} {[q for q in ns if "ex" in q][:5]}', flush=True)
        except Exception:
            pass
    i += 1
    if i % 200 == 0:
        print(f'pass2 at chunk {i} pos={hex(pos)}', flush=True)
print('PASS2 DONE chunks=', i, 'FOUND=', found)
