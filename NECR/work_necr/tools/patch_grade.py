#!/usr/bin/env python3
SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = bytearray(open(SO, 'rb').read())
fixes = [
    (0x999E74, '0500a0e1', '070000e3', 'G6: Inventory.RandomGrade always 7 (G)'),
]
for off, exp, new, tag in fixes:
    cur = d[off:off + 4].hex()
    print(f'{tag} @{hex(off)}: {cur}')
    if cur == new:
        print('  already applied, skip')
        continue
    assert cur == exp, f'MISMATCH @{hex(off)}: {cur} != {exp}'
    d[off:off + 4] = bytes.fromhex(new)
open(SO, 'wb').write(d)
print('P7 (grade) applied')
