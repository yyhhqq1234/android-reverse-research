#!/usr/bin/env python3
"""Stream-decompress NSIS solid datablock to disk image."""
import lzma, os
SRC = r'C:\Users\Administrator\AppData\Local\Temp\UnityAndroid\[0]'
DST = r'D:\安卓逆向\NECR\work_necr\prod\nsis_solid.img'
START = 28 + 14449 + 9  # true datablock + stream data offset
dc = lzma.LZMADecompressor(format=lzma.FORMAT_RAW, filters=[
    {'id': lzma.FILTER_LZMA1, 'dict_size': 1 << 23, 'lc': 3, 'lp': 0, 'pb': 2}])
total = 0
with open(SRC, 'rb') as f, open(DST, 'wb') as o:
    f.seek(START)
    n = 0
    while True:
        blk = f.read(1 << 20)
        if not blk:
            break
        try:
            x = dc.decompress(blk)
        except Exception as e:
            print('ERR at', n, e, flush=True)
            break
        if x:
            o.write(x)
            total += len(x)
        n += 1
        if n % 40 == 0:
            print(f'{n}MB in, {total} out', flush=True)
        if dc.eof:
            print('EOS reached', flush=True)
            break
print('DONE total_out=', total, flush=True)
