#!/usr/bin/env python3
"""M2: cost gates - refresh(idx3) + upgrade(idx4) in dead-twin region."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
READER = 0xB42FC0
GATE_R = 0x1219FFC
GATE_U = 0x121A01C
SUB_DIA = 0x9A1EF0
SUB_GOLD = 0x9A7B8C
SITE_R = 0x1219B84
SITE_U = 0x1436C30


def bl_encode(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return struct.pack('<I', 0xEB000000 | (off & 0xFFFFFF))


def b_encode(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return struct.pack('<I', 0xEA000000 | (off & 0xFFFFFF))


def gate(idx, sub):
    g = bytearray()
    g += struct.pack('<I', 0xE92D4013)   # push {r0,r1,r4,lr}
    g += struct.pack('<I', 0xE3A00000 | idx)  # mov r0, #idx
    g += bl_encode(0, READER)  # placeholder, fixed below
    g += struct.pack('<I', 0xE3500000)   # cmp r0, #0
    g += struct.pack('<I', 0xE8BD4013)   # pop {r0,r1,r4,lr}
    g += struct.pack('<I', 0x112FFF1E)   # bxne lr (ON: skip deduct)
    g += b''  # b SUB appended by caller
    return g


d = bytearray(open(SO, 'rb').read())


def place(base, idx, sub, site, want_sub):
    g = gate(idx, sub)
    # fix bl READER (at base+8)
    g[8:12] = bl_encode(base + 8, READER)
    g += b_encode(base + 24, sub)
    assert len(g) == 28
    if d[base:base + 28] == g:
        print(hex(base), 'cave already applied, skip')
    else:
        d[base:base + 28] = g
    cur = bytes(d[site:site + 4])
    want = bl_encode(site, base)
    if cur == want:
        print(hex(site), 'already hooked, skip')
        return
    w = struct.unpack('<I', cur)[0]
    assert (w >> 24) == 0xEB, (hex(site), cur.hex())
    off = w & 0xFFFFFF
    if off & 0x800000:
        off -= 0x1000000
    assert site + 8 + off * 4 == want_sub, (hex(site), cur.hex())
    d[site:site + 4] = want
    print(hex(site), 'hooked')


place(GATE_R, 3, SUB_DIA, SITE_R, SUB_DIA)
place(GATE_U, 4, SUB_GOLD, SITE_U, SUB_GOLD)
open(SO, 'wb').write(d)
print('M2 gates applied')
