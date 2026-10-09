#!/usr/bin/env python3
import re

def load(p):
    try:
        return open(p, encoding='utf-8').read()
    except UnicodeDecodeError:
        return open(p, encoding='utf-16').read()


a = load('D:/tmp/pp_now2.xml')
b = load('D:/tmp/pp_tap3.xml')
pat = r'<int name="([^"]+)" value="([^"]+)"'
pa = dict(re.findall(pat, a))
pb = dict(re.findall(pat, b))
print('total keys:', len(pb))
n = 0
for k in sorted(pb):
    if pa.get(k) != pb[k]:
        tag = 'NEW' if k not in pa else 'CHG'
        print(tag, k, pa.get(k), '->', pb[k])
        n += 1
print('diffs:', n)
