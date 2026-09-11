#!/usr/bin/env python3
"""P9: CalculateAB zero-result -> 100 (all 5 affix lines show)."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
SITE = 0x99C518   # bx lr at CalculateAB exit
CAVE2 = 0xB42F2C


def bl_encode(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, hex(off)
    return struct.pack('<I', 0xEB000000 | (off & 0xFFFFFF))


d = bytearray(open(SO, 'rb').read())

cur = d[SITE:SITE + 4]
want = bl_encode(SITE, CAVE2)
print('site:', cur.hex())
if cur == want:
    print('  site already applied, skip')
else:
    assert cur.hex() == '1eff2fe1', cur.hex()
    d[SITE:SITE + 4] = want

cave = struct.pack('<III', 0xE3500000, 0x03A00064, 0xE12FFF1E)  # cmp r0,#0; moveq r0,#100; bx lr
print('cave2 orig:', d[CAVE2:CAVE2 + 12].hex())
if d[CAVE2:CAVE2 + 12] == cave:
    print('  cave2 already applied, skip')
else:
    d[CAVE2:CAVE2 + 12] = cave

open(SO, 'wb').write(d)
print('P9 (affix floor) applied')
