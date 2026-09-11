#!/usr/bin/env python3
import struct
d = open('D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so', 'rb').read()
targets = {0x1219FFC: 'RandomGrade', 0x1219294: 'RandomGambleUnit'}
n = len(d) & ~3
for t, name in targets.items():
    print('callers of', name)
    out = []
    for a in range(0, n, 4):
        w = struct.unpack_from('<I', d, a)[0]
        if w & 0xFF000000 == 0xEB000000:
            off = w & 0xFFFFFF
            if off & 0x800000:
                off -= 0x1000000
            if a + 8 + off * 4 == t:
                out.append(hex(a))
    print(out if out else ['NONE'])
