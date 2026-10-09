#!/usr/bin/env python3
"""Full NSIS chunk walk: LZMA + stored, hunt Unity classes.jar by zip content."""
import lzma, os, struct, zipfile, io
SRC = r'C:\Users\Administrator\AppData\Local\Temp\UnityAndroid\[0]'
OUTDIR = r'D:\安卓逆向\NECR\work_necr\prod\nsis_files'
os.makedirs(OUTDIR, exist_ok=True)
data = open(SRC, 'rb').read()
pos = 0x172A611  # resume after bundletool chunk
end = len(data)
i = 35
found = []
while pos + 9 < end and i < 30000:
    cookie = struct.unpack('<I', data[pos:pos + 4])[0]
    if cookie & 0x80000000:
        # LZMA: total after cookie = cookie & 0x7fffffff
        size = (cookie & 0x7FFFFFFF)
        props = data[pos + 4:pos + 9]
        dd = struct.unpack('<I', props[1:5])[0]
        try:
            dc = lzma.LZMADecompressor(format=lzma.FORMAT_RAW, filters=[
                {'id': lzma.FILTER_LZMA1, 'dict_size': dd, 'lc': 3, 'lp': 0, 'pb': 2}])
            x = dc.decompress(data[pos + 9:pos + 4 + size])
        except Exception as e:
            print(f'chunk {i} LZMA FAIL {hex(pos)} {e}')
            break
        pos = pos + 4 + size
    else:
        size = cookie
        x = data[pos + 4:pos + 4 + size]
        pos = pos + 4 + size
    if len(x) > 400000:
        head = x[:4]
        tag = ''
        if head[:2] == b'PK':
            try:
                ns = zipfile.ZipFile(io.BytesIO(x)).namelist()
                if any('com/unity3d/player' in n for n in ns):
                    tag = ' *** UNITY CLASSES ***'
                    open(os.path.join(OUTDIR, f'UNITY_{i:04d}.jar'), 'wb').write(x)
                    found.append(i)
                elif any('UnityPlayer' in n or 'unity' in n.lower() for n in ns[:50]):
                    tag = ' unity-ish: ' + str(ns[:3])
            except Exception as e:
                tag = ' zip-parse-fail'
        print(f'chunk {i} stored={not bool(cookie & 0x80000000)} out={len(x)} head={head.hex()} {tag}', flush=True)
    i += 1
print('DONE chunks=', i, 'pos=', hex(pos), 'end=', hex(end), 'FOUND=', found)
