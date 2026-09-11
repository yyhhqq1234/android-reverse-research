#!/usr/bin/env python3
"""M12: GATE_AF — affix floor, P9 done safely (idx11). P9 died touching the
exit (bx lr -> bl fell into ctor). This hooks the 8 UpgradeManager callers
instead: gate calls the REAL CalculateAB (prologue/exit untouched), then
floors 0 -> 100 when ON, tail-calls when OFF. 12 words. Idempotent."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
TRAMP = 0x121A040
CALCAB = 0x99C4E0
PUSH = 0xE92D407F
POP = 0xE8BD407F
SITES = (0x1432984, 0x1432B00, 0x1432C84, 0x1432D80,
         0x14351CC, 0x14353B0, 0x1435624, 0x1435764)


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

G = 0x121A108
CALL = G + 44
body = [PUSH, 0xE3A0000B, 0, 0xE3500000, POP, 0,
        0xE92D4010, 0, 0xE3500000, 0x03A00064, 0xE8BD8010, 0]
body[2] = bl(G + 8, TRAMP)
body[5] = b(0x0, G + 20, CALL)
body[7] = bl(G + 28, CALCAB)
body[11] = b(0xE, G + 44, CALCAB)
cur = bytes(d[G:G + 4 * len(body)])
new = struct.pack('<%dI' % len(body), *body)
if cur != new:
    put(d, G, body)
    n[0] += 1
    print('GATE_AF wrote')
else:
    print('GATE_AF ok')

for s in SITES:
    cur_w, = struct.unpack('<I', bytes(d[s:s + 4]))
    want = bl(s, G)
    if cur_w != want:
        assert (cur_w >> 28) == 0xE and ((cur_w >> 24) & 0xF) in (0xA, 0xB), hex(cur_w)
        put(d, s, (want,))
        n[0] += 1
        print('site', hex(s), 'hooked')
print('M12 done, wrote', n[0])
open(SO, 'wb').write(d)
