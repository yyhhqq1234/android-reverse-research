#!/usr/bin/env python3
import re

b = open('D:/tmp/pp_tap3.xml', encoding='utf-8', errors='replace').read()
names = sorted(set(re.findall(r'name="([^"]+)"', b)))
for n in names:
    if n.startswith('Item'):
        print(n)
