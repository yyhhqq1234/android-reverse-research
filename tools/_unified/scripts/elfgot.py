#!/usr/bin/env python3
"""Dump code referencing GOT area to learn this linker's PLT shape."""
import struct
SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = open(SO, 'rb').read()
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM
md = Cs(CS_ARCH_ARM, CS_MODE_ARM)
n = 0
for off in range(0x1000, 0x1B00000, 4):
    w, = struct.unpack('<I', d[off:off + 4])
    if (w & 0xFF7F0000) == 0xE59F0000:  # ldr rX, [pc, #+/-imm]
        u = (w >> 23) & 1
        imm = w & 0xFFF
        tgt = off + 8 + (imm if u else -imm)
        if 0x1C84000 <= tgt <= 0x1C88000:
            print('ref @%08x -> GOT %08x' % (off, tgt))
            for ins in md.disasm(d[off - 4:off + 20], off - 4):
                print('   %08x %s %s' % (ins.address, ins.mnemonic, ins.op_str))
            n += 1
            if n >= 6:
                break
