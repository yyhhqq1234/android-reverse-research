#!/usr/bin/env python3
import struct

so = open('D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so', 'rb').read()
out = []
# pair k: first-ldr @0x99E338+12k (slot consecutive +4), second-ldr @0x99E33C+12k (base +8)
for k in range(7):
    a1 = 0x99E338 + 12 * k
    a2 = 0x99E33C + 12 * k
    w1 = struct.unpack('<I', so[a1:a1 + 4])[0]
    imm = w1 & 0xFFF
    slot = (a1 + 8) + imm
    off = struct.unpack('<i', so[slot:slot + 4])[0]
    cell = (a2 + 8) + off
    sp = struct.unpack('<I', so[cell:cell + 4])[0]
    ln = struct.unpack('<I', so[sp + 8:sp + 12])[0]
    if ln > 8:
        out.append(f'slot{k}: cell={cell:#x} sp={sp:#x} LEN_SUSPICIOUS={ln}')
        continue
    ch = so[sp + 12:sp + 12 + ln * 2].decode('utf-16-le', errors='replace')
    out.append(f'ranGrade? -> {ascii(ch)}  (cell={cell:#x} sp={sp:#x})')
open('D:/tmp/grades.txt', 'w', encoding='utf-8').write('\n'.join(out) + '\n')
print('wrote D:/tmp/grades.txt')
