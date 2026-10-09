#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Flip TransNum 1->0 in staged prefs.xml."""
P = 'D:/安卓逆向/NECR/work_necr/trans/trial/prefs.xml'
old = 'TransNum" value="1"'
new = 'TransNum" value="0"'
t = open(P, encoding='utf-8').read()
assert old in t, 'TransNum=1 not found'
open(P, 'w', encoding='utf-8').write(t.replace(old, new))
print('local TransNum -> 0')
