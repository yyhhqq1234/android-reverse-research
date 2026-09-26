#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Shorten 6 overflow rows in cn_batch1_fixed.txt (1-based line numbers)."""
import sys

P = 'D:/安卓逆向/NECR/work_necr/trans/work/cn_batch1_fixed.txt'
FIX = {61: '隨機治', 86: '屍妖', 89: '武姬', 108: '大脚', 136: '拿去花。',
       160: '全治療'}

lines = open(P, encoding='utf-8').read().split('\n')
assert len(lines) == 219 and lines[-1] == '', len(lines)
for no, new in FIX.items():
    old = lines[no - 1]
    assert old and old != new, (no, old)
    print('L%d: %d chars -> %d chars' % (no, len(old), len(new)))
    lines[no - 1] = new
open(P, 'w', encoding='utf-8').write('\n'.join(lines))
print('shortened 6')
