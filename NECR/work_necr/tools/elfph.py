#!/usr/bin/env python3
import struct
SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = open(SO, 'rb').read()
e_phoff = struct.unpack('<I', d[0x1C:0x20])[0]
e_phnum = struct.unpack('<H', d[0x2C:0x2E])[0]
for i in range(e_phnum):
    o = e_phoff + i * 32
    t, off, v, p, fsz, msz, fl, al = struct.unpack('<IIIIIIII', d[o:o + 32])
    print('type %d off %08x vaddr %08x filesz %08x' % (t, off, v, fsz))
