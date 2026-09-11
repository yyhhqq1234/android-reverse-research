#!/usr/bin/env python3
"""M5: even-out READER pushes (5 regs -> 6 regs) to keep SP 8-aligned across
libc PLT calls. Same-size mask swaps only. Idempotent."""
import struct

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = bytearray(open(SO, 'rb').read())
n = 0
# push {r4-r7,lr} -> push {r4-r8,lr}
for addr, old, new, nm in [
    (0xB42FC0, 0xE92D40F0, 0xE92D41F0, 'push'),
    (0xB43020, 0xE8BD40F0, 0xE8BD81F0, 'pop1'),
    (0xB43038, 0xE8BD40F0, 0xE8BD81F0, 'pop2'),
]:
    cur, = struct.unpack('<I', bytes(d[addr:addr + 4]))
    if cur == new:
        print(nm, 'ok'); continue
    assert cur == old, (nm, hex(cur))
    d[addr:addr + 4] = struct.pack('<I', new)
    n += 1
    print(nm, 'wrote')
open(SO, 'wb').write(d)
print('M5 done, wrote', n)
