#!/usr/bin/env python3
"""DIAG: stub READER to constant (no svc) to isolate crash. Reversible."""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
READER = 0xB42FC0
BACKUP = 'D:/安卓逆向/NECR/work_necr/save/reader_orig.bin'

d = bytearray(open(SO, 'rb').read())
orig = bytes(d[READER:READER + 124])
stub = struct.pack('<III', 0xE92D4010, 0xE3A00000, 0xE8BD8010)
stub += struct.pack('<I', 0xE1A00000) * ((124 - len(stub)) // 4)

if sys.argv[1:] and sys.argv[1] == 'revert':
    o = open(BACKUP, 'rb').read()
    d[READER:READER + 124] = o
    open(SO, 'wb').write(d)
    print('READER restored')
elif orig == stub:
    print('stub already in place')
else:
    open(BACKUP, 'wb').write(orig)
    d[READER:READER + 124] = stub
    open(SO, 'wb').write(d)
    print('READER stubbed (always OFF), orig saved')
