#!/usr/bin/env python3
SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = bytearray(open(SO, 'rb').read())
off, exp, new = 0xB42F18, '390010e3', '3910a0e3'
cur = d[off:off + 4].hex()
print(f'cave mov r1 @{hex(off)}: {cur}')
assert cur in (exp, new), cur
d[off:off + 4] = bytes.fromhex(new)
open(SO, 'wb').write(d)
print('cave fixed: mov r1, #57')
