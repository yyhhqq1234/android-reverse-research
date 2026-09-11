#!/usr/bin/env python3
"""Find movw/movt pairs materializing GOT-range addresses."""
import struct
SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = open(SO, 'rb').read()
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM
md = Cs(CS_ARCH_ARM, CS_MODE_ARM)
n = 0
for off in range(0x1000, 0x1B00000, 4):
    w, = struct.unpack('<I', d[off:off + 4])
    # movw rX, #imm16
    if (w & 0xFFF00000) == 0xE3000000:
        rd = (w >> 12) & 0xF
        imm = ((w >> 16) & 0xF) << 12 | (w & 0xFFF)
        w2, = struct.unpack('<I', d[off + 4:off + 8])
        if (w2 & 0xFFF00000) == 0xE3400000 and ((w2 >> 12) & 0xF) == rd:
            imm2 = ((w2 >> 16) & 0xF) << 12 | (w2 & 0xFFF)
            full = (imm2 << 16) | imm
            if 0x1C84000 <= full <= 0x1C88000:
                print('movw/movt @%08x r%d -> %08x' % (off, rd, full))
                for ins in md.disasm(d[off:off + 24], off):
                    print('   %08x %s %s' % (ins.address, ins.mnemonic, ins.op_str))
                n += 1
                if n >= 8:
                    break
print('done', n)
