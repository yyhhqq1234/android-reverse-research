#!/usr/bin/env python3
"""P10: force all 5 plus-stat rolls to 0 (top bucket) at grant."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
SITES = (0x998CAC, 0x998D0C, 0x998D40, 0x998D74, 0x998DA8)
RANGE = 0x12896E0
MOV_R0_0 = struct.pack('<I', 0xE3A00000)


def bl_bytes(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, hex(off)
    return struct.pack('<I', 0xEB000000 | (off & 0xFFFFFF))


d = bytearray(open(SO, 'rb').read())
for s in SITES:
    cur = bytes(d[s:s + 4])
    print(hex(s), cur.hex())
    if cur == MOV_R0_0:
        print('  already applied, skip')
        continue
    assert cur == bl_bytes(s, RANGE), cur.hex()
    d[s:s + 4] = MOV_R0_0
open(SO, 'wb').write(d)
print('P10 (plus max) applied')
