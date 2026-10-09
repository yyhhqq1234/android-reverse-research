#!/usr/bin/env python3
import struct
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM

d = open('D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so', 'rb').read()
md = Cs(CS_ARCH_ARM, CS_MODE_ARM)
ranges = [(0x995000, 0x99F000, 'Inventory/ItemData'),
          (0x1218000, 0x121B000, 'Gamble'),
          (0x1224000, 0x1226000, 'MixBox')]
for a0, a1, nm in ranges:
    print('==', nm, flush=True)
    a = a0
    while a < a1:
        blk = d[a:min(a + 0x1000, a1)]
        try:
            md2 = Cs(CS_ARCH_ARM, CS_MODE_ARM)
            for ins in md2.disasm(blk, a):
                if ins.mnemonic == 'bl' and ins.op_str == '#0x12896e0':
                    print('  Range call @', hex(ins.address), flush=True)
        except Exception:
            pass
        a += 0x1000
