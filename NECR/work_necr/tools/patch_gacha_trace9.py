#!/usr/bin/env python3
"""V17J: B05/B06 PRE/POST hooks on the first N-triple's unhooked calls (test).

v17h proved gate#1's whole call completes (PRE B03 + POST B03) yet the crash
lands before gate#2's PRE. The only unhooked calls in that window are the
first N-triple's 0x1828788 (site 0x998F1C) and 0x12E191C (site 0x998F34),
right before the first 0x1278078 (0x998F40, proven unreached by silent B2).
B05/B06 decide:
  PRE without POST on either => fault INSIDE that function (drill in next)
  both PRE+POST balanced     => fault in spills/loads between (rethink)
Design: 2x16-word PRE/POST blocks (trace2 template, retval-safe). Strings
packed programmatically (no hand arithmetic - the trace8 lesson).
Cave: reuses B04's block (@0x1B3BB00; B04 neutralized, boot-B04-lr question
parked). E/M stay vanilla-restored (proven innocent by control boot).
BX site 0x1289724 stays vanilla (B04 off).
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
LOGPLT = 0x1C3630
CAVE = 0x1B3BB00
CAVE_END = 0x1B3BBA8
TAG = b'N17J\x00'
HOOKS = [
    # (site, target, pre_msg, post_msg)
    (0x998F1C, 0x1828788, b'PRE5\x00', b'POST5\x00'),
    (0x998F34, 0x12E191C, b'PRE6\x00', b'POST6\x00'),
]


def bl(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return 0xEB000000 | (off & 0xFFFFFF)


def adr_rd(rd, instr_addr, target):
    delta = target - (instr_addr + 8)
    assert 0 <= delta <= 0xFF, (hex(instr_addr), hex(target))
    return 0xE28F0000 | (rd << 12) | delta


d = bytearray(open(SO, 'rb').read())

# 1. preconditions: E/M vanilla, BX site vanilla (B04 off)
for site, want in ((0x9986F0, bl(0x9986F0, 0x838488)), (0x998948, 0xE12FFF33),
                   (0x1289724, 0xE12FFF12)):
    cur, = struct.unpack('<I', d[site:site + 4])
    assert cur == want, (hex(site), hex(cur))
print('preconditions OK (E/M/BX vanilla)')

# 2. hook sites must hold vanilla BLs (record originals from file)
origs = {}
for site, target, _, _ in HOOKS:
    cur, = struct.unpack('<I', d[site:site + 4])
    off = cur & 0xFFFFFF
    off -= 0x1000000 if off & 0x800000 else 0
    got = site + 8 + off * 4
    assert (cur & 0xFF000000) == 0xEB000000 and got == target, \
        (hex(site), hex(cur), hex(got))
    origs[site] = cur
    print('hook site %s = bl %s OK' % (hex(site), hex(target)))

# 3. build blocks; strings packed programmatically after code
code_words = []      # list of (kind, value-or-tuple)
str_offsets = {}
blob = b''
blocks = []
base_code = CAVE
for i, (site, target, pre_m, post_m) in enumerate(HOOKS):
    b = base_code + i * 64
    blocks.append((b, site, target, pre_m, post_m))
code_end = base_code + 128
str_blob = TAG
str_off = {TAG: code_end}
for _, _, pre_m, post_m in HOOKS:
    for s in (pre_m, post_m):
        if s not in str_off:
            str_off[s] = code_end + len(str_blob)
            str_blob += s
total = 128 + len(str_blob)
assert base_code + total <= CAVE_END, (hex(base_code + total), len(str_blob))

words = []
for b, site, target, pre_m, post_m in blocks:
    tag = str_off[TAG]
    pre = str_off[pre_m]
    post = str_off[post_m]
    words += [
        0xE92D500F,
        0xE3A00004,
        adr_rd(1, b + 0x08, tag),
        adr_rd(2, b + 0x0C, pre),
        bl(b + 0x10, LOGPLT),
        0xE8BD500F,
        0xE92D5000,
        bl(b + 0x1C, target),
        0xE92D500F,
        0xE3A00004,
        adr_rd(1, b + 0x28, tag),
        adr_rd(2, b + 0x2C, post),
        bl(b + 0x30, LOGPLT),
        0xE8BD500F,
        0xE8BD9000,
        0x00000000,
    ]
assert len(words) == 32
want_blob = struct.pack('<32I', *words) + str_blob

# 4. idempotency
have_sites = all(struct.unpack('<I', d[s:s + 4])[0] == bl(s, blocks[i][0])
                 for i, (s, _, _, _) in enumerate(HOOKS))
if bytes(d[CAVE:CAVE + total]) == want_blob and have_sites:
    print('TRACE9 already applied, skip')
    sys.exit(0)
# reclaim area: must hold only B04's dead block (fingerprint its TAG @+112)
assert bytes(d[CAVE + 112:CAVE + 117]) == b'N17I\x00', \
    bytes(d[CAVE + 112:CAVE + 117])
d[CAVE:CAVE + total] = want_blob
print('B05/B06 wrote @%s (end %s, strings %dB)' %
      (hex(CAVE), hex(CAVE + total), len(str_blob)))
for i, (site, target, _, _) in enumerate(HOOKS):
    w = bl(site, blocks[i][0])
    d[site:site + 4] = struct.pack('<I', w)
    print('site %s: %s -> %s' % (hex(site), hex(origs[site]), hex(w)))
open(SO, 'wb').write(d)
print('TRACE9 applied')
