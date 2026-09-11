#!/usr/bin/env python3
"""M1: mod-menu gates - cfg reader + grade/plus gate caves + site hooks."""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
RANGE = 0x12896E0
READER = 0xB42FC0
CFG = b'/data/data/com.PrismaThunder.Necromancer/files/mod.cfg\x00'
P7SITE = 0x999E74
P10SITES = (0x998CAC, 0x998D0C, 0x998D40, 0x998D74, 0x998DA8)

prog = []


def w(x): prog.append(('w', x))
def br(c, l): prog.append(('b', c, l))
def bl(t): prog.append(('bl', t))
def L(n): prog.append(('L', n))
def S(s): prog.append(('s', s))


# ---- READER @READER: r0=idx -> r0=0/1 (fail-open: missing -> 1)
L('READER')
w(0xE92D40F0)   # push {r4-r7,lr}
w(0xE1A05000)   # mov r5, r0 (idx)
w(0xE28F0000)   # adr r0, CFGSTR (patched below)
w(0xE3A01000)   # mov r1, #0
w(0xE3A07005)   # mov r7, #5 (open)
w(0xEF000000)   # svc #0
w(0xE3500000)   # cmp r0, #0
br(0xB, 'R_DEF1')  # lt
w(0xE1A04000)   # mov r4, r0 (fd)
w(0xE24DD008)   # sub sp, sp, #8
w(0xE1A0100D)   # mov r1, sp
w(0xE3A02004)   # mov r2, #4
w(0xE3A07003)   # mov r7, #3 (read)
w(0xEF000000)   # svc #0
w(0xE3500000)   # cmp r0, #0
br(0xD, 'R_CLOSE')  # le
w(0xE7DD6005)   # ldrb r6, [sp, r5]
w(0xE28DD008)   # add sp, sp, #8
w(0xE1A00004)   # mov r0, r4
w(0xE3A07006)   # mov r7, #6 (close)
w(0xEF000000)   # svc #0
w(0xE3560031)   # cmp r6, #'1'
w(0x03A00001)   # moveq r0, #1
w(0x13A00000)   # movne r0, #0
w(0xE8BD40F0)   # pop {r4-r7,pc}
L('R_CLOSE')
w(0xE28DD008)   # add sp, sp, #8
w(0xE1A00004)   # mov r0, r4
w(0xE3A07006)   # mov r7, #6
w(0xEF000000)   # svc #0
L('R_DEF1')
w(0xE3A00001)   # mov r0, #1
w(0xE8BD40F0)   # pop {r4-r7,pc}
L('CFGSTR')
S(CFG)
# ---- GATE_G: grade toggle (idx 0)
L('GATE_G')
w(0xE92D4070)   # push {r4-r6,lr}
w(0xE3A00000)   # mov r0, #0
bl(READER)
w(0xE3500000)   # cmp r0, #0
w(0x01A00005)   # moveq r0, r5 (natural)
w(0x13A00007)   # movne r0, #7 (G)
w(0xE8BD8070)   # pop {r4-r6,pc}
# ---- GATE_P: plus toggle (idx 2)
L('GATE_P')
w(0xE92D4FF8)   # push {r3-r9,r10,r11,lr}
w(0xE3A00002)   # mov r0, #2
bl(READER)
w(0xE3500000)   # cmp r0, #0
br(0x0, 'P_ROLL')  # eq -> natural roll
w(0xE3A00000)   # mov r0, #0 (forced top)
w(0xE8BD8FF8)   # pop -> site+4
L('P_ROLL')
w(0xE3A00000)   # mov r0, #0
w(0xE3041E21)   # movw r1, #0x4E21
w(0xE3A02000)   # mov r2, #0
w(0xE3A09000)   # mov sb, #0
bl(RANGE)
w(0xE8BD8FF8)   # pop -> site+4


def b_encode(frm, to, cond=0xE):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return struct.pack('<I', (cond << 28) | 0x0A000000 | (off & 0xFFFFFF))


def bl_encode(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return struct.pack('<I', 0xEB000000 | (off & 0xFFFFFF))


labels, addr = {}, READER
for p in prog:
    if p[0] == 'L':
        labels[p[1]] = addr
    elif p[0] == 's':
        while addr % 4:
            addr += 1
        labels['CFGSTR'] = addr
        addr += (len(p[1]) + 3) & ~3
    else:
        addr += 4
print('region end:', hex(addr), 'limit 0xb430ec')
assert addr <= 0xB430EC, 'cave overflow!'
gate_g, gate_p = labels['GATE_G'], labels['GATE_P']
print('READER', hex(READER), 'GATE_G', hex(gate_g), 'GATE_P', hex(gate_p))

out = bytearray()
addr = READER
for p in prog:
    if p[0] == 'L':
        continue
    if p[0] == 'w':
        v = p[1]
        if v == 0xE28F0000:  # adr -> real offset
            v = 0xE28F0000 | (labels['CFGSTR'] - (addr + 8))
            assert 0 <= (labels['CFGSTR'] - (addr + 8)) <= 4095
        out += struct.pack('<I', v)
    elif p[0] == 'b':
        out += b_encode(addr, labels[p[2]], p[1])
    elif p[0] == 'bl':
        out += bl_encode(addr, p[1])
    elif p[0] == 's':
        while len(out) % 4:
            out += b'\x00'
        out += p[1]
        while len(out) % 4:
            out += b'\x00'
    addr += 4 if p[0] != 's' else (len(p[1]) + 3) & ~3

d = bytearray(open(SO, 'rb').read())
if d[READER:READER + len(out)] == out:
    print('caves already applied, skip')
else:
    d[READER:READER + len(out)] = out

# P7 site -> bl GATE_G
cur = bytes(d[P7SITE:P7SITE + 4])
want = bl_encode(P7SITE, gate_g)
print('P7 site:', cur.hex())
if cur == want:
    print('  already applied, skip')
else:
    assert cur.hex() in ('070000e3', '0500a0e1'), cur.hex()
    d[P7SITE:P7SITE + 4] = want

# P10 sites -> bl GATE_P
for s in P10SITES:
    cur = bytes(d[s:s + 4])
    want = bl_encode(s, gate_p)
    if cur == want:
        print(hex(s), 'already applied, skip')
        continue
    assert cur.hex() == '0000a0e3', (hex(s), cur.hex())
    d[s:s + 4] = want
    print(hex(s), 'hooked')
open(SO, 'wb').write(d)
print('M1 gates applied')
