#!/usr/bin/env python3
"""P11: tiered gacha rates - high(pool10) 20% / mid(pool6-9) 35% / low(pool1-5) 45%."""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
SITE = 0x12192DC   # mov r0,#1 at RandomGambleUnit head
BACK = 0x121936C   # cmp r6,#0 - AFTER the last two movle r5 (0x1219360/0x1219368)!
CAVE = 0xB42F38
RANGE = 0x12896E0
ORIG_SITE = bytes.fromhex('0100a0e3')

prog = []


def w(x): prog.append(('w', x))
def br(c, l): prog.append(('b', c, l))
def bl(t): prog.append(('bl', t))
def L(n): prog.append(('L', n))


L('CAVE')
w(0xE92D4010)   # push {r4,lr}
w(0xE3A00001)   # mov r0, #1 (idx rates)
bl(0xB42FC0)    # READER (mod.cfg[1])
w(0xE3500000)   # cmp r0, #0
br(0x0, 'OFF')  # eq -> natural walk
w(0xE3A00000)   # mov r0, #0
w(0xE3A01064)   # mov r1, #100
bl(RANGE)       # roll 0-99
w(0xE3500014)   # cmp r0, #20
br(0x3, 'HIGH')  # lo
w(0xE3500037)   # cmp r0, #55
br(0x3, 'MID')   # lo
w(0xE3A00001)   # LOW: mov r0, #1
w(0xE3A01006)   # mov r1, #6
bl(RANGE)       # grade 1-5
w(0xE1A05000)   # mov r5, r0
br(0xE, 'BACK')
L('MID')
w(0xE3A00006)   # mov r0, #6
w(0xE3A0100A)   # mov r1, #10
bl(RANGE)       # grade 6-9
w(0xE1A05000)   # mov r5, r0
br(0xE, 'BACK')
L('HIGH')
w(0xE3A0500A)   # mov r5, #10
L('OFF')
w(0xE8BD4010)   # pop {r4,lr}
w(0xE3A00001)   # mov r0, #1 (replay orig head)
br(0xE, 'ORIG')  # b 0x12192E0 (natural walk)
L('BACK')
w(0xE8BD4010)   # pop {r4,lr}
w(0xE5946010)   # ldr r6, [r4, #0x10] (T-list; skipped by our entry jump, replay here)


def b_encode(frm, to, cond=0xE):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return struct.pack('<I', (cond << 28) | 0x0A000000 | (off & 0xFFFFFF))


def bl_encode(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return struct.pack('<I', 0xEB000000 | (off & 0xFFFFFF))


labels, addr = {'ORIG': 0x12192E0}, CAVE
for p in prog:
    if p[0] == 'L':
        labels[p[1]] = addr
    else:
        addr += 4

out = bytearray()
addr = CAVE
for p in prog:
    if p[0] == 'L':
        continue
    if p[0] == 'w':
        out += struct.pack('<I', p[1])
    elif p[0] == 'b':
        out += b_encode(addr, labels[p[2]], p[1])
    elif p[0] == 'bl':
        out += bl_encode(addr, p[1])
    addr += 4
# trailing jump back into RandomGambleUnit
out += b_encode(CAVE + len(out), BACK)
print('cave size:', len(out))

d = bytearray(open(SO, 'rb').read())
cur = bytes(d[SITE:SITE + 4])
want_b = b_encode(SITE, CAVE)
print('site:', cur.hex())
if len(sys.argv) > 1 and sys.argv[1] == 'revert':
    assert cur == want_b, cur.hex()
    d[SITE:SITE + 4] = ORIG_SITE
    open(SO, 'wb').write(d)
    print('P11 reverted')
    sys.exit(0)
if cur == want_b:
    print('  site already applied, skip')
else:
    assert cur == ORIG_SITE, cur.hex()
    d[SITE:SITE + 4] = want_b
if d[CAVE:CAVE + len(out)] == out:
    print('  cave already applied, skip')
else:
    d[CAVE:CAVE + len(out)] = out
open(SO, 'wb').write(d)
print('P11 (tiered rates) applied')
