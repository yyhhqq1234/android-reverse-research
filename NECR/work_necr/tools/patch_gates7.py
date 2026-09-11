#!/usr/bin/env python3
"""M10: GATE_MIX3 — fixes v2's r2-clobber. v2 borrowed r2 for the UnableMix
flag load and never restored it. r2 holds 0 from `mov r2,#0` before the
Random.Range call (Range preserves r2 in practice), so downstream reads 0
natively; v2 fed it 0 (mix, accidentally fine) or 1 (summon -> ctor crash on
EVERY path incl. menu-OFF). v3 uses NO scratch regs: it borrows r1 for the
flag and RELOADS it from [fp,#0x2c] (same ldr as the site pred) on every
exit. All exits leave r0/r1/r2/r3 bit-identical to vanilla. 15 words."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
TRAMP = 0x121A040
SUCC = 0x1224E58
SITE = 0x1224CD8
PUSH = 0xE92D407F
POP = 0xE8BD407F
BXLR = 0xE12FFF1E
LDR_R1 = 0xE59B102C  # ldr r1, [fp, #0x2c] (site pred replica)


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
NAT = G + 44
body = [PUSH, 0xE3A00005, 0, 0xE3500000, POP, 0,
        0xE5DB1014, 0xE3510000, 0, LDR_R1, 0,
        LDR_R1, 0xE1510000, 0, BXLR]
body[2] = bl(G + 8, TRAMP)
body[5] = b(0x0, G + 20, NAT)
body[8] = b(0x1, G + 32, NAT)
body[10] = b(0xE, G + 40, SUCC)
body[13] = b(0xA, G + 52, SUCC)
cur = bytes(d[G:G + 4 * len(body)])
new = struct.pack('<%dI' % len(body), *body)
if cur != new:
    put(d, G, body)
    n[0] += 1
    print('GATE_MIX3 wrote')
else:
    print('GATE_MIX3 ok')

cur_w, = struct.unpack('<I', bytes(d[SITE:SITE + 4]))
want = bl(SITE, G)
if cur_w != want:
    assert (cur_w & 0xFF000000) == 0xEB000000, hex(cur_w)
    put(d, SITE, (want,))
    n[0] += 1
    print('MIX site ok (retarget)')
else:
    print('MIX site ok')

open(SO, 'wb').write(d)
print('M10 done, wrote', n[0])
