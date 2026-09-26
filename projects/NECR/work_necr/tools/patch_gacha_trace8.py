#!/usr/bin/env python3
"""V17I: B04 guard on the 0x12896E0 trampoline's tail-jump (test).

v17h proved gate#1's trampoline call returns (POST B03) yet the crash lands
before gate#2's PRE with zero logs. B04 at 0x1289724 decides:
  CALLB4 without RETB4 on gate#1's run => fault inside resolved method
  CALLB4 + RETB4, crash later          => gate pops / straight-line

TAIL-JUMP CAVEATS (two hard lessons baked in):
  1. Site holds BX R2 (not BL). The trampoline already popped its frame, so
     [SP,#-4] == the trampoline's saved LR == true caller return. A plain
     BL-template would return into the literal pool.
  2. R12 is SCRATCH (callee may clobber). v17i#2 died at RETSTUB's BX R12
     because the resolved method trashed R12. Caller-ret now travels on the
     STACK (PUSH {R12} in DOCALL, POP {R12} in RETSTUB). LR is safe for the
     RETSTUB address itself (callees must preserve/spill LR correctly).
Layout (28 words + 32B strings = 144B):
  +0x00 CMP R2,#0 / +0x04 BNE DOCALL
  NULL (10 words): PUSH; LOG NULLB4; POP; R0=0; LDR PC,[SP,#-4]
  DOCALL (10 words): PUSH; LOG CALLB4; POP; R12=[SP,#-4]; PUSH R12;
                     LR=RETSTUB; BX R2
  RETSTUB (8 words): PUSH; LOG RETB4; POP; POP R12; BX R12
Cave: reclaims v17c E/M blocks (@0x1B3BB00, 168B; E/M brackets spent).
E-site 0x9986F0 and M-site 0x998948 restored to original words first.
A04/A05/B01/B02/B03/B2/N17D untouched.
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
LOGPLT = 0x1C3630
CAVE = 0x1B3BB00
CAVE_END = 0x1B3BBA8       # v17g guard starts here; do not cross
SITE = 0x1289724
E_SITE, E_CAVE = 0x9986F0, 0x1B3BB00
M_SITE, M_CAVE = 0x998948, 0x1B3BB40
TAG = b'N17I\x00'


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

# 1. restore E/M sites
origE = bl(E_SITE, 0x838488)
assert (origE & 0xFF000000) == 0xEB000000
curE, = struct.unpack('<I', d[E_SITE:E_SITE + 4])
if curE == bl(E_SITE, E_CAVE):
    d[E_SITE:E_SITE + 4] = struct.pack('<I', origE)
    print('restored E %s -> %s' % (hex(E_SITE), hex(origE)))
else:
    assert curE == origE, (hex(E_SITE), hex(curE))
origM = 0xE12FFF33
curM, = struct.unpack('<I', d[M_SITE:M_SITE + 4])
if curM == bl(M_SITE, M_CAVE):
    d[M_SITE:M_SITE + 4] = struct.pack('<I', origM)
    print('restored M %s -> %s' % (hex(M_SITE), hex(origM)))
else:
    assert curM == origM, (hex(M_SITE), hex(curM))

# 2. site check: must be BX R2 (or our own BL on re-run)
curS, = struct.unpack('<I', d[SITE:SITE + 4])
assert curS in (0xE12FFF12, bl(SITE, CAVE)), hex(curS)
print('tail site %s = %s OK' % (hex(SITE), hex(curS)))

# 3. reclaim fingerprint: E-block TAG 'NECR17C' at old STR_BASE
#    (skipped on re-run when our own TAG is present)
if bytes(d[CAVE + 104:CAVE + 112]) != TAG + b'\x00\x00\x00':
    assert bytes(d[0x1B3BB80:0x1B3BB88]) == b'NECR17C\x00', \
        bytes(d[0x1B3BB80:0x1B3BB88])

# 4. B04 block (28 words; positions are ABSOLUTE - keep in sync with list!)
base = CAVE
DO = base + 10 * 4          # DOCALL +0x28
RET = base + 20 * 4         # RETSTUB +0x50
STR_BASE = base + 28 * 4    # +0x70
tag, null_s, call_s, ret_s = STR_BASE, STR_BASE + 8, STR_BASE + 16, \
    STR_BASE + 24
code = [
    0xE3520000,                    # +0x00 CMP R2,#0
    bne(base + 0x04, DO),          # +0x04 BNE DOCALL
    # NULL +0x08:
    0xE92D500F,                    # PUSH {R0-R3,R12,LR}
    0xE3A00004,                    # MOV R0,#4
    adr_rd(1, base + 0x10, tag),
    adr_rd(2, base + 0x14, null_s),
    bl(base + 0x18, LOGPLT),
    0xE8BD500F,                    # POP {R0-R3,R12,LR}
    0xE3A00000,                    # MOV R0,#0
    0xE51DF004,                    # LDR PC,[SP,#-4]
    # DOCALL +0x28:
    0xE92D500F,                    # PUSH {R0-R3,R12,LR}
    0xE3A00004,
    adr_rd(1, base + 0x30, tag),
    adr_rd(2, base + 0x34, call_s),
    bl(base + 0x38, LOGPLT),
    0xE8BD500F,                    # POP (R2=target restored)
    0xE51DC004,                    # LDR R12,[SP,#-4] (caller return)
    0xE92D1000,                    # PUSH {R12} (ferry on STACK, not R12!)
    adr_rd(14, base + 0x48, RET),  # ADR LR,RETSTUB
    0xE12FFF12,                    # BX R2 (tail-jump, lr=RETSTUB)
    # RETSTUB +0x50:
    0xE92D500F,                    # PUSH {R0-R3,R12,LR}
    0xE3A00004,
    adr_rd(1, base + 0x58, tag),
    adr_rd(2, base + 0x5C, ret_s),
    bl(base + 0x60, LOGPLT),
    0xE8BD500F,                    # POP (retval r0 restored)
    0xE8BD1000,                    # POP {R12} (caller return off stack)
    0xE12FFF1C,                    # BX R12 (back to true caller)
]
assert len(code) == 28, len(code)
strings = TAG + b'\x00\x00\x00' + b'NULLB4\x00' + b'\x00' + b'CALLB4\x00' + \
    b'\x00' + b'RETB4\x00' + b'\x00\x00'
assert len(strings) == 32, len(strings)
total = 28 * 4 + 32
assert base + total <= CAVE_END, hex(base + total)

want_site = bl(SITE, base)
have_site = struct.unpack('<I', d[SITE:SITE + 4])[0] == want_site
cur = bytes(d[base:base + total])
if cur == struct.pack('<28I', *code) + strings and have_site:
    print('TRACE8 already applied, skip')
    open(SO, 'wb').write(d)  # persist any E/M restores above
    sys.exit(0)
d[base:base + total] = struct.pack('<28I', *code) + strings
for s, o in ((TAG, tag), (b'NULLB4\x00', null_s), (b'CALLB4\x00', call_s),
             (b'RETB4\x00', ret_s)):
    d[o:o + len(s)] = s
print('B04 wrote @%s (end %s)' % (hex(base), hex(base + total)))
# NOTE: BX->BL overwrites LR, but the trampoline already popped its frame,
# so the guard recovers the true caller return from [SP,#-4]. Safe.
d[SITE:SITE + 4] = struct.pack('<I', want_site)
print('site %s: %s -> %s (BX R2 -> BL guard)' % (hex(SITE), hex(curS), hex(want_site)))
open(SO, 'wb').write(d)
print('TRACE8 applied')
