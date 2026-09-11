#!/usr/bin/env python3
import struct
import sys

d = open('D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so', 'rb').read()
n = len(d) & ~3
targets = [int(x, 16) for x in sys.argv[1:]]
hits = {t: [] for t in targets}
for a in range(0, n, 4):
    w = struct.unpack_from('<I', d, a)[0]
    if (w >> 24) == 0xEB:
        off = w & 0xFFFFFF
        if off & 0x800000:
            off -= 0x1000000
        t = a + 8 + off * 4
        if t in hits:
            hits[t].append(hex(a))
for t in targets:
    print(hex(t), hits[t] if hits[t] else ['NONE'])
