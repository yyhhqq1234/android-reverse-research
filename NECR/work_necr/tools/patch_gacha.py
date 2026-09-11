#!/usr/bin/env python3
SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = bytearray(open(SO, 'rb').read())
fixes = [
    (0x12184F0, '0a0050e3', '000050e3', 'G1: cost check 10 -> 0'),
    (0x1218508, '0a10a0e3', '0010a0e3', 'G2: deduct 10 -> 0'),
    # G5 retired: superseded by patch_pool_random.py (bl to cave). Kept as note.
    # (0x121851C, 'ldr r5,[r4,#0x10]' -> 'bl 0xB42F10: Range(52,57) into r5'),
]
reverts = [
    (0x121A08C, '0a0000e3', '0400a0e1', 'revert G3 (dead func)'),
    (0x1219380, '0110a0e3', '0510a0e1', 'revert G4 (wrong pool)'),
]
for off, exp, new, tag in fixes + reverts:
    cur = d[off:off + 4].hex()
    print(f'{tag} @{hex(off)}: {cur}')
    if cur == new:
        print('  already applied, skip')
        continue
    assert cur == exp, f'MISMATCH @{hex(off)}: {cur} != {exp}'
    d[off:off + 4] = bytes.fromhex(new)
open(SO, 'wb').write(d)
print('P6 (gacha) applied')
