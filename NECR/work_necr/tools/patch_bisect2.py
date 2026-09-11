#!/usr/bin/env python3
"""DIAG-bisect2: nop both bl PLT_close (fd leaks, diag only). Balance-safe.
crash -> read-block guilty; no crash -> close() guilty.
Revert: rerun patch_pltreader.py."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = bytearray(open(SO, 'rb').read())
n = 0
for addr in (0xB4300C, 0xB4302C):
    w, = struct.unpack('<I', bytes(d[addr:addr + 4]))
    if w == 0xE1A00000:
        print(hex(addr), 'already nopped'); continue
    assert (w & 0xFF000000) == 0xEB000000, (hex(addr), hex(w))
    d[addr:addr + 4] = struct.pack('<I', 0xE1A00000)
    n += 1
    print(hex(addr), 'close nopped (was %08x)' % w)
open(SO, 'wb').write(d)
print('bisect2 done, wrote', n)
