#!/usr/bin/env python3
"""M3: mem-flag bridge. Java pokes flag bytes via /proc/self/mem; native only ldrb.
FLAGS1 @0xB4303C (tiered/GATE_G/GATE_P), FLAGS2 @0x121A038 (GATE_R/GATE_U).
'1'=ON. Idempotent: overwrites whenever current != target (loose asserts)."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
FLAGS1 = 0xB4303C
FLAGS2 = 0x121A038
OFF_T = 0xB42F94
ROLL_P = 0xB430AC
CMP31 = 0xE3500031  # cmp r0, #0x31


def put(d, addr, words):
    d[addr:addr + 4 * len(words)] = struct.pack('<%dI' % len(words), *words)


def adr_sub(frm, to):
    if to >= frm + 8:
        off = to - (frm + 8)
        assert off <= 4095, (hex(frm), hex(to))
        return 0xE28F0000 | off
    off = (frm + 8) - to
    assert off <= 4095, (hex(frm), hex(to))
    return 0xE24F0000 | off


def b(cond, frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return (cond << 28) | 0x0A000000 | (off & 0xFFFFFF)


def ldrb_imm(n):
    return 0xE5D00000 | n  # ldrb r0, [r0, #n]


def bl(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return 0xEB000000 | (off & 0xFFFFFF)


d = bytearray(open(SO, 'rb').read())
n = [0]


def fix(addr, words, ok_first, name):
    cur = bytes(d[addr:addr + 4 * len(words)])
    new = struct.pack('<%dI' % len(words), *words)
    if cur == new:
        print(name, 'ok'); return
    assert struct.unpack('<I', cur[:4])[0] in ok_first, (name, cur[:4].hex())
    put(d, addr, words)
    n[0] += 1
    print(name, 'wrote')


if bytes(d[FLAGS1:FLAGS1 + 5]) != b'11111':
    d[FLAGS1:FLAGS1 + 5] = b'11111'; print('FLAGS1 set')
if bytes(d[FLAGS2:FLAGS2 + 5]) != b'11111':
    d[FLAGS2:FLAGS2 + 5] = b'11111'; print('FLAGS2 set')

A_T = adr_sub(0xB42F3C, FLAGS1)
assert A_T == 0xE28F00F8, hex(A_T)
fix(0xB42F3C, (A_T, ldrb_imm(1), CMP31, b(0x1, 0xB42F48, OFF_T)),
    (0xE3A00001, A_T), 'tiered-head')

A_G = adr_sub(0xB43078, FLAGS1)
assert A_G == 0xE24F0044, hex(A_G)
fix(0xB43078, (A_G,), (0xE3A00000, A_G), 'GATE_G-adr')
fix(0xB4307C, (ldrb_imm(0), CMP31, 0x03A00007, 0x11A00005),
    (bl(0xB4307C, 0xB42FC0), ldrb_imm(0)), 'GATE_G-body')

A_P = adr_sub(0xB43094, FLAGS1)
assert A_P == 0xE24F0060, hex(A_P)
fix(0xB43094, (A_P,), (0xE3A00002, A_P), 'GATE_P-adr')
fix(0xB43098, (ldrb_imm(2), CMP31, b(0x1, 0xB430A0, ROLL_P)),
    (bl(0xB43098, 0xB42FC0), ldrb_imm(2)), 'GATE_P-body')

A_R = adr_sub(0x121A000, FLAGS2)
assert A_R == 0xE28F0030, hex(A_R)
fix(0x121A000, (A_R,), (0xE3A00003, A_R), 'GATE_R-adr')
fix(0x121A004, (ldrb_imm(3), CMP31, 0xE8BD4013, 0x012FFF1E),
    (bl(0x121A004, 0xB42FC0), ldrb_imm(3)), 'GATE_R-body')

A_U = adr_sub(0x121A020, FLAGS2)
assert A_U == 0xE28F0010, hex(A_U)
fix(0x121A020, (A_U,), (0xE3A00004, A_U), 'GATE_U-adr')
fix(0x121A024, (ldrb_imm(4), CMP31, 0xE8BD4013, 0x012FFF1E),
    (bl(0x121A024, 0xB42FC0), ldrb_imm(4)), 'GATE_U-body')

open(SO, 'wb').write(d)
print('M3 done, wrote', n[0])
