#!/usr/bin/env python3
"""Full-operand ARM32 disassembler (ARM mode, little-endian).

Usage: disasm_full.py <so> <start_hex> <end_hex>
Prints: addr, word, and a faithful instruction rendering including all
registers, immediates, shifts, and memory addressing modes.
Unknown/odd encodings fall back to '.word'.
"""
import struct
import sys

COND = ['EQ', 'NE', 'HS', 'LO', 'MI', 'PL', 'VS', 'VC',
        'HI', 'LS', 'GE', 'LT', 'GT', 'LE', '', 'NV']
DP = ['AND', 'EOR', 'SUB', 'RSB', 'ADD', 'ADC', 'SBC', 'RSC',
      'TST', 'TEQ', 'CMP', 'CMN', 'ORR', 'MOV', 'BIC', 'MVN']
RN = lambda n: ('SP' if n == 13 else 'LR' if n == 14 else 'PC' if n == 15 else 'R%d' % n)


def ror(v, n):
    n &= 31
    return ((v >> n) | (v << (32 - n))) & 0xFFFFFFFF


def op2(w):
    # returns (text, is_reg)
    if (w >> 25) & 1:
        imm8 = w & 0xFF
        rot = ((w >> 8) & 0xF) * 2
        return '#%d' % ror(imm8, rot), False
    rm = w & 0xF
    st = (w >> 5) & 3
    sh = (w >> 7) & 0x1F
    t = RN(rm)
    if st == 0 and sh == 0:
        return t, True
    nm = ['LSL', 'LSR', 'ASR', 'ROR'][st]
    if st == 3 and sh == 0:
        return '%s, RRX' % t, True
    return '%s, %s #%d' % (t, nm, sh), True


def mem(w, addr):
    rn = (w >> 16) & 15
    p = (w >> 24) & 1
    u = (w >> 23) & 1
    b = (w >> 22) & 1
    wbit = (w >> 21) & 1
    l = (w >> 20) & 1
    rd = (w >> 12) & 15
    mn = ('LDR' if l else 'STR') + ('B' if b else '')
    if rn == 15 and not ((w >> 25) & 1):
        off12 = w & 0xFFF
        tgt = (addr + 8 + (off12 if u else -off12)) & 0xFFFFFFFF
        base = '[PC, #%s%d] (=0x%x)' % ('-' if not u else '', off12, tgt)
        if not p:
            return '%s %s, %s' % (mn, RN(rd), base)
        return '%s %s, %s%s' % (mn, RN(rd), base, '!' if wbit else '')
    if (w >> 25) & 1:  # register offset
        rm = w & 0xF
        extra, _ = op2(w)
        # strip rm duplication: op2 returns 'Rm, shift #n' already
        memstr = '[%s, %s%s]' % (RN(rn), '' if u else '-', extra)
        if not p:
            return '%s %s, %s' % (mn, RN(rd), memstr)
        return '%s %s, %s%s' % (mn, RN(rd), memstr, '!' if wbit else '')
    off12 = w & 0xFFF
    if off12 == 0 and p and not wbit:
        m = '[%s]' % RN(rn)
    else:
        m = '[%s, #%s%d]' % (RN(rn), '' if u else '-', off12)
    if not p:
        return '%s %s, %s' % (mn, RN(rd), m)
    return '%s %s, %s%s' % (mn, RN(rd), m, '!' if wbit else '')


def decode(a, w):
    c = COND[(w >> 28) & 15]
    # BLX reg / BX reg
    if (w & 0x0FFFFFF0) == 0x012FFF30:
        return 'BLX %s' % RN(w & 15)
    if (w & 0x0FFFFFF0) == 0x012FFF10:
        return 'BX %s' % RN(w & 15)
    # B / BL
    if ((w >> 25) & 7) == 5:
        off = w & 0xFFFFFF
        off -= 0x1000000 if off & 0x800000 else 0
        t = (a + 8 + off * 4) & 0xFFFFFFFF
        return '%s 0x%x' % ('BL' + c, t) if (w >> 24) & 1 else ('B' + c + ' 0x%x' % t)
    # SWI/SVC
    if (w & 0x0F000000) == 0x0F000000:
        return 'SVC%s #%d' % (c, w & 0xFFFFFF)
    # LDM / STM
    if ((w >> 25) & 7) == 4:
        rn = (w >> 16) & 15
        l = (w >> 20) & 1
        p = (w >> 24) & 1
        u = (w >> 23) & 1
        wb = '!' if (w >> 21) & 1 else ''
        regs = '{%s}' % ','.join(RN(i) for i in range(16) if (w >> i) & 1)
        mode = ('I' if u else 'D') + ('B' if p else 'A')
        return '%s%s%s %s%s, %s' % ('LDM' if l else 'STM', mode, c, RN(rn), wb, regs)
    # LDR/STR (+H/SH/SB variants)
    if ((w >> 25) & 7) in (2, 3):
        if ((w >> 25) & 7) == 3 and ((w >> 5) & 1):
            # misc loads: LDRH/STRH/LDRSB/LDRSH
            p = (w >> 24) & 1
            u = (w >> 23) & 1
            wbit = (w >> 21) & 1
            l = (w >> 20) & 1
            rn = (w >> 16) & 15
            rd = (w >> 12) & 15
            h = (w >> 6) & 1
            s = (w >> 5) & 1
            if (w >> 22) & 1:
                if s and not l:
                    mn = 'LDRD' if h else 'STRD'
                elif not s and not h:
                    mn = 'STC?'
                else:
                    return '.word 0x%08x' % w
                off8 = ((w & 0xF00) >> 4) | (w & 0xF)
                m = '[%s, #%s%d]%s' % (RN(rn), '' if u else '-', off8, '!' if wbit else '')
                return '%s%s %s, %s' % (mn, c, RN(rd), m)
            mn = { (1,1,1):'LDRSH',(1,1,0):'LDRSB',(1,0,1):'LDRH',(0,0,1):'STRH' }.get((l,s,h), '?MIS')
            if (w >> 22) & 1 or mn.startswith('?'):
                return '.word 0x%08x' % w
            if (w >> 25) & 1:
                rm = w & 0xF
                m = '[%s, %s%s]%s' % (RN(rn), '' if u else '-', RN(rm), '!' if wbit else '')
            else:
                off8 = ((w & 0xF00) >> 4) | (w & 0xF)
                m = '[%s, #%s%d]%s' % (RN(rn), '' if u else '-', off8, '!' if wbit else '')
            return '%s%s %s, %s' % (mn, c, RN(rd), m)
        return mem(w, a) if not c or True else mem(w, a)
    # data processing
    if ((w >> 25) & 7) in (0, 1):
        opc = (w >> 21) & 15
        s = (w >> 20) & 1
        rn = (w >> 16) & 15
        rd = (w >> 12) & 15
        o2, _ = op2(w)
        nm = DP[opc]
        if opc in (8, 9, 10, 11):
            return '%s%s %s, %s' % (nm, c, RN(rn), o2)
        if opc in (13, 15):
            return '%s%s%s %s, %s' % (nm, c, 'S' if s else '', RN(rd), o2)
        return '%s%s%s %s, %s, %s' % (nm, c, 'S' if s else '', RN(rd), RN(rn), o2)
    # MUL/MLA
    if (w & 0x0FC000F0) == 0x00000090:
        rd = (w >> 16) & 15
        rn = w & 15
        rs = (w >> 8) & 15
        rm = (w >> 12) & 15
        a_bit = (w >> 21) & 1
        if a_bit:
            return 'MLA%s %s, %s, %s, %s' % (c, RN(rd), RN(rm), RN(rs), RN(rn))
        return 'MUL%s %s, %s, %s' % (c, RN(rd), RN(rm), RN(rs))
    # ADR pseudo (ADD/SUB rd, pc, #imm) handled by DP already
    if w == 0:
        return 'ZERO?'
    return '.word 0x%08x' % w


so, s, e = sys.argv[1], int(sys.argv[2], 16), int(sys.argv[3], 16)
d = open(so, 'rb').read()
a = s
while a < e:
    w, = struct.unpack('<I', d[a:a + 4])
    try:
        t = decode(a, w)
    except Exception as ex:
        t = '.word 0x%08x (%s)' % (w, ex)
    print('%08x  %08x  %s' % (a, w, t))
    a += 4
