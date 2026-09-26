#!/usr/bin/env python3
"""V19d: Max-plus MINIMAL-push body (single variable: body bytes only).

Why (v19c post-mortem, device-proven 2026-09-12):
  v19c (split 3-push/10-reg + bx lr) crashes ON and OFF with the ORIGINAL
  signature (SIGSEGV SI_USER fault --------, Houdini misreport class).
  v19a G-safe (ONE push {r4-r6,lr} + bx lr) works. TIERED (pushless) works.
  G1 (2 pushes, max {r4-r6}) works. Structural pattern across all bodies:
  NO working body saves fp/sl/r7-r10; BOTH P forms (old + v19c) do.
  Prime suspect: fp-including / 10-reg push volume on the AddItem tail
  confuses Houdini's frame tracking -> return smash (H1 pop-pc was only
  G's trigger; P has a second one).
  Decisive test: body saving ONLY {r5,lr} (8B, aligned). r4/r6/r7+ are
  untouched by us, preserved by TRAMP (r4-r6) and Range (r4-r11) per ABI;
  r0-r3/sb are Range args (caller-dead, as in native). Post-TRAMP r5 never
  read (OFF replays movs, never touches r5).

Layout: sites UNCHANGED (5x bl 0x1B3BCAC from v19c); body slot overwritten:
  +0  E92D4020  push {r5,lr}
  +4  E3A00002  mov r0,#2
  +8  EB..      bl TRAMP 0x1B3B7F4
  +12 E3500000  cmp r0,#0
  +16 0A000002  beq OFF
  +20 E3A00000  ON: mov r0,#0
  +24 E8BD4020  pop {r5,lr}
  +28 E12FFF1E  bx lr
  +32 E3A00000  OFF: mov r0,#0
  +36 E3041E21  movw r1,#0x4E21
  +40 E3A02000  mov r2,#0
  +44 E3A09000  mov sb,#0
  +48 EB..      bl RANGE 0x12896E0
  +52 E8BD4020  pop {r5,lr}
  +56 E12FFF1E  bx lr
  +60..+80 zero (slot tail kept clean)

Usage:
  python patch_v19d_pmin.py --check
  python patch_v19d_pmin.py --apply
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
SITES_V19C = {
    0x998CAC: 0xEB468BFE,
    0x998D0C: 0xEB468BE6,
    0x998D40: 0xEB468BD9,
    0x998D74: 0xEB468BCC,
    0x998DA8: 0xEB468BBF,
}
BODY = 0x1B3BCAC
TRAMP = 0x1B3B7F4
RANGE = 0x12896E0
TRAMP_W0, TRAMP_W1 = 0xE1A05000, 0xE92D4070
V19C_W0 = 0xE92D0078  # v19c body head must be present (single variable)

TMPL = [
    0xE92D4020, 0xE3A00002, None, 0xE3500000,
    0x0A000002, 0xE3A00000, 0xE8BD4020, 0xE12FFF1E,
    0xE3A00000, 0xE3041E21, 0xE3A02000, 0xE3A09000,
    None, 0xE8BD4020, 0xE12FFF1E,
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

    for s, want in SITES_V19C.items():
        cur = rd(d, s)
        assert cur == want, ('site not v19c', hex(s), hex(cur))
    print('5 sites v19c (bl body) OK')
    assert rd(d, BODY) == V19C_W0, 'body not v19c!'
    print('body slot holds v19c OK')
    assert rd(d, TRAMP) == TRAMP_W0 and rd(d, TRAMP + 4) == TRAMP_W1
    print('TRAMP head intact OK')

    words = list(TMPL)
    words[2] = bl_encode(BODY + 8, TRAMP)
    words[12] = bl_encode(BODY + 48, RANGE)

    if mode == '--check':
        print('body bls:', hex(words[2]), hex(words[12]))
        print('CHECK PASS (no write)')
        return

    for i, w in enumerate(words):
        d[BODY + i * 4:BODY + i * 4 + 4] = struct.pack('<I', w)
    for i in range(len(words), 21):  # keep slot tail zero
        d[BODY + i * 4:BODY + i * 4 + 4] = b'\x00\x00\x00\x00'

    assert rd(d, BODY + 8) == words[2] and rd(d, BODY + 48) == words[12]
    assert rd(d, BODY + 60) == 0 and rd(d, BODY + 80) == 0
    assert rd(d, TRAMP) == TRAMP_W0 and rd(d, TRAMP + 4) == TRAMP_W1
    open(SO, 'wb').write(d)
    print('APPLIED v19d (minimal-push P body, sites untouched)')


main()
