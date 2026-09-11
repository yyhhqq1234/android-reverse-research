#!/usr/bin/env python3
"""V17P: A06 int-logger at 0x998CB0 (gate#1's return, test).

O1-O4 eliminated every trampoline run / gate body / flagreader as the poison,
yet the crash is byte-identical. Decisive question: WHAT does gate#1 return
on purchase? (r0=0 => resolved-run returns null/0 for purchase args => F1:
null/0 flows into stats and is deref'd downstream.)
Design: PRE-only jump (site holds ADD, not BL). Cave logs r0 via the %d
convention PROVEN by the outer v17b hook (LOGPLT@0x1C3630 takes r3=int when
the format contains %d): PUSH; MOV r0,#4; ADR r1,TAG; ADR r2,FMT; LDR
r3,[SP,#0] (saved r0); BL LOG; POP; B back to site+4. r0 restored, flags
clobbered (same as any call; site is straight-line, next flag use is
self-set... verified: 0x998CB4 MOV sets no flags, 0x998CBC CMP sets its own).
Cave: 0x1AAC2B0 (vanilla-zeros, 736B free). 8 words + 16B strings = 48B.
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
LOGPLT = 0x1C3630
CAVE = 0x1AAC2B0
SITE = 0x998CB0
ORIG_SITE = 0xE2857058   # ADD R7,R5,#88 (same V/M)
TAG = b'N17K\x00\x00\x00\x00'
FMT = b'G1=%d\x00\x00\x00'


def bl(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return 0xEB000000 | (off & 0xFFFFFF)


def b(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return 0xEA000000 | (off & 0xFFFFFF)


def adr_rd(rd, instr_addr, target):
    delta = target - (instr_addr + 8)
    assert 0 <= delta <= 0xFF, (hex(instr_addr), hex(target))
    return 0xE28F0000 | (rd << 12) | delta


d = bytearray(open(SO, 'rb').read())
cur, = struct.unpack('<I', d[SITE:SITE + 4])
assert cur in (ORIG_SITE, b(SITE, CAVE)), hex(cur)

tag_a = CAVE + 32
fmt_a = CAVE + 40
code = [
    0xE92D500F,                    # PUSH {R0-R3,R12,LR}
    0xE3A00004,                    # MOV R0,#4
    adr_rd(1, CAVE + 0x08, tag_a),
    adr_rd(2, CAVE + 0x0C, fmt_a),
    0xE59D3000,                    # LDR R3,[SP,#0] (saved r0)
    bl(CAVE + 0x14, LOGPLT),
    0xE8BD500F,                    # POP (r0 restored)
    b(CAVE + 0x1C, SITE + 4),      # B back
]
assert len(code) == 8
blob = struct.pack('<8I', *code) + TAG + FMT
assert len(blob) == 48
want_site = b(SITE, CAVE)
if bytes(d[CAVE:CAVE + 48]) == blob and cur == want_site:
    print('TRACE10 already applied, skip')
    sys.exit(0)
# reclaim: vanilla-zeros required (checked pre-write 2026-09-12)
d[CAVE:CAVE + 48] = blob
d[SITE:SITE + 4] = struct.pack('<I', want_site)
open(SO, 'wb').write(d)
print('A06 wrote @%s (end %s); site %s -> B cave' %
      (hex(CAVE), hex(CAVE + 48), hex(SITE)))
print('TRACE10 applied')
