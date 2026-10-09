#!/usr/bin/env python3
"""Read section headers: locate .plt/.got/.rel.plt + dump PLT head."""
import struct
SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = open(SO, 'rb').read()
e_shoff = struct.unpack('<I', d[0x20:0x24])[0]
e_shnum = struct.unpack('<H', d[0x30:0x32])[0]
e_shstr = struct.unpack('<H', d[0x32:0x34])[0]
so = e_shoff + e_shstr * 40
sh_off, = struct.unpack('<I', d[so + 16:so + 20])
for i in range(e_shnum):
    o = e_shoff + i * 40
    name, typ, fl, va, off, sz, lk, inf, al, esz = struct.unpack('<IIIIIIIIII', d[o:o + 40])
    end = d.index(b'\x00', sh_off + name)
    nm = d[sh_off + name:end].decode()
    if nm in ('.plt', '.got', '.rel.plt', '.rel.dyn', '.text', '.dynsym', '.dynstr'):
        print('%-10s va %08x off %08x size %08x' % (nm, va, off, sz))
