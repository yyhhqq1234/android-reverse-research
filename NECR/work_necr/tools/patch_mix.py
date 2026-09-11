#!/usr/bin/env python3
import sys
SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = bytearray(open(SO, 'rb').read())
o = 0x1224CD8
print('orig:', d[o:o + 4].hex())
assert d[o:o + 4] == bytes.fromhex('5e0000aa'), 'pattern mismatch'
d[o:o + 4] = bytes.fromhex('5e0000ea')  # bge -> b (always success)
open(SO, 'wb').write(d)
print('P5 applied: MixtheUnits always success')
