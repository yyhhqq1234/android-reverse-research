#!/usr/bin/env python3
import re

b = open('D:/tmp/pp_new.xml', encoding='utf-8', errors='replace').read()
vals = dict(re.findall(r'"([^"]+)" value="([^"]+)"', b))
n = 0
for k in sorted(vals):
    if k.startswith('Inventory'):
        v = vals[k]
        if v != '0':
            n += 1
            idx = k.replace('Inventory', '')
            row = {f: vals.get(f'Item_{f}{idx}', '-') for f in
                   ('Grade', 'attPlus', 'attSpeed', 'hpPlus', 'hpRe', 'moveSpeed')}
            print(idx, 'id=' + v, row)
print('used:', n)
