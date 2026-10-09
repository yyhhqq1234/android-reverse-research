#!/usr/bin/env python3
"""M4: PLT-libc file reader. Revert M3 flag-heads to bl-READER, restore READER
body, then swap its 3 raw-svc sites for bl PLT_open/read/close (same-size).
Idempotent with loose asserts."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
BACKUP = 'D:/安卓逆向/NECR/work_necr/save/reader_orig.bin'
READER = 0xB42FC0
OFF_T = 0xB42F94
ROLL_P = 0xB430AC
PLT_OPEN = 0x1C2C1C
PLT_READ = 0x1C2CF4
PLT_CLOSE = 0x1C2D00
NOP = 0xE1A00000


def put(d, addr, words):
    d[addr:addr + 4 * len(words)] = struct.pack('<%dI' % len(words), *words)


def bl(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return 0xEB000000 | (off & 0xFFFFFF)


def b(cond, frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return (cond << 28) | 0x0A000000 | (off & 0xFFFFFF)


d = bytearray(open(SO, 'rb').read())
n = [0]


def fix(addr, words, name):
    cur = bytes(d[addr:addr + 4 * len(words)])
    new = struct.pack('<%dI' % len(words), *words)
    if cur == new:
        print(name, 'ok'); return
    put(d, addr, words)
    n[0] += 1
    print(name, 'wrote')


# 1. tiered head -> mov#1, bl READER, cmp#0, beq OFF
fix(0xB42F3C, (0xE3A00001, bl(0xB42F40, READER), 0xE3500000, b(0x0, 0xB42F48, OFF_T)), 'tiered-head')
# 2. GATE_G -> mov#0, bl, cmp#0, moveq r0,r5, movne r0,#7
fix(0xB43078, (0xE3A00000, bl(0xB4307C, READER), 0xE3500000, 0x01A00005, 0x13A00007), 'GATE_G')
# 3. GATE_P -> mov#2, bl, cmp#0, beq ROLL
fix(0xB43094, (0xE3A00002, bl(0xB43098, READER), 0xE3500000, b(0x0, 0xB430A0, ROLL_P)), 'GATE_P')
# 4. GATE_R body @0x121A000 (push @FFC untouched): mov#3, bl, cmp#0, pop, bxne, b SUB
fix(0x121A000, (0xE3A00003, bl(0x121A004, READER), 0xE3500000,
                0xE8BD4013, 0x112FFF1E, b(0xE, 0x121A014, 0x9A1EF0)), 'GATE_R')
# 5. GATE_U body @0x121A020: mov#4, bl, cmp#0, pop, bxne, b SUB
fix(0x121A020, (0xE3A00004, bl(0x121A024, READER), 0xE3500000,
                0xE8BD4013, 0x112FFF1E, b(0xE, 0x121A034, 0x9A7B8C)), 'GATE_U')

# 6. restore READER body only on explicit request (stub era is over;
#    normal runs must be idempotent, so never auto-restore here)
import sys as _sys
if _sys.argv[1:] and _sys.argv[1] == 'restore':
    orig = open(BACKUP, 'rb').read()
    assert len(orig) == 124
    d[READER:READER + 124] = orig
    open(SO, 'wb').write(d)
    print('READER restored (explicit)')
    raise SystemExit

# 7. svc -> bl PLT (same-size pairs)
pairs = [
    (0xB42FD0, PLT_OPEN, 'open'),
    (0xB42FF0, PLT_READ, 'read'),
    (0xB4300C, PLT_CLOSE, 'close1'),
    (0xB4302C, PLT_CLOSE, 'close2'),
]
for addr, plt, nm in pairs:
    cur = struct.unpack('<II', bytes(d[addr:addr + 8]))
    new = (cur[0] & 0xFFFF0FFF, 0)  # keep mov r7,#N? no: replace both words
    want = (bl(addr, plt), NOP)
    if cur == want:
        print(nm, 'ok'); continue
    # expect mov r7,#N + svc#0
    assert (cur[0] & 0xFFFFFF00) == 0xE3A07000 and cur[1] == 0xEF000000, (nm, hex(cur[0]), hex(cur[1]))
    put(d, addr, want)
    n[0] += 1
    print(nm, 'wrote -> bl PLT')

open(SO, 'wb').write(d)
print('M4 done, wrote', n[0])

# 8. repair path string clobbered by M3 FLAGS1 ("11111" overwrote "/data")
d = bytearray(open(SO, 'rb').read())
if bytes(d[0xB4303C:0xB43041]) != b'/data':
    d[0xB4303C:0xB43041] = b'/data'
    open(SO, 'wb').write(d)
    print('path string repaired')
else:
    print('path string ok')
