#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Fix last 2 overflows: batch36 南边森林->南森林 (+variants), batch91 巴拉克->巴拉."""
import sys

P = 'D:/安卓逆向/NECR/work_necr/trans/work/cn_batch1_fixed.txt'
lines = open(P, encoding='utf-8').read().split('\n')
assert len(lines) == 219 and lines[-1] == '', len(lines)


def setline(no1, expect_sub, new):
    old = lines[no1 - 1]
    assert expect_sub in old, (no1, old)
    lines[no1 - 1] = new
    print('L%d ok' % no1)


setline(36, '南邊森林', '南森林')
for no1, suf in ((37, '-1'), (38, '-2'), (39, '-3')):
    setline(no1, '南邊森林', '南森林' + suf)
setline(91, '巴拉克', '巴拉')
open(P, 'w', encoding='utf-8').write('\n'.join(lines))
print('overflow2 fixed')
