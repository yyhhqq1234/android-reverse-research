#!/usr/bin/env python3
"""Resolve PLT entries (add/add/ldr-pc) to GOT addrs; match wanted imports."""
import struct
import sys
SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = open(SO, 'rb').read()
PLT = 0x1C282C
N = 0x3700 // 12


def imm12(w):
    rot = (w >> 8) & 0xF
    v = w & 0xFF
    r = rot * 2
    if r == 0:
        return v
    return ((v >> r) | (v << (32 - r))) & 0xFFFFFFFF


# GOT addrs from elfplt run
GOT = {'open': 0x1c85efc, 'read': 0x1c85f44, 'close': 0x1c85f48,
       'fopen': 0x1c861a4, 'fclose': 0x1c861a8, 'fread': 0x1c861d4,
       'getenv': 0x1c85ef4}
want = set(sys.argv[1:]) or set(GOT)
for i in range(N):
    e = PLT + i * 12
    w1, w2, w3 = struct.unpack('<III', d[e:e + 12])
    # add ip, pc, #X : data-proc-imm, op=add(0100), Rn=pc, Rd=ip
    if (w1 & 0x0FE00000) != 0x02800000:
        continue
    if ((w1 >> 16) & 0xF) != 0xF or ((w1 >> 12) & 0xF) != 0xC:
        continue
    # add ip, ip, #Y
    if (w2 & 0x0FE00000) != 0x02800000:
        continue
    if ((w2 >> 16) & 0xF) != 0xC or ((w2 >> 12) & 0xF) != 0xC:
        continue
    # ldr pc, [ip, #-Z]!
    if (w3 & 0x0C000000) != 0x04000000:
        continue
    if ((w3 >> 16) & 0xF) != 0xC or ((w3 >> 12) & 0xF) != 0xF:
        continue
    x, y, z = imm12(w1), imm12(w2), w3 & 0xFFF
    got = (e + 8 + x + y + z) & 0xFFFFFFFF
    for n, g in GOT.items():
        if g == got and n in want:
            print(n, 'PLT', hex(e), '-> GOT', hex(got))
print('scanned', N)
