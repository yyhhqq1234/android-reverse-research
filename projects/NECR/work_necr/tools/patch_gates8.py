#!/usr/bin/env python3
"""M11: GATE_MIX4 — slots-aware force (idx5). b-SUCC forcing (even register-
identical) breaks grave-summon: summon shares MixtheUnits with empty/stale
mix state. Force SUCC only when a REAL mix is loaded: slotsNum != null &&
Count(_size@0xC, confirmed via List.get_Item bounds check) > 0 &&
slotAmount >= 1 (mirrors the grant's own `cmp #1; blt` guard). Everything
else (incl. menu OFF) replays natural. Borrows r1 only, reloads it from
[fp,#0x2c] on every exit; r2/r3/fp untouched (M10 lesson). 21 words."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
TRAMP = 0x121A040
SUCC = 0x1224E58
SITE = 0x1224CD8
PUSH = 0xE92D407F
POP = 0xE8BD407F
BXLR = 0xE12FFF1E


def put(d, addr, words):
    d[addr:addr + 4 * len(words)] = struct.pack('<%dI' % len(words), *words)


def bl(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return 0xEB000000 | (off & 0xFFFFFF)


def b(cond, frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return (cond << 28) | 0x0A000000 | (off & 0xFFFFFF)


d = bytearray(open(SO, 'rb').read())
n = [0]

G = 0x121A0B4
NAT = G + 68
body = [PUSH, 0xE3A00005, 0, 0xE3500000, POP, 0,
        0xE59B1020, 0xE3510000, 0, 0xE591100C, 0xE3510000, 0,
        0xE59B1018, 0xE3510001, 0, 0xE59B102C, 0,
        0xE59B102C, 0xE1510000, 0, BXLR]
body[2] = bl(G + 8, TRAMP)
body[5] = b(0x0, G + 20, NAT)
body[8] = b(0x0, G + 32, NAT)
body[11] = b(0x0, G + 44, NAT)
body[14] = b(0xB, G + 56, NAT)
body[16] = b(0xE, G + 64, SUCC)
body[19] = b(0xA, G + 76, SUCC)
cur = bytes(d[G:G + 4 * len(body)])
new = struct.pack('<%dI' % len(body), *body)
if cur != new:
    put(d, G, body)
    n[0] += 1
    print('GATE_MIX4 wrote')
else:
    print('GATE_MIX4 ok')

cur_w, = struct.unpack('<I', bytes(d[SITE:SITE + 4]))
want = bl(SITE, G)
if cur_w != want:
    assert (cur_w & 0xFF000000) in (0xEA000000, 0xEB000000, 0xAA000000), hex(cur_w)
    put(d, SITE, (want,))
    n[0] += 1
    print('MIX site hooked')
else:
    print('MIX site ok')

open(SO, 'wb').write(d)
print('M11 done, wrote', n[0])
