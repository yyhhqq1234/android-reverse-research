#!/usr/bin/env python3
"""Minimal ARM32 disassembler for control-flow + call inventory (subset).

Usage: disasm_range.py <so> <start_hex> <end_hex>
Decodes: B/BL (cond), BLX reg, BX reg, PUSH/POP, LDR/STR/MOV/CMP/ADD/SUB
(literal + imm + reg forms, one-line), ADR, NOP; else '.word'.
Branch targets annotated; BL targets resolved; BLX-reg/POP{pc} flagged.
"""
import struct
import sys

COND = ['EQ', 'NE', 'HS', 'LO', 'MI', 'PL', 'VS', 'VC',
        'HI', 'LS', 'GE', 'LT', 'GT', 'LE', '', 'NV']


def regs(mask):
    return '{%s}' % ','.join('r%d' % i for i in range(16) if mask >> i & 1)


def decode(a, w):
    cond = COND[(w >> 28) & 15]
    op = (w >> 25) & 7
    if (w & 0x0FFFFFF0) == 0x012FFF30:
        return 'blx r%d   ***INDIRECT***' % (w & 15)
    if (w & 0x0FFFFFF0) == 0x012FFF10:
        rn = w & 15
        return ('bx lr RET' if rn == 14 else 'bx r%d' % rn)
    if op == 5:  # B/BL
        off = w & 0xFFFFFF
        off -= 0x1000000 if off & 0x800000 else 0
        t = (a + 8 + off * 4) & 0xFFFFFFFF
        tag = ''
        if (w >> 24) & 1:
            tag = '  -> sub_%x' % t
        else:
            tag = '  -> %x' % t
        return ('bl%s #0x%x%s' if (w >> 24) & 1 else 'b%s #0x%x%s') % (cond, t, tag)
    if op == 0 or op == 1:  # data processing
        opc = (w >> 21) & 15
        names = {0: 'and', 1: 'eor', 2: 'sub', 3: 'rsb', 4: 'add', 5: 'adc',
                 6: 'sbc', 7: 'rsc', 8: 'tst', 9: 'teq', 10: 'cmp', 11: 'cmn',
                 12: 'orr', 13: 'mov', 14: 'bic', 15: 'mvn'}
        rd = (w >> 12) & 15
        rn = (w >> 16) & 15
        if opc in (8, 9, 10, 11):
            return '%s%s r%d, ...' % (names[opc], cond, rn)
        if opc == 13:
            return 'mov%s r%d, ...' % (cond, rd)
        return '%s%s r%d, r%d, ...' % (names[opc], cond, rd, rn)
    if op == 2 or op == 3:  # LDR/STR
        l = (w >> 20) & 1
        rn = (w >> 16) & 15
        rd = (w >> 12) & 15
        b = (w >> 22) & 1
        off12 = w & 0xFFF
        u = '' if (w >> 23) & 1 else '-'
        if rn == 15 and not ((w >> 24) & 1):
            return 'ldr r%d, [pc, #%s0x%x] (literal)' % (rd, u, off12)
        if rn == 15:
            return 'adr-ish r%d' % rd
        return '%s%s r%d, [r%d, #%s0x%x]%s' % (
            'ldr' if l else 'str', 'b' if b else '', rd, rn, u, off12,
            '!' if (w >> 21) & 1 else '')
    if (w & 0x0FFF0000) == 0x092D0000 or (w & 0x0FFF0000) == 0x08BD0000:
        push = not (w & 0x00100000)
        r = regs(w & 0xFFFF)
        extra = ' ***RET-POP***' if (not push and (w & 0x8000)) else ''
        return '%s %s%s' % ('push' if push else 'pop', r, extra)
    if w == 0:
        return 'ZERO (padding?)'
    return '.word 0x%08x' % w


so, s, e = sys.argv[1], int(sys.argv[2], 16), int(sys.argv[3], 16)
d = open(so, 'rb').read()
a = s
while a < e:
    w, = struct.unpack('<I', d[a:a + 4])
    print('%08x  %08x  %s' % (a, w, decode(a, w)))
    a += 4
