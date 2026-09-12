#!/usr/bin/env python3
"""V19c: Max-plus safe gate (single variable, last one).

Design (Phase-1 constraints):
  H1: old P body died with `pop {..,pc}` x2 exits; safe body returns via
      pop-regs + `bx lr` on BOTH exits (G1 precedent).
  H2: TIERED proves an internal `bl Range` on a purchase-path body is safe;
      OFF path replays the native roll inline (4 movs + bl Range).
  r5: caller r5 is live across plus sites (add r7,r5,#58 post-call); the
      3 split pushes save it first, post-TRAMP r5 is never read.
  Split-push shape kept (M16 Houdini lesson: no 8+ reg single LDM/STM).

Layout (t5 farm tail; v19a occupies 0x1B3BC8C+8w; 21w remain):
  5 sites 0x998CAC/D0C/D40/D74/DA8: `bl 0x1B3BCAC` (was vanilla bl Range)
  body @0x1B3BCAC (21 words):
    +0  E92D0078  push {r3-r6}
    +4  E92D0780  push {r7-r10}
    +8  E92D4800  push {fp,lr}
    +12 E3A00002  mov r0,#2
    +16 EB..      bl TRAMP 0x1B3B7F4
    +20 E3500000  cmp r0,#0
    +24 0A000004  beq OFF
    +28 E3A00000  ON: mov r0,#0 (forced top bucket)
    +32 E8BD0078  pop {r3-r6}
    +36 E8BD0780  pop {r7-r10}
    +40 E8BD4800  pop {fp,lr}
    +44 E12FFF1E  bx lr
    +48 E3A00000  OFF: mov r0,#0
    +52 E3041E21  movw r1,#0x4E21
    +56 E3A02000  mov r2,#0
    +60 E3A09000  mov sb,#0
    +64 EB..      bl RANGE 0x12896E0
    +68 E8BD0078  pop {r3-r6}
    +72 E8BD0780  pop {r7-r10}
    +76 E8BD4800  pop {fp,lr}
    +80 E12FFF1E  bx lr

Usage:
  python patch_v19c_p.py --check
  python patch_v19c_p.py --apply
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
SITES_V18 = {
    0x998CAC: 0xEB23C28B,
    0x998D0C: 0xEB23C273,
    0x998D40: 0xEB23C266,
    0x998D74: 0xEB23C259,
    0x998DA8: 0xEB23C24C,
}
BODY = 0x1B3BCAC
TRAMP = 0x1B3B7F4
RANGE = 0x12896E0
TRAMP_W0, TRAMP_W1 = 0xE1A05000, 0xE92D4070
OLD_P_W0 = 0xE92D0078  # old GATE_P @0x1AABE2C stays dead & intact

# None = computed branch; ('beqOFF',) placeholder resolved in builder
BODY_TMPL = [
    0xE92D0078, 0xE92D0780, 0xE92D4800, 0xE3A00002, None, 0xE3500000,
    0x0A000004, 0xE3A00000, 0xE8BD0078, 0xE8BD0780, 0xE8BD4800, 0xE12FFF1E,
    0xE3A00000, 0xE3041E21, 0xE3A02000, 0xE3A09000, None, 0xE8BD0078,
    0xE8BD0780, 0xE8BD4800, 0xE12FFF1E,
]


def bl_encode(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return 0xEB000000 | (off & 0xFFFFFF)


def rd(d, addr):
    return struct.unpack('<I', d[addr:addr + 4])[0]


def main():
    mode = sys.argv[1] if len(sys.argv) > 1 else '--check'
    assert mode in ('--check', '--apply'), mode
    d = bytearray(open(SO, 'rb').read())

    for s, want in SITES_V18.items():
        cur = rd(d, s)
        assert cur == want, ('site not v18', hex(s), hex(cur))
    print('5 sites v18 (vanilla bl Range) OK')

    for i in range(21):
        w = rd(d, BODY + i * 4)
        assert w == 0, ('placement not zero', hex(BODY + i * 4), hex(w))
    print('placement 0x1B3BCAC +84B zero OK')

    assert rd(d, TRAMP) == TRAMP_W0 and rd(d, TRAMP + 4) == TRAMP_W1
    print('TRAMP head intact OK')
    assert rd(d, 0x1AABE2C) == OLD_P_W0, 'old GATE_P moved!'
    print('old GATE_P intact OK')
    # v19a must still be in place (single-variable discipline)
    assert rd(d, 0x999E74) == 0xEB468784, 'v19a site moved!'
    assert rd(d, 0x1B3BC8C) == 0xE92D4070, 'v19a body moved!'
    print('v19a intact OK')

    # beq OFF sanity: template word must equal computed offset
    off_words = ((48 - 24) - 8) // 4  # OFF(+48) - (beqAddr(+24)+8)
    assert off_words == 4, off_words

    words = list(BODY_TMPL)
    words[4] = bl_encode(BODY + 16, TRAMP)
    words[16] = bl_encode(BODY + 64, RANGE)
    site_bls = {s: bl_encode(s, BODY) for s in SITES_V18}
    print('site bls:', ' '.join(hex(v) for v in site_bls.values()))

    if mode == '--check':
        print('CHECK PASS (no write)')
        return

    for s, bl in site_bls.items():
        d[s:s + 4] = struct.pack('<I', bl)
    for i, w in enumerate(words):
        d[BODY + i * 4:BODY + i * 4 + 4] = struct.pack('<I', w)

    for s, bl in site_bls.items():
        assert rd(d, s) == bl
    assert rd(d, BODY + 16) == words[4] and rd(d, BODY + 64) == words[16]
    assert rd(d, TRAMP) == TRAMP_W0 and rd(d, TRAMP + 4) == TRAMP_W1
    open(SO, 'wb').write(d)
    print('APPLIED v19c (5 sites + 21w body)')


main()
