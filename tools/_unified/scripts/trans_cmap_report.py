#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Glyph gate with U+XXXX report to a file (console-safe)."""
import io
import sys
from collections import Counter

tsv, out = sys.argv[1], sys.argv[2]
union = set(io.open('D:/安卓逆向/NECR/work_necr/trans/work/font_hanzi_union.txt',
                    encoding='utf-8').read())


def unesc(s):
    return (s.replace('\\\\', '\0').replace('\\n', '\n')
             .replace('\\r', '\r').replace('\\t', '\t').replace('\0', '\\'))
cnt = Counter()
bad_lines = 0
details = []
for i, ln in enumerate(io.open(tsv, encoding='utf-8'), 1):
    ln = ln.rstrip('\n')
    if not ln or ln.startswith('#') or '\t' not in ln:
        continue
    cn = unesc(ln.split('\t', 1)[1])
    missing = sorted(set(c for c in cn if '\u4e00' <= c <= '\u9fff'
                         and c not in union))
    if missing:
        bad_lines += 1
        cnt.update(missing)
        details.append('L%d %s :: %s'
                       % (i, ' '.join('U+%04X' % ord(c) for c in missing), cn))
with io.open(out, 'w', encoding='utf-8') as f:
    f.write('bad_lines=%d distinct_missing=%d\n' % (bad_lines, len(cnt)))
    for c, n in cnt.most_common():
        f.write('U+%04X %s x%d\n' % (ord(c), c, n))
    f.write('---\n')
    f.write('\n'.join(details))
print('bad_lines=%d distinct=%d -> %s' % (bad_lines, len(cnt), out))
