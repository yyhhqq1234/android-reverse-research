#!/usr/bin/env python3
"""G7: grant random unit from top pool (52-56) via cave at 0xB42F10."""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
SITE = 0x121851C
CAVE = 0xB42F10
RANGE = 0x12896E0  # Random.Range(int,int)
ORIG = bytes.fromhex('105094e5')  # ldr r5,[r4,#0x10] (grant shown slot id)


def bl_encode(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, hex(off)
    return struct.pack('<I', 0xEB000000 | (off & 0xFFFFFF))


d = bytearray(open(SO, 'rb').read())

# 1. site -> bl CAVE (or revert to ORIG with arg 'revert')
cur = d[SITE:SITE + 4]
want_bl = bl_encode(SITE, CAVE)
print('site:', cur.hex(), '-> bl')
if len(sys.argv) > 1 and sys.argv[1] == 'revert':
    assert cur == want_bl, cur.hex()
    d[SITE:SITE + 4] = ORIG
    open(SO, 'wb').write(d)
    print('P8 reverted: grant shown slot id')
    sys.exit(0)
if cur == want_bl:
    print('  site already applied, skip')
else:
    assert cur.hex() in ('105094e5', '3450a0e3'), cur.hex()
    d[SITE:SITE + 4] = want_bl

# 2. cave body (word constants packed programmatically - NO hand hex)
cave = bytearray()
cave += struct.pack('<I', 0xE92D40D0)   # push {r4,r6,r7,lr}
cave += struct.pack('<I', 0xE3A00001)   # mov r0, #1 (full pool 1-56)
cave += struct.pack('<I', 0xE3A01039)   # mov r1, #57
cave += struct.pack('<I', 0xE3A02000)   # mov r2, #0
cave += bl_encode(CAVE + len(cave), RANGE)  # bl Random.Range
cave += struct.pack('<I', 0xE1A05000)   # mov r5, r0
cave += struct.pack('<I', 0xE8BD80D0)   # pop {r4,r6,r7,pc}
print('cave orig:', d[CAVE:CAVE + len(cave)].hex())
if d[CAVE:CAVE + len(cave)] == cave:
    print('  cave already applied, skip')
else:
    d[CAVE:CAVE + len(cave)] = cave

open(SO, 'wb').write(d)
print('P8 (random top pool) applied')
