#!/usr/bin/env python3
"""V19b: U/R gate bodies save+restore r5 (in-place, 4 words).

Root cause (device-proven 2026-09-12): upgrade taps crash in BOTH switch
states, #00 pc 0x1436C34 (= U-site+4), fault 0x1c, r5=4. The U body
(0x1B3B9C4) never saves r5 (t4 assumed the caller was r5-free - wrong for
this caller); TRAMP's `mov r5,r0` writes idx=4 into r5 on EVERY invocation
(ON and OFF alike); native code past site+4 uses r5 as a pointer -> +0x1c
null deref. R body (0x1B3B9A8, free-refresh, same template) shares the bug.

Fix: add r5 (+r6 filler for 8B stack alignment, M5 lesson) to the push/pop
sets. 6 regs = 24B, still 8-aligned. Same word count, in-place, neighbours
untouched. Expected full-file diff: exactly 4 words.

  U @0x1B3B9C4: push E92D4013 -> E92D4070|3 = E92D4073
                pop  E8BD4013 -> E8BD4073
  R @0x1B3B9A8: same pair replacement.

Usage:
  python patch_v19b_ur.py --check
  python patch_v19b_ur.py --apply
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
U = 0x1B3B9C4
R = 0x1B3B9A8
TRAMP = 0x1B3B7F4

PUSH_OLD = 0xE92D4013  # push {r0,r1,r4,lr}
POP_OLD = 0xE8BD4013   # pop {r0,r1,r4,lr}
PUSH_NEW = 0xE92D4073  # push {r0,r1,r4-r6,lr} (24B, aligned)
POP_NEW = 0xE8BD4073

# v18/v19a site words (must stay; proves sites still route to bodies)
U_SITE, U_SITE_W = 0x1436C30, 0xEB1C1363
R_SITE, R_SITE_W = 0x1219B84, 0xEB248787
TRAMP_W0, TRAMP_W1 = 0xE1A05000, 0xE92D4070


def rd(d, addr):
    return struct.unpack('<I', d[addr:addr + 4])[0]


def main():
    mode = sys.argv[1] if len(sys.argv) > 1 else '--check'
    assert mode in ('--check', '--apply'), mode
    d = bytearray(open(SO, 'rb').read())

    assert rd(d, U_SITE) == U_SITE_W, 'U site moved!'
    assert rd(d, R_SITE) == R_SITE_W, 'R site moved!'
    print('sites intact OK')
    assert rd(d, TRAMP) == TRAMP_W0 and rd(d, TRAMP + 4) == TRAMP_W1
    print('TRAMP head intact OK')
    for nm, base in (('U', U), ('R', R)):
        assert rd(d, base) == PUSH_OLD, (nm, 'push moved!', hex(rd(d, base)))
        assert rd(d, base + 16) == POP_OLD, (nm, 'pop moved!')
    print('U/R push/pop pairs as expected OK')

    if mode == '--check':
        print('CHECK PASS (no write)')
        return

    for base in (U, R):
        d[base:base + 4] = struct.pack('<I', PUSH_NEW)
        d[base + 16:base + 20] = struct.pack('<I', POP_NEW)

    for nm, base in (('U', U), ('R', R)):
        assert rd(d, base) == PUSH_NEW
        assert rd(d, base + 16) == POP_NEW
    assert rd(d, TRAMP) == TRAMP_W0 and rd(d, TRAMP + 4) == TRAMP_W1
    open(SO, 'wb').write(d)
    print('APPLIED v19b (U/R r5 save, 4 words)')


main()
