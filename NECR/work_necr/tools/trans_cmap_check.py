#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Translation glyph gate: every Hanzi in CN column must be in the game's
font union (NanumGothicExtraBold + NanumBarunGothic, 4621 Hanzi).
Usage: python trans_cmap_check.py <translations.tsv> [hanzi_union.txt]
TSV: KO<TAB>CN. Reports lines using uncovered Hanzi (would render tofu).
"""
import sys

union = set(open(sys.argv[2] if len(sys.argv) > 2 else
                 'D:/安卓逆向/NECR/work_necr/trans/work/font_hanzi_union.txt', encoding='utf-8').read())


def unesc(s):
    return (s.replace('\\\\', '\0').replace('\\n', '\n')
             .replace('\\r', '\r').replace('\\t', '\t').replace('\0', '\\'))


bad = 0
for i, ln in enumerate(open(sys.argv[1], encoding='utf-8'), 1):
    ln = ln.rstrip('\n')
    if not ln or ln.startswith('#') or '\t' not in ln:
        continue
    cn = unesc(ln.split('\t', 1)[1])
    missing = sorted(set(c for c in cn if '\u4e00' <= c <= '\u9fff'
                         and c not in union))
    if missing:
        bad += 1
        print('L%d MISSING %s :: %s' % (i, ''.join(missing), cn))
print('checked lines with uncovered hanzi:', bad)
