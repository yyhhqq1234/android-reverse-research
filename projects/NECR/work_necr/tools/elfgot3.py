#!/usr/bin/env python3
"""Sample blx-reg call sites and their preceding GOT loads."""
import struct
SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = open(SO, 'rb').read()
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM
md = Cs(CS_ARCH_ARM, CS_MODE_ARM)
n = 0
for off in range(0x1000, 0x1B00000, 4):
    w, = struct.unpack('<I', d[off:off + 4])
    if (w & 0xFFFFFFF0) == 0xE12FFF30:  # blx rX
        rx = w & 0xF
        if n < 5:
            print('blx r%d @%08x' % (rx, off))
            for ins in md.disasm(d[off - 24:off + 4], off - 24):
                print('   %08x %s %s' % (ins.address, ins.mnemonic, ins.op_str))
        n += 1
print('total blx-reg:', n)
