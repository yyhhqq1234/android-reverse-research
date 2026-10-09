#!/usr/bin/env python3
"""M7: gate legacy always-on mods behind TRAMP idx5-8 (env string 9 bytes).
Gates live in dead READER+string space 0xB42FC0-0xB43073. Uniform 8-reg
push {r0-r6,lr} (32B aligned). Idempotent."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
TRAMP = 0x121A040
SUCC_MIX = 0x1224E58
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


def gate_head(idx):
    return [PUSH, 0xE3A00000 | idx, 0, 0xE3500000, POP]


def gate_retarget(site, gate, expect, name):
    cur_w, = struct.unpack('<I', bytes(d[site:site + 4]))
    want = bl(site, gate)
    if cur_w == want:
        print(name, 'site ok'); return
    assert cur_w == expect, (name, hex(cur_w))
    put(d, site, (want,))
    n[0] += 1
    print(name, 'site hooked')

# GATE_MIX idx5 @0xB42FC0 (10w)
G = 0xB42FC0
off_m = G + 28  # OFF label
body = gate_head(5)
body[2] = bl(G + 8, TRAMP)
body += [b(0x0, G + 20, off_m), b(0xE, G + 24, SUCC_MIX),
         0xE1510000, b(0xA, G + 32, SUCC_MIX), BXLR]
fix(G, body, 'GATE_MIX')
gate_retarget(0x1224CD8, G, 0xEA00005E, 'MIX')

# GATE_G1 idx6 @0xB42FE8 (10w)
G = 0xB42FE8
off_g1 = G + 32
body = gate_head(6)
body[2] = bl(G + 8, TRAMP)
body += [b(0x0, G + 20, off_g1), 0xE3500000, BXLR, 0xE350000A, BXLR]
fix(G, body, 'GATE_G1')
gate_retarget(0x12184F0, G, 0xE3500000, 'G1')

# GATE_G2 idx6 @0xB43010 (8w)
G = 0xB43010
body = gate_head(6)
body[2] = bl(G + 8, TRAMP)
body += [0x03A0100A, 0x13A01000, BXLR]  # moveq r1,#10 / movne r1,#0
fix(G, body, 'GATE_G2')
gate_retarget(0x1218508, G, 0xE3A01000, 'G2')

# GATE_GOLD idx7 @0xB43030 (8w)
G = 0xB43030
body = gate_head(7)
body[2] = bl(G + 8, TRAMP)
body += [0x05900050, 0x130207F2, BXLR]  # ldreq (orig) / movwne
fix(G, body, 'GATE_GOLD')
gate_retarget(0x9A4558, G, 0xE30207F2, 'GOLD')

# GATE_DIA idx8 @0xB43050 (8w, ends 0xB43070 < 0xB43074 GATE_G)
G = 0xB43050
assert G + 32 <= 0xB43074
body = gate_head(8)
body[2] = bl(G + 8, TRAMP)
body += [0x00811008, 0x10811A88, BXLR]  # addeq (orig) / addne lsl#21
fix(G, body, 'GATE_DIA')
gate_retarget(0x9A1820, G, 0xE0811A88, 'DIA')

open(SO, 'wb').write(d)
print('M7 done, wrote', n[0])
