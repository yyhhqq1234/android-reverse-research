#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""FINAL scene patch: all TSV pairs EXCEPT load-bearing stage names (40 lines).

Stage names (portal/stage-select keys) crash village entry when renamed
(proven by bisect: TSV L21/22/36/37/38 group). They stay Korean in v1.
Usage: trans_final.py <tsv> <data_dir>
Writes report to <data_dir>/../trans_final_report.txt.
"""
import os
import struct

SKIP = {19, 20, 21, 22, 35, 36, 37, 38, 79, 80, 81, 82, 102, 103, 104, 105,
        119, 120, 121, 122, 130, 131, 132, 133, 140, 141, 142, 143, 165, 166,
        167, 168, 187, 188, 189, 190, 209, 210, 211, 212}

import sys
tsv, datadir = sys.argv[1], sys.argv[2]
rows = [l.rstrip('\n') for l in open(tsv, encoding='utf-8')]
pairs = []
for n, ln in enumerate(rows, 1):
    if n in SKIP or not ln or '\t' not in ln:
        continue
    ko, cn = ln.split('\t', 1)
    kb, cb = ko.encode('utf-8'), cn.encode('utf-8')
    if cn and cb <= kb:
        pairs.append((kb, cb))


def patch_blob(b):
    b = bytearray(b)
    rep = 0
    for raw, new in pairs:
        needle = struct.pack('<i', len(raw)) + raw
        start = 0
        while True:
            p = b.find(needle, start)
            if p < 0:
                break
            b[p:p + 4 + len(raw)] = (struct.pack('<i', len(new)) + new
                                     + b'\x00' * (len(raw) - len(new)))
            rep += 1
            start = p + 4 + len(raw)
    return bytes(b), rep


log = []
total = 0
groups = sorted(set(n.split('.split')[0] for n in os.listdir(datadir)
                    if '.split' in n and n.startswith('sharedassets')))
for g in groups:
    parts = sorted(n for n in os.listdir(datadir)
                   if n == g or n.startswith(g + '.split'))
    blobs = [open(os.path.join(datadir, p), 'rb').read() for p in parts]
    sizes = [len(x) for x in blobs]
    new, rep = patch_blob(b''.join(blobs))
    assert len(new) == sum(sizes)
    off = 0
    for p, s in zip(parts, sizes):
        open(os.path.join(datadir, p), 'wb').write(new[off:off + s])
        off += s
    log.append('%s: parts=%d replaced=%d' % (g, len(parts), rep))
    total += rep
for s in sorted(n for n in os.listdir(datadir)
                if (n.startswith('level') or n.endswith('.resource'))
                and os.path.isfile(os.path.join(datadir, n))):
    p = os.path.join(datadir, s)
    b = open(p, 'rb').read()
    new, rep = patch_blob(b)
    assert len(new) == len(b)
    if rep:
        open(p, 'wb').write(new)
    log.append('%s: replaced=%d' % (s, rep))
    total += rep
open(os.path.join(datadir, '..', 'trans_final_report.txt'), 'w').write(
    'total=%d skipped_stage_lines=%d\n%s\n'
    % (total, len(SKIP), '\n'.join(log)))
print('total replaced:', total)
for l in log:
    print(l)
