#!/usr/bin/env python3
"""v3: fully PIC - shared instance loader + direct pc-relative bl per product."""
import struct

SO = r'D:\安卓逆向\NECR\work_necr\src\lib\armeabi-v7a\libil2cpp.so'
PB = 0xB42E80
CS_TARGET = 0x1C6DBBC
T_ONE, T_D100, T_D1000, T_D4000, T_D20000 = 0x9A479C, 0x9A4928, 0x9A4990, 0x9A4A64, 0x9A4B90

prog = []
def w(x): prog.append(('w', x))
def br(c, l): prog.append(('b', c, l))
def bl(t): prog.append(('bl', t))
def L(n): prog.append(('L', n))

# entry: prologue already ran (r4=productID). jump to COMMON.
br(0xE, 'COMMON')
L('P_D1000')
bl(T_D1000)
br(0xE, 'RET')
L('P_D100')
bl(T_D100)
br(0xE, 'RET')
L('P_D4000')
bl(T_D4000)
br(0xE, 'RET')
L('P_D20000')
bl(T_D20000)
br(0xE, 'RET')
L('P_ONE')
bl(T_ONE)
br(0xE, 'RET')
L('COMMON')
prog.extend([('ldrlit',), ('addpc',), ('w', 0xE5920000), ('w', 0xE5900000),
             ('w', 0xE590005C), ('w', 0xE5900000)])
# re-dispatch on r4 (productID survives: r4 callee-saved, loader uses r0/r2)
w(0xE5942008)        # ldr r2,[r4,#8] ; len
w(0xE352000C)        # cmp r2,#12
br(0x0, 'P_ONE')
w(0xE3520008)        # cmp r2,#8
br(0x0, 'P_D20000')
w(0xE3520007)        # cmp r2,#7
br(0x0, 'P_D4000')
w(0xE3520006)        # cmp r2,#6
br(0x1, 'RET')
w(0xE1D421B2)        # ldrh r2,[r4,#0x12]
w(0xE3520031)        # cmp r2,#0x31
br(0x0, 'P_D100')
br(0xE, 'P_D1000')
L('RET')
w(0xE28DD010)
w(0xE8BD87F0)
L('LIT')
prog.append(('D', 0))

labels, addr, addpc = {}, PB, None
for p in prog:
    if p[0] == 'L':
        labels[p[1]] = addr
    else:
        if p[0] == 'addpc':
            addpc = addr
        addr += 4
lit_val = CS_TARGET - (addpc + 8)
prog = [('D', lit_val & 0xFFFFFFFF) if p[0] == 'D' else p for p in prog]

out = bytearray()
addr = PB
for p in prog:
    if p[0] == 'L':
        continue
    if p[0] == 'w':
        out += struct.pack('<I', p[1])
    elif p[0] == 'b':
        off = (labels[p[2]] - (addr + 8)) // 4
        assert -0x800000 <= off <= 0x7FFFFF, (p, hex(off))
        out += struct.pack('<I', (p[1] << 28) | 0x0A000000 | (off & 0xFFFFFF))
    elif p[0] == 'bl':
        off = (p[1] - (addr + 8)) // 4
        assert -0x800000 <= off <= 0x7FFFFF, (p[1], hex(off))
        out += struct.pack('<I', 0xEB000000 | (off & 0xFFFFFF))
    elif p[0] == 'ldrlit':
        off = labels['LIT'] - (addr + 8)
        assert 0 <= off < 4096, hex(off)
        out += struct.pack('<I', 0xE59F2000 | off)
    elif p[0] == 'addpc':
        out += struct.pack('<I', 0xE08F2002)
    elif p[0] == 'D':
        out += struct.pack('<I', p[1])
    addr += 4

d = bytearray(open(SO, 'rb').read())
d[PB:PB + len(out)] = out
open(SO, 'wb').write(d)
print(f'wrote {len(out)} bytes, lit={hex(lit_val)}')
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM
for ins in Cs(CS_ARCH_ARM, CS_MODE_ARM).disasm(bytes(out), PB):
    print(f'  {ins.address:08x}  {ins.mnemonic:10s} {ins.op_str}')
