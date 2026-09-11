#!/usr/bin/env python3
"""M9: GATE_MIX2 — mix/summon mode-aware (idx5). MixBox.MixtheUnits is shared
by the mix UI ([fp,#0x14]==0) and grave-summon ([fp,#0x14]!=0; SUCC routes to
0x1225718/AddItem grant). Forcing SUCC in summon mode feeds mix-slot garbage
to the grant -> Inventory.ctor(this=3) SIGSEGV. Fix: ON forces SUCC only in
mix mode; summon mode (and menu OFF) replays natural cmp+bge. Idempotent."""
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
OFF = G + 40
body = [PUSH, 0xE3A00005, 0, 0xE3500000, POP, 0,
        0xE5DB2014, 0xE3520000, 0, 0,
        0xE1510000, 0, BXLR]
body[2] = bl(G + 8, TRAMP)
body[5] = b(0x0, G + 20, OFF)
body[8] = b(0x1, G + 32, OFF)
body[9] = b(0xE, G + 36, SUCC)
body[11] = b(0xA, G + 44, SUCC)
cur = bytes(d[G:G + 4 * len(body)])
new = struct.pack('<%dI' % len(body), *body)
if cur != new:
    put(d, G, body)
    n[0] += 1
    print('GATE_MIX2 wrote')
else:
    print('GATE_MIX2 ok')

cur_w, = struct.unpack('<I', bytes(d[SITE:SITE + 4]))
want = bl(SITE, G)
if cur_w != want:
    assert (cur_w & 0xFF000000) == 0xEB000000, hex(cur_w)
    put(d, SITE, (want,))
    n[0] += 1
    print('MIX site retargeted')
else:
    print('MIX site ok')

# retire old 10w gate (dead after retarget)
old = bytes(d[0xB42FC0:0xB42FC0 + 40])
if old != b'\x00\x00\xa0\xe1' * 10:
    put(d, 0xB42FC0, (0xE1A00000,) * 10)
    n[0] += 1
    print('old GATE_MIX nopped')
else:
    print('old GATE_MIX already nop')

open(SO, 'wb').write(d)
print('M9 done, wrote', n[0])
