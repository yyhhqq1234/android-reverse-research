#!/usr/bin/env python3
"""V19a: G-grade safe gate (single variable).

Phase-1 verdicts baked in:
  H1: crashing G/P bodies both return via `pop {...,pc}`; every in-service
      body (TIERED/G1/G2/U/R) returns via `bx lr` or `b`-tails. Safe body
      uses pop-then-`bx lr` ONLY.
  H2: same TRAMP/split-push is safe on the Gamble side; the purchase side
      (5xP+1xG per buy) smashes. Keep the new body minimal (8 words).
  M14: caller r5 (natural grade) is clobbered by TRAMP (`mov r5,r0` before
      its push), so OFF path reloads it from our own frame [sp,#4].
      (t4 iron proof: TRAMP saves idx, not caller r5.)
  v19 iron rule: NEVER touch TRAMP head 0x1B3B7F4/0x1B3B7F8 (v18's VANILLA
      entries there are identity no-ops; a real write kills all 8 live gates).

Layout (t5 placement, farm tail, vanilla-zero, bl-reachable):
  site 0x999E74:  `bl 0x1B3BC8C`   (was v18 `mov r0,r5` = 0xE1A00005)
  body @0x1B3BC8C (8 words):
    E92D4070  push {r4-r6,lr}      ; save caller regs incl. live r5
    E3A00000  mov r0,#0            ; idx0 (G grade)
    EBxxxxxx  bl TRAMP 0x1B3B7F4   ; r0 = 1/0
    E3500000  cmp r0,#0
    059D0004  ldreq r0,[sp,#4]     ; OFF: natural grade (caller r5)
    13A00007  movne r0,#7          ; ON: G
    E8BD4070  pop {r4-r6,lr}       ; restore (NOT pop-pc: H1)
    E12FFF1E  bx lr                ; return to site+4 (native pop epilogue)

Usage:
  python patch_v19a.py --check   # asserts only, no write
  python patch_v19a.py --apply   # asserts + write live SO
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
SITE = 0x999E74
BODY = 0x1B3BC8C
TRAMP = 0x1B3B7F4

SITE_V18 = 0xE1A00005          # v18 vanilla-direct: mov r0,r5
TRAMP_W0 = 0xE1A05000          # iron rule: must stay
TRAMP_W1 = 0xE92D4070          # iron rule: must stay
OLD_G_W0 = 0xE92D4070          # old GATE_G @0x1B3B928 stays intact (dead)

BODY_WORDS = [
    0xE92D4070,
    0xE3A00000,
    None,          # bl TRAMP (computed)
    0xE3500000,
    0x059D0004,
    0x13A00007,
    0xE8BD4070,
    0xE12FFF1E,
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

    # 1. site must be v18 state
    cur = rd(d, SITE)
    assert cur == SITE_V18, ('site not v18', hex(SITE), hex(cur))
    print('site 0x999E74 = v18 (mov r0,r5) OK')

    # 2. placement must be zero (live)
    for i in range(8):
        w = rd(d, BODY + i * 4)
        assert w == 0, ('placement not zero', hex(BODY + i * 4), hex(w))
    print('placement 0x1B3BC8C +32B zero OK')

    # 3. iron rule: TRAMP head untouched (pre)
    assert rd(d, TRAMP) == TRAMP_W0, 'TRAMP head w0 moved!'
    assert rd(d, TRAMP + 4) == TRAMP_W1, 'TRAMP head w1 moved!'
    print('TRAMP head intact OK')

    # 4. old G body untouched (dead, stays dead this round)
    assert rd(d, 0x1B3B928) == OLD_G_W0, 'old GATE_G moved!'
    print('old GATE_G intact OK')

    site_bl = bl_encode(SITE, BODY)
    body_bl = bl_encode(BODY + 8, TRAMP)
    print('site bl ->', hex(site_bl), ' body bl ->', hex(body_bl))

    if mode == '--check':
        print('CHECK PASS (no write)')
        return

    # --apply
    d[SITE:SITE + 4] = struct.pack('<I', site_bl)
    words = [(body_bl if w is None else w) for w in BODY_WORDS]
    for i, w in enumerate(words):
        d[BODY + i * 4:BODY + i * 4 + 4] = struct.pack('<I', w)

    # post assertions
    assert rd(d, SITE) == site_bl
    assert rd(d, BODY + 8) == body_bl
    assert rd(d, TRAMP) == TRAMP_W0 and rd(d, TRAMP + 4) == TRAMP_W1
    open(SO, 'wb').write(d)
    print('APPLIED v19a (site + 8w body)')


main()
