#!/usr/bin/env python3
import re

b = open('D:/tmp/pp_chk.xml', encoding='utf-8', errors='replace').read()
inv = re.findall(r'"(Inventory\d+)" value="(\d+)"', b)
used = [(k, v) for k, v in inv if v != '0']
print('inv slots used:', len(used), used[:40])
d = re.search(r'"diacost" value="(\d+)"', b)
print('diamonds:', d.group(1) if d else '?')
g = re.search(r'"AllBuyItemsNum" value="(\d+)"', b)
print('allbuy:', g.group(1) if g else '?')
ids = sorted(set(v for _, v in used))
print('unit ids:', ids)
