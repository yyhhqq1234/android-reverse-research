#!/usr/bin/env python3
import re
d = open('D:/安卓逆向/NECR/work_necr/src/assets/bin/Data/level2', 'rb').read()
for base in (0x23500, 0x2A100):
    seg = d[base:base + 0x300]
    # printable runs >=4
    runs = re.findall(rb'[ -~]{4,}', seg)
    print(f'--- strings near {hex(base)} ---')
    for s in runs[:40]:
        print(' ', s.decode())
