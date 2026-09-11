#!/usr/bin/env python3
"""G-GUARD: GambleData.AddthisGambleItem tail null-guard (read-only audit -> minimal fix).

Root: crash 19:06:35.572 AddthisGambleItem -> .587 SIGSEGV pc=0, r7=0, r3!=0.
Site 0x12185B4 = blx r7 (E12FFF37), r7=[r0,#0x174] from iconImage chain.
If r7==0, blx -> pc=0. r7==0 matches crash dump; AddItem blx r3 excluded (r3!=0).

Fix: site -> bl GUARD; GUARD at 0x1B3BA60 (129-word zero run in vanilla, verified free):
  cmp r7,#0        ; E3570000
  bxeq lr          ; 012FFF1E -> skip call, resume at 0x12185B8
  push {lr}        ; E92D4000
  blx r7           ; E12FFF37
  pop {pc}         ; E8BD8000 -> resume at 0x12185B8
Idempotent, preserves registers except LR save/restore, no MIX4/GOD/G1/G2 touch.
"""
import os
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
SITE = 0x12185B4
GUARD = 0x1B3BA60
ORIG_SITE = 0xE12FFF37
GUARD_WORDS = (0xE3570000, 0x012FFF1E, 0xE92D4000, 0xE12FFF37, 0xE8BD8000)


def bl(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return 0xEB000000 | (off & 0xFFFFFF)


def put(d, addr, words):
    d[addr:addr + 4 * len(words)] = struct.pack('<%dI' % len(words), *words)


if not os.path.isfile(SO):
    sys.exit(f'missing {SO}')
d = bytearray(open(SO, 'rb').read())
cur_site, = struct.unpack('<I', d[SITE:SITE + 4])
want_bl = bl(SITE, GUARD)
cur_guard = struct.unpack('<%dI' % len(GUARD_WORDS), d[GUARD:GUARD + 4 * len(GUARD_WORDS)])
if cur_site == want_bl and tuple(cur_guard) == GUARD_WORDS:
    print('G-GUARD already applied, skip')
    sys.exit(0)
if cur_site != ORIG_SITE and cur_site != want_bl:
    sys.exit(f'SITE unexpected @{hex(SITE)}: {hex(cur_site)} != {hex(ORIG_SITE)}')
if tuple(cur_guard) != GUARD_WORDS:
    if any(w != 0 for w in cur_guard):
        sys.exit(f'GUARD cave not free @{hex(GUARD)}: {[hex(w) for w in cur_guard]}')
    put(d, GUARD, GUARD_WORDS)
    print(f'GUARD wrote @{hex(GUARD)}')
else:
    print('GUARD ok')
put(d, SITE, (want_bl,))
print(f'SITE @{hex(SITE)}: {hex(cur_site)} -> {hex(want_bl)} (bl GUARD)')
open(SO, 'wb').write(d)
print('G-GUARD applied')
