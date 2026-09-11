#!/usr/bin/env python3
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM
import sys
d = open('D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so', 'rb').read()
base = int(sys.argv[1], 16)
ln = int(sys.argv[2])
md = Cs(CS_ARCH_ARM, CS_MODE_ARM)
for ins in md.disasm(d[base:base + ln], base):
    print('  %08x  %s %s %s' % (ins.address, ins.bytes.hex(), ins.mnemonic, ins.op_str))
