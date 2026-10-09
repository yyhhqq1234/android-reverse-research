#!/usr/bin/env python3
"""V17D: NULL-skip+log guards on the four post-M blx sites (test only).

See module doc in previous version for mechanism. Per-guard layout
(35 words code+strings, stride 140B):
  code 25 words, then TAG, NULL, CALL, RET strings (all adr-reachable).
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
LOGPLT = 0x1C3630
CAVE = 0x1AABE78
TAG = b'N17D\x00'

SITES = [
    ('11C', 0x99911C, 3),
    ('1AC', 0x9991AC, 5),
    ('224', 0x999224, 6),
    ('25C', 0x99925C, 3),
]
STRIDE = 140  # bytes per guard block


def bl(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return 0xEB000000 | (off & 0xFFFFFF)


def adr_rd(rd, instr_addr, target):
    delta = target - (instr_addr + 8)
    assert 0 <= delta <= 0xFF, (hex(instr_addr), hex(target))
    return 0xE28F0000 | (rd << 12) | delta


def bne(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF
    return 0x1A000000 | (off & 0xFFFFFF)


d = bytearray(open(SO, 'rb').read())
blocks = b''
patches = []
for n, (i, site, rx) in enumerate(SITES):
    cur_w, = struct.unpack('<I', d[site:site + 4])
    assert cur_w == (0xE12FFF30 | rx), (i, hex(cur_w))
    base = CAVE + n * STRIDE
    # string offsets inside this block (after 25 code words = 100B)
    t_off = base + 100
    n_off = t_off + 8
    c_off = n_off + 12
    r_off = c_off + 12
    assert r_off + 8 <= base + STRIDE, 'block overflow'
    docall = base + 10 * 4
    code = [
        0xE3500000 | (rx << 16),        # +0x00 cmp rX, #0
        bne(base + 0x04, docall),       # +0x04 bne DOCALL
        0xE92D500F,                     # +0x08 push {r0-r3,r12,lr}
        0xE3A00004,                     # +0x0C mov r0, #4
        adr_rd(1, base + 0x10, t_off),  # +0x10 adr r1, TAG
        adr_rd(2, base + 0x14, n_off),  # +0x14 adr r2, NULL
        bl(base + 0x18, LOGPLT),        # +0x18 bl log
        0xE8BD500F,                     # +0x1C pop {r0-r3,r12,lr}
        0xE3A00000,                     # +0x20 mov r0, #0
        0xE8BD9000,                     # +0x24 pop {r12,pc}  (skip)
        # DOCALL +0x28:
        0xE92D500F,                     # +0x28 push {r0-r3,r12,lr}
        0xE3A00004,                     # +0x2C mov r0, #4
        adr_rd(1, base + 0x30, t_off),  # +0x30 adr r1, TAG
        adr_rd(2, base + 0x34, c_off),  # +0x34 adr r2, CALL
        bl(base + 0x38, LOGPLT),        # +0x38 bl log
        0xE8BD500F,                     # +0x3C pop {r0-r3,r12,lr}
        0xE92D5000,                     # +0x40 push {r12,lr}
        0xE12FFF30 | rx,                # +0x44 blx rX
        0xE92D500F,                     # +0x48 push {r0-r3,r12,lr}
        0xE3A00004,                     # +0x4C mov r0, #4
        adr_rd(1, base + 0x50, t_off),  # +0x50 adr r1, TAG
        adr_rd(2, base + 0x54, r_off),  # +0x54 adr r2, RET
        bl(base + 0x58, LOGPLT),        # +0x58 bl log
        0xE8BD500F,                     # +0x5C pop (restore retval)
        0xE8BD9000,                     # +0x60 pop {r12,pc}
    ]
    assert len(code) == 25, len(code)
    blk = struct.pack('<25I', *code)
    blk += TAG + b'\x00\x00\x00'
    blk += ('NULL %s\x00' % i).encode() + b'\x00\x00\x00'
    blk += ('CALL %s\x00' % i).encode() + b'\x00\x00\x00'
    blk += ('RET %s\x00' % i).encode()  # 8B exact, no pad
    assert len(blk) == STRIDE, len(blk)
    blocks += blk
    patches.append((i, site, bl(site, base)))

total = STRIDE * len(SITES)
cur = bytes(d[CAVE:CAVE + total])
if cur == blocks and all(
        struct.unpack('<I', d[s:s + 4])[0] == w for _, s, w in patches):
    print('TRACE3 already applied, skip')
    sys.exit(0)
if any(b != 0 for b in cur):
    # allow re-run only if identical (checked above); else refuse
    sys.exit('CAVE not free @%s' % hex(CAVE))
d[CAVE:CAVE + total] = blocks
for (i, site, want) in patches:
    cur_w, = struct.unpack('<I', d[site:site + 4])
    d[site:site + 4] = struct.pack('<I', want)
    print('%s site %s: %s -> %s' % (i, hex(site), hex(cur_w), hex(want)))
open(SO, 'wb').write(d)
print('TRACE3 applied')
