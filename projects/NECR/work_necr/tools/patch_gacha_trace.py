#!/usr/bin/env python3
"""V17B: bracket Inventory.AddItem call with __android_log_print (localization only).

Hook SITE 0x1218548 (bl AddItem in GambleData.AddthisGambleItem):
  SITE -> bl HOOK; HOOK logs 'NECR17B CALL a1=%d', calls AddItem, logs 'NECR17B RET'.
One purchase run decides: RET present => crash is AFTER AddItem (tail/UI);
no RET => crash is INSIDE AddItem subtree. No product behavior change
(args/regs/stack preserved, 8-byte stack alignment kept). Test build only.
"""
import os
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
SITE = 0x1218548
ORIG_SITE = 0xEBDDFF9A
ADDITEM = 0x9983B8
CAVE = 0x1B3BA80          # FARM1 zero run (G-GUARD occupies 0x1B3BA60..0x1B3BA74)
TAG = b'NECR17B\x00'
FMT1 = b'CALL a1=%d\x00'
FMT2 = b'RET\x00'


def bl(frm, to):
    off = (to - (frm + 8)) // 4
    assert -0x800000 <= off <= 0x7FFFFF, (hex(frm), hex(to))
    return 0xEB000000 | (off & 0xFFFFFF)


def adr_rd(rd, instr_addr, target):
    delta = target - (instr_addr + 8)
    assert 0 <= delta <= 0xFF, (hex(instr_addr), hex(target))
    return 0xE28F0000 | (rd << 12) | delta


def va2off_factory(d):
    phoff = struct.unpack('<I', d[0x1C:0x20])[0]
    phentsize, phnum = struct.unpack('<HH', d[0x2A:0x2E])
    loads = []
    for i in range(phnum):
        pt, po, va, pa, fs, ms, fl, al = struct.unpack('<IIIIIIII', d[phoff + i * phentsize:phoff + i * phentsize + 32])
        if pt == 1:
            loads.append((va, po, fs))

    def va2off(va):
        for v, o, fs in loads:
            if v <= va < v + fs:
                return va - v + o
        return None

    return va2off


d = bytearray(open(SO, 'rb').read())

# --- resolve __android_log_print PLT stub (same math must reproduce getenv PLT) ---
va2off = va2off_factory(d)
dyn = None
phoff = struct.unpack('<I', d[0x1C:0x20])[0]
phentsize, phnum = struct.unpack('<HH', d[0x2A:0x2E])
for i in range(phnum):
    o = phoff + i * phentsize
    pt, po, va, pa, fs, ms, fl, al = struct.unpack('<IIIIIIII', d[o:o + 32])
    if pt == 2:
        dyn = va
        break
tags = {}
o = va2off(dyn)
for i in range(64):
    tg, val = struct.unpack('<ii', d[o + i * 8:o + i * 8 + 8])
    if tg == 0:
        break
    tags[tg] = val
strtab, symtab = va2off(tags[5]), va2off(tags[6])
jmprel, pltsz = va2off(tags[23]), tags[2]
strs = bytes(d[strtab:strtab + 0x80000])


def sym_idx(name):
    ni = strs.find(name + b'\x00')
    assert ni > 0, name
    for i in range(60000):
        if struct.unpack('<I', d[symtab + i * 16:symtab + i * 16 + 4])[0] == ni:
            return i
    raise AssertionError(name)


def plt_stub(name):
    idx = sym_idx(name)
    for i in range(pltsz // 8):
        ro, ri = struct.unpack('<II', d[jmprel + i * 8:jmprel + i * 8 + 8])
        if (ri >> 8) == idx:
            return 0x1C2818 + 20 + 12 * i  # PLT0 magic verified at 0x1C2818
    raise AssertionError(name)


assert plt_stub(b'getenv') == 0x1C2C04, 'PLT math changed!'
LOGPLT = plt_stub(b'__android_log_print')
print('LOGPLT', hex(LOGPLT))

# --- cave layout ---
CODE_N = 16
TAG_OFF = CAVE + CODE_N * 4
FMT1_OFF = TAG_OFF + 12          # TAG 8B padded to 12? TAG is 8B incl NUL; keep 4-align
while FMT1_OFF % 4:
    FMT1_OFF += 1
FMT2_OFF = FMT1_OFF + 12         # FMT1 11B padded to 12
assert FMT2_OFF + 4 <= 0x1B3BA60 + 129 * 4, 'cave overflow'

code = [
    0xE92D500F,                            # +0x00 push {r0-r3,r12,lr}
    0xE3A00004,                            # +0x04 mov r0,#4 (INFO)
    adr_rd(1, CAVE + 0x08, TAG_OFF),       # +0x08 adr r1,TAG
    adr_rd(2, CAVE + 0x0C, FMT1_OFF),      # +0x0C adr r2,FMT1
    0xE59D3004,                            # +0x10 ldr r3,[sp,#4] (saved r1 = a1)
    bl(CAVE + 0x14, LOGPLT),               # +0x14 bl log_print
    0xE8BD500F,                            # +0x18 pop {r0-r3,r12,lr}
    0xE92D5000,                            # +0x1C push {r12,lr}
    bl(CAVE + 0x20, ADDITEM),              # +0x20 bl AddItem
    0xE92D500F,                            # +0x24 push {r0-r3,r12,lr}
    0xE3A00004,                            # +0x28 mov r0,#4
    adr_rd(1, CAVE + 0x2C, TAG_OFF),       # +0x2C adr r1,TAG
    adr_rd(2, CAVE + 0x30, FMT2_OFF),      # +0x30 adr r2,FMT2
    bl(CAVE + 0x34, LOGPLT),               # +0x34 bl log_print
    0xE28DD018,                            # +0x38 add sp,sp,#24
    0xE8BD9000,                            # +0x3C pop {r12,pc}
]
want_site = bl(SITE, CAVE)
cur_site, = struct.unpack('<I', d[SITE:SITE + 4])
cur_code = struct.unpack('<%dI' % CODE_N, d[CAVE:CAVE + CODE_N * 4])
if cur_site == want_site and tuple(cur_code) == tuple(code):
    print('TRACE already applied, skip')
    sys.exit(0)
if cur_site != ORIG_SITE and cur_site != want_site:
    sys.exit('SITE unexpected @%s: %s' % (hex(SITE), hex(cur_site)))
if tuple(cur_code) != tuple(code):
    if any(w != 0 for w in cur_code):
        sys.exit('CAVE not free @%s' % hex(CAVE))
    d[CAVE:CAVE + CODE_N * 4] = struct.pack('<%dI' % CODE_N, *code)
    # strings
    d[TAG_OFF:TAG_OFF + len(TAG)] = TAG
    d[FMT1_OFF:FMT1_OFF + len(FMT1)] = FMT1
    d[FMT2_OFF:FMT2_OFF + len(FMT2)] = FMT2
    print('HOOK wrote @%s (tag %s fmt1 %s fmt2 %s)' % (hex(CAVE), hex(TAG_OFF), hex(FMT1_OFF), hex(FMT2_OFF)))
d[SITE:SITE + 4] = struct.pack('<I', want_site)
print('SITE %s -> %s (bl HOOK)' % (hex(cur_site), hex(want_site)))
open(SO, 'wb').write(d)
print('TRACE applied')
