#!/usr/bin/env python3
import re

b = open('D:/tmp/pp_chk.xml', encoding='utf-8', errors='replace').read()
vals = dict(re.findall(r'"([^"]+)" value="([^"]+)"', b))
for slot in range(15):
    row = {}
    for f in ('Inventory', 'Item_Grade', 'Item_attPlus', 'Item_attSpeed',
              'Item_hpPlus', 'Item_hpRe', 'Item_moveSpeed', 'Item_Lock'):
        row[f] = vals.get(f'{f}{slot}', '-')
    print(slot, row)
