#!/usr/bin/env python3
import re

b = open('D:/tmp/pp_chk.xml', encoding='utf-8', errors='replace').read()
vals = dict(re.findall(r'"([^"]+)" value="([^"]+)"', b))
for k in sorted(vals):
    if 'amble' in k or 'rade' in k and 'Item' not in k:
        print(k, '=', vals[k])
