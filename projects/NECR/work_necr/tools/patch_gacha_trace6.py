#!/usr/bin/env python3
"""V17G: NULL-skip+log guard on 0x12780B8 (blx r2 inside 0x1278078) (test).

Static find: 0x1278078 (called 5x on the purchase-only N-zone path) is the
only suspect callee containing its own blx. Shape:
  r2 = [static slot] (generic-method ptr, init-once via 0x31D71C);
  if r2 was 0: init; then blx r2 with NO recheck.
If the purchase-path generic instantiation fails to resolve, r2 stays 0
-> blx 0 -> pc=0. Boot path uses sibling 0x127817C (own slot, resolves
fine) -> purchase-only crash explained.
GUARD (22 words, v17d template, r0-restoring): cmp r2,#0;
  null -> log 'N17G NULLB2', return r0=0 (skip);
  else -> log 'N17G CALLB2', blx r2, log 'N17G RETB2'.
Retval r0 IS consumed here (cmp r0,#0 after) -> skip returns 0, which
takes the post-call slow path (same as a falsy return); safe for test.
Reading: 'NULLB2' (+survival or later crash) => root cause confirmed,
v18 = permanent guard. 'CALLB2' + crash => r2 non-null, look deeper.
Cave @0x1B3BBA8 (FARM1 remainder, 444B free).
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
LOGPLT = 0x1C3630
CAVE = 0x1B3BBA8
SITE = 0x12780B8
TAG = b'N17G\x00'
GW = 22


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
cur_w, = struct.unpack('<I', d[SITE:SITE + 4])
assert cur_w == 0xE12FFF32, hex(cur_w)

PRE_N = 22  # code words before final bl+pop+ret (NULL path 10 + DOCALL 12)
GW = PRE_N + 3  # + bl LOG, pop regs, pop {r12,pc} (THE RETURN - never omit!)
STR_BASE = CAVE + GW * 4
strs = [TAG, b'NULLB2\x00', b'CALLB2\x00', b'RETB2\x00']
offs, cur = {}, STR_BASE
for s in strs:
    while cur % 4:
        cur += 1
    offs[s] = cur
    cur += (len(s) + 3) // 4 * 4
assert cur <= 0x1B3BC64, 'cave overflow'
tag, null_s, call_s, ret_s = (offs[s] for s in strs)
docall = CAVE + 10 * 4
code = [
    0xE3520000,                  # +0x00 cmp r2, #0
    bne(CAVE + 0x04, docall),    # +0x04 bne DOCALL
    0xE92D500F,                  # +0x08 push {r0-r3,r12,lr}
    0xE3A00004,                  # +0x0C mov r0, #4
    adr_rd(1, CAVE + 0x10, tag),
    adr_rd(2, CAVE + 0x14, null_s),
    bl(CAVE + 0x18, LOGPLT),
    0xE8BD500F,                  # +0x1C pop {r0-r3,r12,lr}
    0xE3A00000,                  # +0x20 mov r0, #0
    0xE8BD9000,                  # +0x24 pop {r12,pc}
    # DOCALL +0x28:
    0xE92D500F,                  # +0x28 push {r0-r3,r12,lr}
    0xE3A00004,                  # +0x2C mov r0, #4
    adr_rd(1, CAVE + 0x30, tag),
    adr_rd(2, CAVE + 0x34, call_s),
    bl(CAVE + 0x38, LOGPLT),
    0xE8BD500F,                  # +0x3C pop {r0-r3,r12,lr}
    0xE92D5000,                  # +0x40 push {r12,lr}
    0xE12FFF32,                  # +0x44 blx r2
    0xE92D500F,                  # +0x48 push {r0-r3,r12,lr}
    0xE3A00004,                  # +0x4C mov r0, #4
    adr_rd(1, CAVE + 0x50, tag),
    adr_rd(2, CAVE + 0x54, ret_s),
]
assert len(code) == PRE_N, len(code)
code += [
    bl(CAVE + PRE_N * 4, LOGPLT),
    0xE8BD500F,                  # pop {r0-r3,r12,lr} (restore retval)
    0xE8BD9000,                  # pop {r12,pc} (RETURN - mandatory!)
]
assert len(code) == GW, len(code)
want_site = bl(SITE, CAVE)

cur_code = struct.unpack('<%dI' % GW, d[CAVE:CAVE + GW * 4])
if tuple(cur_code) == tuple(code) and \
        struct.unpack('<I', d[SITE:SITE + 4])[0] == want_site:
    print('TRACE6 already applied, skip')
    sys.exit(0)
if any(w != 0 for w in cur_code):
    sys.exit('CAVE not free @%s' % hex(CAVE))
d[CAVE:CAVE + GW * 4] = struct.pack('<%dI' % GW, *code)
for s, o in offs.items():
    d[o:o + len(s)] = s
print('GUARD wrote @%s' % hex(CAVE))
d[SITE:SITE + 4] = struct.pack('<I', want_site)
print('site %s: %s -> %s' % (hex(SITE), hex(cur_w), hex(want_site)))
open(SO, 'wb').write(d)
print('TRACE6 applied')
