#!/usr/bin/env python3
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM

d = open('D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so', 'rb').read()
md = Cs(CS_ARCH_ARM, CS_MODE_ARM)
md.detail = False
sl = d[0xB42F10:0xB42F30]
print('slicelen', len(sl), sl.hex())
n = 0
for ins in md.disasm(sl, 0xB42F10):
    print(f'  {ins.address:08x}  {ins.mnemonic:10s} {ins.op_str}')
    n += 1
print('count', n)
