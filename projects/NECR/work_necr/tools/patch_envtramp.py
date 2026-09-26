#!/usr/bin/env python3
"""M6: env-var bridge. One shared TRAMP in dead-twin slack reads NECR_MOD[idx]
via PLT getenv (pure userspace, zero syscalls). Same r0-in/ Sang-woo-out contract as
READER: retarget the 5 bl-READER sites to TRAMP (same-size). Idempotent."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
READER = 0xB42FC0
TRAMP = 0x121A040
NAME = 0x121A074
PLT_GETENV = 0x1C2C04


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

# TRAMP body (13 words) + NAME
tramp = [
    0xE1A05000,              # mov r5, r0 (idx)
    0xE92D4070,              # push {r4-r6, lr}
    0xE28F0024,              # add r0, pc, #0x24 -> NAME
    bl(TRAMP + 12, PLT_GETENV),
    0xE3500000,              # cmp r0, #0
    b(0x0, TRAMP + 20, TRAMP + 44),  # beq DEF
    0xE7D00005,              # ldrb r0, [r0, r5]
    0xE3500031,              # cmp r0, #0x31
    0x03A00001,              # moveq r0, #1
    0x13A00000,              # movne r0, #0
    0xE8BD8070,              # pop {r4-r6, pc}
    0xE3A00001,              # DEF: mov r0, #1
    0xE8BD8070,              # pop {r4-r6, pc}
]
assert bl(TRAMP + 12, PLT_GETENV) == bl(0x121A04C, 0x1C2C04)
assert b(0x0, TRAMP + 20, TRAMP + 44) == b(0x0, 0x121A054, 0x121A06C)
cur = bytes(d[TRAMP:TRAMP + 52])
new = struct.pack('<13I', *tramp)
if cur != new:
    put(d, TRAMP, tramp)
    n[0] += 1
    print('TRAMP wrote')
else:
    print('TRAMP ok')
name = b'NECR_MOD\x00\x00\x00\x00'
assert len(name) == 12
if bytes(d[NAME:NAME + 12]) != name:
    d[NAME:NAME + 12] = name
    n[0] += 1
    print('NAME wrote')
else:
    print('NAME ok')

# retarget 5 sites: bl READER -> bl TRAMP
for site, nm in [(0xB42F40, 'tiered'), (0xB4307C, 'G'), (0xB43098, 'P'),
                 (0x121A004, 'R'), (0x121A024, 'U')]:
    cur_w, = struct.unpack('<I', bytes(d[site:site + 4]))
    want = bl(site, TRAMP)
    if cur_w == want:
        print(nm, 'ok'); continue
    assert cur_w == bl(site, READER), (nm, hex(cur_w))
    put(d, site, (want,))
    n[0] += 1
    print(nm, 'retargeted')

open(SO, 'wb').write(d)
print('M6 done, wrote', n[0])
