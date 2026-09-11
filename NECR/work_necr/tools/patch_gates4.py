#!/usr/bin/env python3
"""M8: god mode (idx9) + full MP (idx10). Idempotent."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
TRAMP = 0x121A040
PUSH = 0xE92D407F   # push {r0-r6, lr}
POP = 0xE8BD407F    # pop {r0-r6, lr}
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


def fix(addr, words, name):
    cur = bytes(d[addr:addr + 4 * len(words)])
    new = struct.pack('<%dI' % len(words), *words)
    if cur == new:
        print(name, 'ok'); return
    put(d, addr, words)
    n[0] += 1
    print(name, 'wrote')


def hook(site, gate, expect, name):
    cur_w, = struct.unpack('<I', bytes(d[site:site + 4]))
    want = bl(site, gate)
    if cur_w == want:
        print(name, 'site ok'); return
    assert cur_w == expect, (name, hex(cur_w))
    put(d, site, (want,))
    n[0] += 1
    print(name, 'site hooked')

# GATE_GOD idx9 @0xB430C4 (12w, ends 0xB430F4)
G = 0xB430C4
off = G + 40  # OFF label (word 10)
body = [PUSH, 0xE3A00009, 0, 0xE3500000, POP]
body[2] = bl(G + 8, TRAMP)
body += [b(0x0, G + 20, off), 0xE5D41095, 0xE3510000, b(0x0, G + 32, off),
         BXLR, 0xE0400005, BXLR]
fix(G, body, 'GATE_GOD')
hook(0x122B858, G, 0xE0400005, 'GOD')

# GATE_MP: RETIRED by M8b (prologue-touch breaks houdini translation, boot
# abort). See tools/patch_gates5.py (caller-hook). DO NOT re-enable.

open(SO, 'wb').write(d)
print('M8 done, wrote', n[0])
