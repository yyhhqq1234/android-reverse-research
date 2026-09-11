#!/usr/bin/env python3
"""Reusable ARM hook-block soundness checker for the NECR v17 test build.

Decodes the WRITTEN bytes of every live hook cave in
  NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so   (file offsets == RVAs)
and verifies structural correctness per block:
  (a) final return present/correct
  (b) every ADR lands exactly on its string
  (c) every BL hits 0x1C3630 (LOGPLT) or the documented original target
  (d) push/pop balanced on ALL paths (NULL-skip + DOCALL)
  (e) strings intact (TAG + messages)

Known bug classes (all bitten us before) are flagged explicitly:
  - missing final return (pop {r12,pc} / pop {pc} / bx lr / ldr pc)
  - ADR position constant off by 4 (lands in padding / mid-string)
  - R12 carrying a live value across a BL/BX (R12/IP is scratch: any
    R12 write outside push/pop lists that reaches a call is a FAIL)
  - wrong log entry: BL must hit 0x1C3630 exactly, not +4 (PLT+4 trap)

Usage:  python audit_hooks.py [path-to-so]
Exit 0 iff every block PASSes. Read-only: never writes the SO.

Cave map (v17i + v17j state):
  v17b outer dispatch : site 0x1218548 -> cave resolved from site BL
  G-GUARD             : site 0x12185B4 -> 0x1B3BA60 (5 words)
  E/M                 : vanilla-restored (0x9986F0 / 0x998948)
  A04 / A05 PRE-only  : sites 0x998B40 / 0x998C94 -> ~0x1AAC120 / ~0x1AAC148
  B01 / B02 PRE/POST  : sites 0x999E20 / 0x999E74 -> ~0x1AAC170 / +0x40
  B03 PRE/POST        : site 0x1AABE68 -> 0x1AAC0A8 (reclaims ex-A01)
  B2 NULL-skip+log    : site 0x12780B8 -> 0x1B3BBA8
  B05 / B06 PRE/POST  : sites 0x998F1C / 0x998F34 -> 0x1B3BB00 / 0x1B3BB40
  N17D x4 NULL-skip   : sites 0x99911C/0x9991AC/0x999224/0x99925C
                        -> 0x1AABE78 / +0x8C / +0x118 / +0x1A4
  BX site 0x1289724   : must be vanilla 0xE12FFF12 (B04 neutralized).
  NOTE: dead B04 bytes formerly at 0x1B3BB00 were intentionally reclaimed
  by B05/B06 -- the checker does NOT expect B04 and does not flag the
  leftover "T E" tail at 0x1B3BB9B (old v17c POST-E remnant, unreferenced).
"""
import struct
import sys

SO_DEFAULT = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
LOGPLT = 0x1C3630

PUSH7 = 0xE92D500F      # push {r0-r3,r12,lr}
POP7 = 0xE8BD500F       # pop  {r0-r3,r12,lr}
PUSH2 = 0xE92D5000      # push {r12,lr}
POP_PC = 0xE8BD9000     # pop  {r12,pc}
POP_R12 = 0xE8BD1000    # pop  {r12}
MOV_R0_4 = 0xE3A00004
MOV_R0_0 = 0xE3A00000


def u32(d, a):
    return struct.unpack('<I', d[a:a + 4])[0]


def bl_target(frm, w):
    off = w & 0xFFFFFF
    off -= 0x1000000 if off & 0x800000 else 0
    return (frm + 8 + off * 4) & 0xFFFFFFFF


def is_bl(w):
    return (w >> 25) & 7 == 5 and ((w >> 24) & 1) == 1 and ((w >> 28) & 15) == 14


def is_b(w):
    return (w >> 25) & 7 == 5 and ((w >> 24) & 1) == 0


def is_adr(w):
    # ADD Rd, PC, #imm  (E28Fxxxx, cond AL)
    return (w & 0xFFFF0000) == 0xE28F0000 and ((w >> 16) & 15) == 15


def adr_target(instr, w):
    return (instr + 8 + (w & 0xFFF)) & 0xFFFFFFFF


def is_bne(w):
    return w == 0x1A000000 | (w & 0xFFFFFF) and ((w >> 28) & 15) == 1 \
        and ((w >> 25) & 7) == 5 and ((w >> 24) & 1) == 0


def touches_r12(w):
    """True if instruction reads/writes R12 outside a push/pop list word."""
    if w in (PUSH7, POP7, PUSH2, POP_PC, POP_R12):
        return False
    if ((w >> 25) & 7) == 4:
        # LDM/STM: bit12 in register list
        return bool((w >> 12) & 1)
    if ((w >> 25) & 7) in (2, 3) and not ((w >> 25) & 7 == 3 and ((w >> 5) & 1)):
        # LDR/STR: Rd or Rn == 12
        return ((w >> 12) & 15) == 12 or ((w >> 16) & 15) == 12
    if ((w >> 25) & 7) in (0, 1):
        # data processing (covers MOV/ADD/ADR/CMP...): Rd/Rn == 12
        opc = (w >> 21) & 15
        rd = (w >> 12) & 15
        rn = (w >> 16) & 15
        if opc in (8, 9, 10, 11):  # TST/TEQ/CMP/CMN: no Rd
            return rn == 12
        return rd == 12 or rn == 12
    if (w & 0x0FFFFFF0) in (0x012FFF10, 0x012FFF30):
        return (w & 15) == 12 or ((w >> 12) & 15) == 12
    return False


class Block:
    def __init__(self, name):
        self.name = name
        self.ok = True
        self.lines = []

    def check(self, cond, msg):
        self.lines.append(('PASS' if cond else 'FAIL') + ' ' + msg)
        if not cond:
            self.ok = False

    def note(self, msg):
        self.lines.append('note ' + msg)


def check_push_pop(words, base, blk, label):
    """Net stack effect of a straight-line word list must be zero (in words)."""
    depth = 0
    for i, w in enumerate(words):
        a = base + i * 4
        if w == PUSH7:
            depth += 6
        elif w == POP7:
            depth -= 6
        elif w == PUSH2:
            depth += 2
        elif w in (POP_PC,):
            depth -= 2
        elif w == POP_R12:
            depth -= 1
        elif w == 0xE28DD018:  # add sp,sp,#24 (v17b RET-log discard)
            depth -= 6
        elif w == 0xE92D4000:  # push {lr}
            depth += 1
        elif w == 0xE8BD8000:  # pop {pc}
            depth -= 1
    blk.check(depth == 0, '%s push/pop net=%d words (base %s)'
              % (label, depth, hex(base)))


def check_no_r12_ferry(words, base, blk, label):
    bad = []
    for i, w in enumerate(words):
        if touches_r12(w):
            bad.append('%s:w%d=%s' % (hex(base + i * 4), w & 0xFFFFFFFF
                                      and hex(w)))
    blk.check(not bad, '%s no R12 live-value ferry %s'
              % (label, bad if bad else '(clean)'))


def check_bl_targets(words, base, blk, expect):
    """expect: dict {offset: target}; every other BL must hit LOGPLT."""
    for i, w in enumerate(words):
        a = base + i * 4
        if is_bl(w):
            t = bl_target(a, w)
            if i * 4 in expect:
                blk.check(t == expect[i * 4],
                          '%s+%s bl->%s (want %s) w=%s'
                          % (hex(base), hex(i * 4), hex(t),
                             hex(expect[i * 4]), hex(w)))
            else:
                blk.check(t == LOGPLT,
                          '%s+%s log-bl->%s (want %s) w=%s'
                          % (hex(base), hex(i * 4), hex(t),
                             hex(LOGPLT), hex(w)))
                if t == LOGPLT + 4:
                    blk.lines.append('FAIL log-entry +4 trap at %s' % hex(a))


def check_adr(words, base, blk, adr_expect):
    """adr_expect: dict {offset: (rd, target)}."""
    for off, (rd, tgt) in sorted(adr_expect.items()):
        w = words[off // 4]
        a = base + off
        blk.check(is_adr(w) and ((w >> 12) & 15) == rd,
                  '%s+%s is ADR r%d w=%s' % (hex(base), hex(off), rd, hex(w)))
        if is_adr(w):
            got = adr_target(a, w)
            blk.check(got == tgt, '%s+%s adr->%s (want %s)'
                      % (hex(base), hex(off), hex(got), hex(tgt)))


def check_ascii(d, addr, want, blk, label):
    got = bytes(d[addr:addr + len(want)])
    blk.check(got == want, '%s %s=%r (want %r)'
              % (label, hex(addr), got, want))


# ---------------------------------------------------------------- templates

def audit_preonly(d, name, site, base, tag, lab, doc_target):
    """7-word PRE-only hook: push;mov;adr;adr;bl;pop;b TARGET + TAG + lab."""
    b = Block(name)
    site_w = u32(d, site)
    b.check(is_bl(site_w), 'site %s holds BL w=%s' % (hex(site), hex(site_w)))
    if is_bl(site_w):
        b.check(bl_target(site, site_w) == base,
                'site %s bl->%s (want cave %s)'
                % (hex(site), hex(bl_target(site, site_w)), hex(base)))
    words = [u32(d, base + i * 4) for i in range(7)]
    b.check(words[0] == PUSH7, '+0x00 push w=%s' % hex(words[0]))
    b.check(words[1] == MOV_R0_4, '+0x04 mov r0,#4 w=%s' % hex(words[1]))
    check_adr(words, base, b, {0x08: (1, base + 28), 0x0C: (2, base + 36)})
    check_bl_targets(words, base, b, {})
    b.check(words[5] == POP7, '+0x14 pop w=%s' % hex(words[5]))
    b.check(is_b(words[6]) and ((words[6] >> 28) & 15) == 14,
            '+0x18 tail-B w=%s' % hex(words[6]))
    if is_b(words[6]):
        b.check(bl_target(base + 0x18, words[6]) == doc_target,
                '+0x18 b->%s (want %s)'
                % (hex(bl_target(base + 0x18, words[6])), hex(doc_target)))
    check_ascii(d, base + 28, tag, b, 'TAG')
    check_ascii(d, base + 36, lab, b, 'LAB')
    check_push_pop(words[:6], base, b, 'PRE path')
    check_no_r12_ferry(words[:6], base, b, 'PRE path')
    return b


def audit_prepost16(d, name, site, base, tag, pre_s, post_s, doc_target,
                    str_addrs=None, code_len=16):
    """16-word PRE/POST hook (trace2/5/7/9 template, retval-safe)."""
    b = Block(name)
    site_w = u32(d, site)
    b.check(is_bl(site_w), 'site %s holds BL w=%s' % (hex(site), hex(site_w)))
    if is_bl(site_w):
        b.check(bl_target(site, site_w) == base,
                'site %s bl->%s (want cave %s)'
                % (hex(site), hex(bl_target(site, site_w)), hex(base)))
    words = [u32(d, base + i * 4) for i in range(code_len)]
    exp = {0x00: PUSH7, 0x04: MOV_R0_4, 0x14: POP7, 0x18: PUSH2,
           0x20: PUSH7, 0x24: MOV_R0_4, 0x34: POP7, 0x38: POP_PC}
    for off, want in exp.items():
        b.check(words[off // 4] == want,
                '+%s %s (got %s)' % (hex(off), hex(want),
                                     hex(words[off // 4])))
    if str_addrs:
        tag_a, pre_a, post_a = str_addrs
    else:
        # default: strings computed from layout is caller-provided; fail safe
        tag_a = pre_a = post_a = None
    if tag_a is not None:
        check_adr(words, base, b, {0x08: (1, tag_a), 0x0C: (2, pre_a),
                                   0x28: (1, tag_a), 0x2C: (2, post_a)})
    # middle call word: BL original or BLX rx
    mid = words[0x1C // 4]
    full = list(words)
    if doc_target is not None:
        b.check(is_bl(mid) and bl_target(base + 0x1C, mid) == doc_target,
                '+0x1C orig-bl->%s (want %s) w=%s'
                % (hex(bl_target(base + 0x1C, mid)) if is_bl(mid) else '?',
                   hex(doc_target), hex(mid)))
        check_bl_targets(full, base, b, {0x1C: doc_target})
    else:
        b.check(mid in (0xE12FFF32, 0xE12FFF33, 0xE12FFF35, 0xE12FFF36),
                '+0x1C blx rx passthrough w=%s' % hex(mid))
        check_bl_targets(words, base, b, {})
    b.check(words[0x3C // 4] == 0,
            '+0x3C pad zero (got %s)' % hex(words[0x3C // 4]))
    # final return present?
    b.check(words[0x38 // 4] == POP_PC, '+0x38 final pop {r12,pc}')
    check_ascii(d, tag_a, tag, b, 'TAG')
    check_ascii(d, pre_a, pre_s, b, 'PRE')
    check_ascii(d, post_a, post_s, b, 'POST')
    check_push_pop(words[:15], base, b, 'PRE+DOCALL+POST (excl pad)')
    check_no_r12_ferry([w for w in words if w != 0], base, b, 'block')
    return b


def audit_nullskip25(d, name, site, base, rx, tag, null_s, call_s, ret_s,
                     str_addrs=None):
    """25-word NULL-skip+log guard (v17d/v17g template)."""
    b = Block(name)
    site_w = u32(d, site)
    docall = base + 10 * 4
    b.check(is_bl(site_w), 'site %s holds BL w=%s' % (hex(site), hex(site_w)))
    if is_bl(site_w):
        b.check(bl_target(site, site_w) == base,
                'site %s bl->%s (want cave %s)'
                % (hex(site), hex(bl_target(site, site_w)), hex(base)))
    words = [u32(d, base + i * 4) for i in range(25)]
    b.check(words[0] == (0xE3500000 | (rx << 16)),
            '+0x00 cmp r%d,#0 w=%s' % (rx, hex(words[0])))
    b.check(((words[1] >> 28) & 15) == 1 and bl_target(base + 4, words[1] | 0xEB000000) == docall
            if True else False,
            '+0x04 bne DOCALL->%s w=%s' % (hex(docall), hex(words[1])))
    # NULL path +0x08..+0x24 (indices 2..9)
    b.check(words[2] == PUSH7, 'NULL +0x08 push w=%s' % hex(words[2]))
    b.check(words[3] == MOV_R0_4, 'NULL +0x0C mov w=%s' % hex(words[3]))
    b.check(words[7] == POP7, 'NULL +0x1C pop w=%s' % hex(words[7]))
    b.check(words[8] == MOV_R0_0, 'NULL +0x20 r0=0 w=%s' % hex(words[8]))
    b.check(words[9] == POP_PC, 'NULL +0x24 skip-return pop {r12,pc} w=%s'
            % hex(words[9]))
    # DOCALL +0x28.. (indices 10..17)
    b.check(words[10] == PUSH7, 'DOCALL +0x28 push w=%s' % hex(words[10]))
    b.check(words[15] == POP7, 'DOCALL +0x3C pop w=%s' % hex(words[15]))
    b.check(words[16] == PUSH2, 'DOCALL +0x40 push{r12,lr} w=%s'
            % hex(words[16]))
    b.check(words[17] == (0xE12FFF30 | rx),
            'DOCALL +0x44 blx r%d w=%s' % (rx, hex(words[17])))
    b.check(words[18] == PUSH7, 'RET +0x48 push w=%s' % hex(words[18]))
    b.check(words[23] == POP7, 'RET +0x5C pop-restore w=%s' % hex(words[23]))
    b.check(words[24] == POP_PC if len(words) > 24 else False,
            'DOCALL final +0x60 pop {r12,pc} (THE RETURN) w=%s'
            % hex(words[24]))
    if str_addrs:
        tag_a, null_a, call_a, ret_a = str_addrs
        check_adr(words, base, b, {0x10: (1, tag_a), 0x14: (2, null_a),
                                   0x30: (1, tag_a), 0x34: (2, call_a),
                                   0x50: (1, tag_a), 0x54: (2, ret_a)})
        check_ascii(d, tag_a, tag, b, 'TAG')
        check_ascii(d, null_a, null_s, b, 'NULL')
        check_ascii(d, call_a, call_s, b, 'CALL')
        check_ascii(d, ret_a, ret_s, b, 'RET')
    check_bl_targets(words, base, b, {})
    # FULL paths including each terminal return (imbalance must FAIL):
    # NULL path indices 2..9 (push..skip-pop{pc}); DOCALL indices 10..24.
    null_depth = 0
    for w in words[2:10]:
        if w == PUSH7:
            null_depth += 6
        elif w == POP7:
            null_depth -= 6
        elif w == POP_PC:
            null_depth -= 2
    doc_depth = 0
    for w in words[10:25]:
        if w in (PUSH7,):
            doc_depth += 6
        elif w == POP7:
            doc_depth -= 6
        elif w == PUSH2:
            doc_depth += 2
        elif w == POP_PC:
            doc_depth -= 2
    b.check(null_depth == 0, 'NULL path (incl skip-return) push/pop net=%d '
             'words (base %s)' % (null_depth, hex(base + 8)))
    b.check(doc_depth == 0, 'DOCALL path (incl return) push/pop net=%d words'
             ' (base %s)' % (doc_depth, hex(base + 0x28)))
    if null_depth != 0 and doc_depth == 0:
        b.note('FINDING: NULL-skip return pop {r12,pc} has no matching push'
               ' (net %d); entry lr=site+4 is intact at that point, so the'
               ' sound skip-return is `bx lr` (G-GUARD bxeq-lr style). If'
               ' rX==0 ever fires: SP+=%d AND pc=caller-stack word (likely'
               ' SIGSEGV). LATENT: NULL path never taken in observed runs'
               ' (no NULL* log); DOCALL side fully sound, so CALL/RET'
               ' bracketing conclusions stand. v18 must use bx lr.'
               % (null_depth, -null_depth * 4))
    check_no_r12_ferry([w for w in words], base, b, 'block')
    return b


def main():
    so = sys.argv[1] if len(sys.argv) > 1 else SO_DEFAULT
    d = open(so, 'rb').read()
    out = []

    # -- outer dispatch v17b (cave resolved from site BL) --
    {
        'ignore': None,
    }
    b = Block('v17b outer dispatch site 0x1218548')
    sw = u32(d, 0x1218548)
    b.check(is_bl(sw), 'site holds BL w=%s' % hex(sw))
    cave = bl_target(0x1218548, sw) if is_bl(sw) else None
    if cave is not None:
        b.check(cave == 0x1B3BA80, 'cave %s (want 0x1b3ba80)' % hex(cave))
        w = [u32(d, cave + i * 4) for i in range(16)]
        b.check(w[0] == PUSH7, '+0x00 push')
        check_adr(w, cave, b, {0x08: (1, cave + 64), 0x0C: (2, cave + 76),
                               0x2C: (1, cave + 64), 0x30: (2, cave + 88)})
        b.check(w[4] == 0xE59D3004, '+0x10 ldr r3,[sp,#4] (a1 fetch) w=%s'
                % hex(w[4]))
        check_bl_targets(w, cave, b, {0x20: 0x9983B8})
        b.check(w[14] == 0xE28DD018, '+0x38 add sp,sp,#24 (RET-log discard)')
        b.check(w[15] == POP_PC, '+0x3C final pop {r12,pc}')
        check_ascii(d, cave + 64, b'NECR17B\x00', b, 'TAG')
        check_ascii(d, cave + 76, b'CALL a1=%d\x00', b, 'FMT1')
        check_ascii(d, cave + 88, b'RET\x00', b, 'FMT2')
        check_push_pop(w, cave, b, 'full block')
        check_no_r12_ferry(w, cave, b, 'block')
        b.note('RET-log path discards (not restores) AddItem r0; safe: '
               'caller 0x121854C overwrites r0 immediately (ADD R0,R4,#12)')
    out.append(b)

    # -- G-GUARD --
    b = Block('G-GUARD site 0x12185B4 -> 0x1B3BA60')
    sw = u32(d, 0x12185B4)
    b.check(is_bl(sw) and bl_target(0x12185B4, sw) == 0x1B3BA60,
            'site bl->guard w=%s' % hex(sw))
    gw = [u32(d, 0x1B3BA60 + i * 4) for i in range(5)]
    b.check(tuple(gw) == (0xE3570000, 0x012FFF1E, 0xE92D4000, 0xE12FFF37,
                          0xE8BD8000),
            'guard words %s' % [hex(x) for x in gw])
    b.check(gw[1] == 0x012FFF1E, 'bxeq lr skip-return present')
    b.check(gw[4] == 0xE8BD8000, 'final pop {pc} present')
    out.append(b)

    # -- E/M vanilla --
    b = Block('E/M vanilla-restored')
    b.check(u32(d, 0x9986F0) == 0xEBFA7F64, 'E 0x9986F0=%s (want 0xebfa7f64)'
            % hex(u32(d, 0x9986F0)))
    if u32(d, 0x9986F0) == 0xEBFA7F64:
        b.check(bl_target(0x9986F0, 0xEBFA7F64) == 0x838488,
                'E bl->0x838488 (Instantiate)')
    b.check(u32(d, 0x998948) == 0xE12FFF33, 'M 0x998948=%s (want blx r3)'
            % hex(u32(d, 0x998948)))
    out.append(b)

    # -- A04 / A05 PRE-only (caves resolved from site BLs) --
    for site, nm, tgt, lab in ((0x998B40, 'A04', 0x999D88, b'A04\x00'),
                               (0x998C94, 'A05', 0x999E88, b'A05\x00')):
        sw = u32(d, site)
        cave = bl_target(site, sw) if is_bl(sw) else None
        out.append(audit_preonly(d, '%s PRE-only site %s->%s' % (nm, hex(site),
                                 hex(cave) if cave else '?'),
                                 site, cave, b'N17E\x00', lab, tgt))

    # -- B01 / B02 (caves resolved from site BLs; strings from code ADRs) --
    for site, nm, tgt in ((0x999E20, 'B01', 0x12896E0),
                          (0x999E74, 'B02', 0x1B3B928)):
        sw = u32(d, site)
        cave = bl_target(site, sw) if is_bl(sw) else None
        b = Block('%s PRE/POST site %s->%s' % (nm, hex(site),
                                              hex(cave) if cave else '?'))
        if cave is None:
            b.check(False, 'site has no BL')
            out.append(b)
            continue
        w = [u32(d, cave + i * 4) for i in range(16)]
        # recover string addrs from the ADR immediates themselves
        tag_a = adr_target(cave + 8, w[2]) if is_adr(w[2]) else None
        pre_a = adr_target(cave + 0xC, w[3]) if is_adr(w[3]) else None
        post_a = adr_target(cave + 0x2C, w[11]) if is_adr(w[11]) else None
        b2 = audit_prepost16(d, b.name, site, cave, b'N17F\x00',
                             ('PRE %s\x00' % nm).encode(),
                             ('POST %s\x00' % nm).encode(), tgt,
                             str_addrs=(tag_a, pre_a, post_a))
        out.append(b2)

    # -- B03 (reclaim cave 0x1AAC0A8; known 3 dead bytes at +0x65..+0x67) --
    {
        'ignore': None,
    }
    sw = u32(d, 0x1AABE68)
    cave = bl_target(0x1AABE68, sw) if is_bl(sw) else None
    b = Block('B03 PRE/POST site 0x1aabe68->%s' % (hex(cave) if cave else '?'))
    b.check(cave == 0x1AAC0A8, 'cave %s (want 0x1aac0a8)'
            % (hex(cave) if cave else '?'))
    if cave:
        w = [u32(d, cave + i * 4) for i in range(16)]
        tag_a = adr_target(cave + 8, w[2]) if is_adr(w[2]) else None
        pre_a = adr_target(cave + 0xC, w[3]) if is_adr(w[3]) else None
        post_a = adr_target(cave + 0x2C, w[11]) if is_adr(w[11]) else None
        b2 = audit_prepost16(d, b.name, 0x1AABE68, cave, b'N17H\x00',
                             b'PRE B03\x00', b'POST B03\x00', 0x12896E0,
                             str_addrs=(tag_a, pre_a, post_a))
        # merge sub-checks
        b.lines.extend(b2.lines)
        b.ok = b.ok and b2.ok
        dead = bytes(d[cave + 0x45:cave + 0x48])
        if dead == b'PRE':
            b.note('3 dead bytes "PRE" at %s..%s: expected blob+rewrite '
                   'artifact (blob PRE at +0x45, padded rewrite at +0x48); '
                   'ADRs correctly target +0x48/+0x50' % (hex(cave + 0x45),
                                                          hex(cave + 0x47)))
        else:
            b.check(False, 'unexpected bytes at +0x45: %r' % dead)
    out.append(b)

    # -- N17D x4 --
    for site, rx, idx in ((0x99911C, 3, '11C'), (0x9991AC, 5, '1AC'),
                          (0x999224, 6, '224'), (0x99925C, 3, '25C')):
        sw = u32(d, site)
        cave = bl_target(site, sw) if is_bl(sw) else None
        w = [u32(d, cave + i * 4) for i in range(25)] if cave else []
        if cave and is_adr(w[4]):
            tag_a = adr_target(cave + 0x10, w[4])
            null_a = adr_target(cave + 0x14, w[5])
            call_a = adr_target(cave + 0x34, w[13])
            ret_a = adr_target(cave + 0x54, w[21])
        else:
            tag_a = null_a = call_a = ret_a = None
        out.append(audit_nullskip25(
            d, 'N17D-%s site %s->%s' % (idx, hex(site),
                                       hex(cave) if cave else '?'),
            site, cave, rx, b'N17D\x00', ('NULL %s\x00' % idx).encode(),
            ('CALL %s\x00' % idx).encode(), ('RET %s\x00' % idx).encode(),
            str_addrs=(tag_a, null_a, call_a, ret_a) if tag_a else None))

    # -- B2 N17G --
    sw = u32(d, 0x12780B8)
    cave = bl_target(0x12780B8, sw) if is_bl(sw) else None
    b = Block('B2 N17G site 0x12780b8->%s' % (hex(cave) if cave else '?'))
    b.check(cave == 0x1B3BBA8, 'cave %s (want 0x1b3bba8)'
            % (hex(cave) if cave else '?'))
    if cave:
        w = [u32(d, cave + i * 4) for i in range(25)]
        tag_a = adr_target(cave + 0x10, w[4])
        null_a = adr_target(cave + 0x14, w[5])
        call_a = adr_target(cave + 0x34, w[13])
        ret_a = adr_target(cave + 0x54, w[21])
        b2 = audit_nullskip25(d, b.name, 0x12780B8, cave, 2, b'N17G\x00',
                              b'NULLB2\x00', b'CALLB2\x00', b'RETB2\x00',
                              str_addrs=(tag_a, null_a, call_a, ret_a))
        b.lines.extend(b2.lines)
        b.ok = b.ok and b2.ok
    out.append(b)

    # -- B05 / B06 (unaligned packed strings; recover addrs from ADRs) --
    for site, nm, tgt, pre_s, post_s in (
            (0x998F1C, 'B05', 0x1828788, b'PRE5\x00', b'POST5\x00'),
            (0x998F34, 'B06', 0x12E191C, b'PRE6\x00', b'POST6\x00')):
        sw = u32(d, site)
        cave = bl_target(site, sw) if is_bl(sw) else None
        want = 0x1B3BB00 if nm == 'B05' else 0x1B3BB40
        b = Block('%s PRE/POST site %s->%s' % (nm, hex(site),
                                              hex(cave) if cave else '?'))
        b.check(cave == want, 'cave %s (want %s)'
                % (hex(cave) if cave else '?', hex(want)))
        if cave:
            w = [u32(d, cave + i * 4) for i in range(16)]
            tag_a = adr_target(cave + 8, w[2]) if is_adr(w[2]) else None
            pre_a = adr_target(cave + 0xC, w[3]) if is_adr(w[3]) else None
            post_a = adr_target(cave + 0x2C, w[11]) if is_adr(w[11]) else None
            b2 = audit_prepost16(d, b.name, site, cave, b'N17J\x00',
                                 pre_s, post_s, tgt,
                                 str_addrs=(tag_a, pre_a, post_a))
            b.lines.extend(b2.lines)
            b.ok = b.ok and b2.ok
            b.note('strings deliberately unpacked (TAG 5B); ADR may target '
                   'unaligned %s/%s -- exact-landing still required'
                   % (hex(pre_a) if pre_a else '?',
                      hex(post_a) if post_a else '?'))
        out.append(b)

    # -- BX site vanilla (B04 neutralized) --
    b = Block('BX site 0x1289724 vanilla (B04 off)')
    b.check(u32(d, 0x1289724) == 0xE12FFF12, 'BX=%s (want 0xe12fff12 bx r2)'
            % hex(u32(d, 0x1289724)))
    out.append(b)

    # -- report --
    npass = sum(1 for x in out if x.ok)
    for x in out:
        print('## %s : %s' % (x.name, 'PASS' if x.ok else 'FAIL'))
        for ln in x.lines:
            print('   ', ln)
    print('== %d/%d blocks PASS ==' % (npass, len(out)))
    # intentional-reclaim notice (not a check)
    tail = bytes(d[0x1B3BB9B:0x1B3BBA0])
    print('note dead tail @0x1b3bb9b=%r (old v17c POST-E remnant, '
          'unreferenced; intentional B04 reclaim, not flagged)' % tail)
    return 0 if npass == len(out) else 1


if __name__ == '__main__':
    sys.exit(main())
