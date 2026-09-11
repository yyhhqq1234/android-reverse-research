#!/usr/bin/env python3
"""V17H: PRE/POST hook (B03) on the idx2-gate's 0x12896E0 call (test).

v17g post-mortem: the P-gate's OFF path (idx2=0, our case) is NOT a no-op:
it tail-calls the 0x12896E0 trampoline (BX R2 -> resolved method), 5x per
purchase, all unlogged. Crash (9ms after POST B02, zero hook logs, before
first CALLB2/N-zone) fits INSIDE one of those resolved-method runs.
B03 (16-word PRE/POST, trace2 template, retval-safe) at 0x1AABE68 decides:
  PRE,POST x5 then crash  => gates survive; fault is later (0x1828788#1 /
                            0x12E191C#1 / spills, all before 0x998F40)
  crash after a PRE       => fault IS that gate's resolved-method run
Cave: reclaims v17e A01-A03 blocks (@0x1AAC0A8, 120B; purchase path never
reaches the first triple, boot path doesn't need them). A01-A03 sites are
restored to their original words first. A04/A05/B01/B02/B2/N17D untouched.
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
LOGPLT = 0x1C3630
CAVE = 0x1AABE78 + 560          # ex-A01 block
SITE = 0x1AABE68                # gate's BL 0x12896E0
TARGET = 0x12896E0
TAG = b'N17H\x00'
RECLAIM_SITES = {               # site -> original word (from trace4 log)
    0x99899C: 0xEB3A3F79,
    0x9989B4: 0xEB2523D8,
    0x9989BC: 0xEB237DEE,
}


def bl(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return 0xEB000000 | (off & 0xFFFFFF)


def adr_rd(rd, instr_addr, target):
    delta = target - (instr_addr + 8)
    assert 0 <= delta <= 0xFF, (hex(instr_addr), hex(target))
    return 0xE28F0000 | (rd << 12) | delta


def bl_target(frm, w):
    off = w & 0xFFFFFF
    off -= 0x1000000 if off & 0x800000 else 0
    return frm + 8 + off * 4


d = bytearray(open(SO, 'rb').read())

# 1. restore A01-A03 sites
for site, orig in RECLAIM_SITES.items():
    cur_w, = struct.unpack('<I', d[site:site + 4])
    if cur_w == bl(site, 0x1AABE78 + 560 + list(RECLAIM_SITES).index(site) * 40):
        d[site:site + 4] = struct.pack('<I', orig)
        print('restored %s -> %s' % (hex(site), hex(orig)))
    else:
        assert cur_w == orig, (hex(site), hex(cur_w))

# 2. gate site check
cur_w, = struct.unpack('<I', d[SITE:SITE + 4])
assert bl_target(SITE, cur_w) == TARGET, hex(cur_w)
print('gate site %s = %s (bl %s) OK' % (hex(SITE), hex(cur_w), hex(TARGET)))

# 3. B03 block (16 words + TAG + PRE + POST), same template as trace2/5
base = CAVE
STR_BASE = CAVE + 16 * 4
pre = STR_BASE + 8
post = STR_BASE + 8 + 8
tag = STR_BASE
code = [
    0xE92D500F,
    0xE3A00004,
    adr_rd(1, base + 0x08, tag),
    adr_rd(2, base + 0x0C, pre),
    bl(base + 0x10, LOGPLT),
    0xE8BD500F,
    0xE92D5000,
    bl(base + 0x1C, TARGET),
    0xE92D500F,
    0xE3A00004,
    adr_rd(1, base + 0x28, tag),
    adr_rd(2, base + 0x2C, post),
    bl(base + 0x30, LOGPLT),
    0xE8BD500F,
    0xE8BD9000,
    0x00000000,
]
assert len(code) == 16
strings = TAG + b'PRE B03\x00' + b'POST B03\x00'
assert len(strings) == 22, len(strings)
total = 64 + 22
cur = bytes(d[CAVE:CAVE + total])
want_site = bl(SITE, base)
have_site = struct.unpack('<I', d[SITE:SITE + 4])[0] == want_site
if cur == struct.pack('<16I', *code) + strings and have_site:
    print('TRACE7 already applied, skip')
    sys.exit(0)
# reclaim area must hold only the old A01-A03 blocks (fingerprint: 3x 'N17E')
tags = bytes(d[CAVE + 28:CAVE + 32] + d[CAVE + 68:CAVE + 72] + d[CAVE + 108:CAVE + 112])
assert tags == b'N17E' * 3, tags
d[CAVE:CAVE + total] = struct.pack('<16I', *code) + strings
for s, o in ((TAG, tag), (b'PRE B03\x00', pre), (b'POST B03\x00', post)):
    d[o:o + len(s)] = s
print('B03 wrote @%s' % hex(CAVE))
d[SITE:SITE + 4] = struct.pack('<I', want_site)
print('site %s: %s -> %s' % (hex(SITE), hex(cur_w), hex(want_site)))
open(SO, 'wb').write(d)
print('TRACE7 applied')
