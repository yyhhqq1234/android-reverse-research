#!/usr/bin/env python3
"""V17C: bracket two AddItem-internal calls (localization only, cumulative on v17b).

HOOKS (each: PRE log -> original call -> POST log, regs/stack preserved):
  E @0x9986F0 (bl Instantiate 0x838488) -> 'NECR17C PRE E' / 'POST E'
  M @0x998948 (blx r3 vtable)           -> 'NECR17C PRE M' / 'POST M'
Reading after one purchase:
  PRE E only            => crash inside Instantiate (or its re-entrant code)
  PRE E + POST E, no M  => crash in GetComponent/SetParent/ED94A0/math/ToString zone
  + PRE M, no POST M    => crash IS the vtable call => v18 guards M
  + POST M              => crash in stat-getter zone or beyond (dump truncated part)
Cave @0x1B3BB00 (FARM1 zero run). Test build only.
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
LOGPLT = 0x1C3630
CAVE = 0x1B3BB00
TAG = b'NECR17C\x00'

# (name, site, orig_word, kind, target)
HOOKS = [
    ('E', 0x9986F0, None, 'bl', 0x838488),      # orig verified at runtime
    ('M', 0x998948, 0xE12FFF33, 'blx_r3', None),
]


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

# layout: 2 hooks x 16 words, then TAG + 4 fmts
HN = len(HOOKS)
CODE_N = 16 * HN
STR_BASE = CAVE + CODE_N * 4
strs = [TAG] + [(('PRE %s\x00' % n).encode()) for n, _, _, _, _ in HOOKS for _ in (0,)] + \
       [(('POST %s\x00' % n).encode()) for n, _, _, _, _ in HOOKS for _ in (0,)]
# order: TAG, PRE E, PRE M, POST E, POST M
offs, cur = {}, STR_BASE
for s in strs:
    while cur % 4:
        cur += 1
    offs[s] = cur
    cur += (len(s) + 3) // 4 * 4
assert cur <= 0x1B3BA60 + 129 * 4, 'cave overflow'

code = []
patch_sites = []
for i, (nm, site, orig, kind, target) in enumerate(HOOKS):
    cur_w, = struct.unpack('<I', d[site:site + 4])
    if kind == 'bl':
        assert bl_target(site, cur_w) == target, (nm, hex(cur_w))
        if orig is None:
            orig = cur_w
    else:
        assert cur_w == orig, (nm, hex(cur_w))
    base = CAVE + i * 16 * 4
    pre = offs[('PRE %s\x00' % nm).encode()]
    post = offs[('POST %s\x00' % nm).encode()]
    tag = offs[TAG]
    c = [
        0xE92D500F,                            # +0x00
        0xE3A00004,                            # +0x04
        adr_rd(1, base + 0x08, tag),           # +0x08
        adr_rd(2, base + 0x0C, pre),           # +0x0C
        bl(base + 0x10, LOGPLT),               # +0x10
        0xE8BD500F,                            # +0x14
        0xE92D5000,                            # +0x18
        bl(base + 0x1C, target) if kind == 'bl' else 0xE12FFF33,  # +0x1C
        0xE92D500F,                            # +0x20
        0xE3A00004,                            # +0x24
        adr_rd(1, base + 0x28, tag),           # +0x28
        adr_rd(2, base + 0x2C, post),          # +0x2C
        bl(base + 0x30, LOGPLT),               # +0x30
        0xE8BD500F,                            # +0x34 pop {r0-r3,r12,lr} (restore retval!)
        0xE8BD9000,                            # +0x38 pop {r12,pc}
        0x00000000,                            # +0x3C pad
    ]
    assert len(c) == 16
    code.extend(c)
    patch_sites.append((nm, site, cur_w, bl(site, base)))

cur_code = struct.unpack('<%dI' % CODE_N, d[CAVE:CAVE + CODE_N * 4])
if tuple(cur_code) == tuple(code) and all(
        struct.unpack('<I', d[s:s + 4])[0] == w for _, s, _, w in patch_sites):
    print('TRACE2 already applied, skip')
    sys.exit(0)
# cave must be free (or identical)
if tuple(cur_code) != tuple(code):
    if any(w != 0 for w in cur_code):
        sys.exit('CAVE not free @%s' % hex(CAVE))
    d[CAVE:CAVE + CODE_N * 4] = struct.pack('<%dI' % CODE_N, *code)
    for s, o in offs.items():
        d[o:o + len(s)] = s
    print('HOOKS wrote @%s' % hex(CAVE))
for nm, site, cur_w, want in patch_sites:
    exp_orig = [h for h in HOOKS if h[0] == nm][0]
    if cur_w != want:
        # must be original unpatched word
        d[site:site + 4] = struct.pack('<I', want)
        print('%s site %s: %s -> %s' % (nm, hex(site), hex(cur_w), hex(want)))
    else:
        print('%s site ok' % nm)
open(SO, 'wb').write(d)
print('TRACE2 applied')
