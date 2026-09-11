#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""T8/B-route: metadata content replacement trial (generalized).

Usage:
  python transB_trial.py <translations.tsv> <in_metadata> <out_metadata>
translations.tsv: KO<TAB>CN per line (UTF-8, no header).
  Lines starting with '#' skipped. Empty CN = skip entry.
Rules: strict same-or-shorter BYTE length (UTF-8). Longer -> overflow list,
  untouched. Each KO must hit exactly once (assert), else reported.
Report: replaced count, skipped-empty, overflow list, missing list.
Idempotent on the same inputs. NEVER touches src tree; caller picks paths.
"""
import sys

src, dst = sys.argv[2], sys.argv[3]
pairs = []
for ln in open(sys.argv[1], encoding='utf-8'):
    ln = ln.rstrip('\n')
    if not ln or ln.startswith('#') or '\t' not in ln:
        continue
    ko, cn = ln.split('\t', 1)
    if cn:
        pairs.append((ko, cn))

meta = bytearray(open(src, 'rb').read())
rep, over, miss, multi = [], [], [], []
for ko, cn in pairs:
    raw, new = ko.encode('utf-8'), cn.encode('utf-8')
    c = meta.count(raw)
    if c == 0:
        miss.append(ko)
    elif c > 1:
        multi.append((ko, c))
    elif len(new) > len(raw):
        over.append((ko, cn, len(raw), len(new)))
    else:
        off = meta.find(raw)
        meta[off:off + len(raw)] = new + b'\x00' * (len(raw) - len(new))
        rep.append(ko)
open(dst, 'wb').write(meta)
rpt = open('D:/tmp/transB_report.txt', 'w', encoding='utf-8')
rpt.write('replaced: %d\n' % len(rep))
rpt.write('overflow(longer, untouched): %d\n' % len(over))
for ko, cn, a, b in over:
    rpt.write('OVER %d->%d %s => %s\n' % (a, b, ko, cn))
rpt.write('missing: %d multi-hit: %d\n' % (len(miss), len(multi)))
for ko in miss:
    rpt.write('MISS %s\n' % ko)
for ko, c in multi:
    rpt.write('MULTI x%d %s\n' % (c, ko))
rpt.close()
print('replaced:', len(rep))
print('overflow(longer, untouched):', len(over))
print('missing:', len(miss), 'multi-hit:', len(multi))
print('detail -> D:/tmp/transB_report.txt')
