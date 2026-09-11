#!/usr/bin/env python3
"""DIAG-bisect: bypass read block (open-ok -> close -> return ON).
Revert: rerun patch_pltreader.py (idempotent, restores cmp/ble)."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = bytearray(open(SO, 'rb').read())
cur = struct.unpack('<II', bytes(d[0xB42FF8:0xB43000]))
print('cur:', hex(cur[0]), hex(cur[1]))
if cur == (0xEA000008, 0xE1A00000):
    print('bypass already in place')
else:
    assert cur == (0xE3500000, 0xDA000008), (hex(cur[0]), hex(cur[1]))
    d[0xB42FF8:0xB43000] = struct.pack('<II', 0xEA000008, 0xE1A00000)
    open(SO, 'wb').write(d)
    print('bypass installed: open-ok -> R_CLOSE -> ON')
