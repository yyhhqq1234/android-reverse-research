#!/usr/bin/env python3
import re

pools = {1: [1, 2, 3, 4, 5], 2: [6, 7, 8, 9, 10], 3: [11, 12, 13, 14],
         4: [15, 16, 17, 45, 46, 47, 48, 49, 50, 51],
         5: [18, 19, 20, 21, 39, 40, 41], 6: [22, 23, 24, 25],
         7: [26, 27, 28, 42], 8: [29, 30],
         9: [31, 32, 33, 34, 35, 36, 37, 38, 43, 44],
         10: [52, 53, 54, 55, 56]}
idu = {}
for t, ids in pools.items():
    for i in ids:
        idu[i] = t
for f in ('pp_now2', 'pp_tap3', 'pp_chk', 'pp_new', 'pp_cur'):
    try:
        b = open(f'D:/tmp/{f}.xml', encoding='utf-8', errors='replace').read()
    except FileNotFoundError:
        continue
    g = re.findall(r'"Gamble([0-5])" value="(\d+)"', b)
    ids = [int(v) for _, v in sorted(g)]
    tiers = [idu.get(i, '?') for i in ids]
    print(f, ids, tiers)
