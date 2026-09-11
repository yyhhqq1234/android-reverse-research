#!/usr/bin/env python3
"""V17E: PRE-only transparent hooks on 5 key sites in (M, 0x99911C) (test).

v17d proved crash is after POST M, before 0x99911C (no blx in between:
fault must be inside a direct-bl callee). Zone = 7x stat triples
(0x1828788/0x12E191C/0x1278xxx) + singletons 0x998B40/0x998C94.
This build hooks the FIRST triple + both singletons (5 x 40B):
  A01 0x99899C -> 0x1828788
  A02 0x9989B4 -> 0x12E191C
  A03 0x9989BC -> 0x127817C
  A04 0x998B40 -> 0x999D88
  A05 0x998C94 -> 0x999E88
Reading: last Ann before crash identifies the owner target (or a
singleton); a follow-up build then hooks only that target's repetitions.
HOOK (7 words, transparent): push; mov; adr; adr; bl LOG; pop; b TARGET.
Cave @0x1AABE78+560. Excluded: aborts, idx2 gates.
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
LOGPLT = 0x1C3630
CAVE = 0x1AABE78 + 560
TAG = b'N17E\x00'
SITES = [0x99899C, 0x9989B4, 0x9989BC, 0x998B40, 0x998C94]
STRIDE = 40


def bl(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return 0xEB000000 | (off & 0xFFFFFF)


def b_(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF
    return 0xEA000000 | (off & 0xFFFFFF)


def adr_rd(rd, instr_addr, target):
    delta = target - (instr_addr + 8)
    assert 0 <= delta <= 0xFF, (hex(instr_addr), hex(target))
    return 0xE28F0000 | (rd << 12) | delta


d = bytearray(open(SO, 'rb').read())
blocks = b''
patches = []
for n, site in enumerate(SITES):
    cur_w, = struct.unpack('<I', d[site:site + 4])
    assert (cur_w & 0xFF000000) == 0xEB000000, (hex(site), hex(cur_w))
    off = cur_w & 0xFFFFFF
    off -= 0x1000000 if off & 0x800000 else 0
    tgt = site + 8 + off * 4
    base = CAVE + n * STRIDE
    lab = ('A%02d\x00' % (n + 1)).encode()
    assert len(lab) == 4
    code = [
        0xE92D500F,
        0xE3A00004,
        adr_rd(1, base + 0x08, base + 28),
        adr_rd(2, base + 0x0C, base + 36),
        bl(base + 0x10, LOGPLT),
        0xE8BD500F,
        b_(base + 0x18, tgt),
    ]
    blk = struct.pack('<7I', *code) + TAG + b'\x00\x00\x00' + lab
    assert len(blk) == STRIDE
    blocks += blk
    patches.append((site, cur_w, bl(site, base)))

total = STRIDE * len(SITES)
cur = bytes(d[CAVE:CAVE + total])
if cur == blocks and all(
        struct.unpack('<I', d[s:s + 4])[0] == w for s, _, w in patches):
    print('TRACE4 already applied, skip')
    sys.exit(0)
if any(b != 0 for b in cur):
    sys.exit('CAVE not free @%s' % hex(CAVE))
d[CAVE:CAVE + total] = blocks
for (site, old, want) in patches:
    d[site:site + 4] = struct.pack('<I', want)
    print('site %s: %s -> %s' % (hex(site), hex(old), hex(want)))
open(SO, 'wb').write(d)
print('TRACE4 applied')
