#!/usr/bin/env python3
"""M8b: MP via caller-hook (prologue-touch breaks houdini translation).
GATE_MP2 @0x121A080 (11w, tail-calls SetSummonMana). Site A only
(0x13E2EE4, r0=manager non-null by caller check). Idempotent."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
TRAMP = 0x121A040
SETMANA = 0x13E17D0
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


def fix(addr, words, name, expect_any=False):
    cur = bytes(d[addr:addr + 4 * len(words)])
    new = struct.pack('<%dI' % len(words), *words)
    if cur == new:
        print(name, 'ok'); return
    put(d, addr, words)
    n[0] += 1
    print(name, 'wrote')


# 1. restore prologue site to vanilla push
cur_w, = struct.unpack('<I', bytes(d[SETMANA:SETMANA + 4]))
if cur_w != 0xE92D41F0:
    assert (cur_w & 0xFF000000) == 0xEB000000, hex(cur_w)
    put(d, SETMANA, (0xE92D41F0,))
    n[0] += 1
    print('prologue restored')
else:
    print('prologue ok')

# 2. GATE_MP2 @0x121A080
G = 0x121A080
body = [PUSH, 0xE3A0000A, 0, 0xE3500000, POP, 0,
        0xED900A05, 0xED800A04, 0xE3A01000, 0xE5801018, 0]
body[2] = bl(G + 8, TRAMP)
body[5] = b(0x0, G + 20, G + 40)
body[10] = b(0xE, G + 40, SETMANA)
fix(G, body, 'GATE_MP2')

# 3. site A -> bl GATE_MP2
cur_w, = struct.unpack('<I', bytes(d[0x13E2EE4:0x13E2EE4 + 4]))
want = bl(0x13E2EE4, G)
if cur_w != want:
    assert cur_w == 0xEBFFFA39, hex(cur_w)
    put(d, 0x13E2EE4, (want,))
    n[0] += 1
    print('siteA hooked')
else:
    print('siteA ok')

open(SO, 'wb').write(d)
print('M8b done, wrote', n[0])
