#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""T8/B3-route: WHOLE-ENTRY scene/asset replacement (structure-aware).

Unity serialized strings = int32LE(len) + UTF-8 bytes (+ align pad).
Replaces ONLY whole entries (prefix == len(KO)), so short KO that are
substrings of longer words can never match. New entry: int32LE(len(CN)) +
CN + zero-fill to the SAME total size (file size/alignment unchanged).
Operates on build-tree Data dir; sharedassets splits are concatenated and
re-sliced at recorded boundaries. Idempotent (CN entries don't match KO).
Usage: transB3.py <tsv> <data_dir>
Report -> <data_dir>/../transB3_report.txt + console (ASCII-safe).
"""
import os
import struct
import sys

tsv, datadir = sys.argv[1], sys.argv[2]
pairs = []
for ln in open(tsv, encoding='utf-8'):
    ln = ln.rstrip('\n')
    if not ln or ln.startswith('#') or '\t' not in ln:
        continue
    ko, cn = ln.split('\t', 1)
    if cn:
        pairs.append((ko.encode('utf-8'), cn.encode('utf-8')))
want = {}
for raw, new in pairs:
    want.setdefault(raw, new)
    assert want[raw] == new, 'conflicting CN'


def patch_blob(b):
    """Return (patched_bytes, n_replaced, [overflows])."""
    b = bytearray(b)
    rep, over = 0, []
    for raw, new in pairs:
        L = len(raw)
        if len(new) > L:
            continue
        needle = struct.pack('<i', L) + raw
        start = 0
        while True:
            p = b.find(needle, start)
            if p < 0:
                break
            fill = L - len(new)
            b[p:p + 4 + L] = struct.pack('<i', len(new)) + new + b'\x00' * fill
            rep += 1
            start = p + 4 + L
    for raw, new in pairs:
        if len(new) > len(raw):
            needle = struct.pack('<i', len(raw)) + raw
            if needle in b:
                over.append((len(raw), len(new)))
    return bytes(b), rep, over


def files_matching(prefix):
    return sorted(n for n in os.listdir(datadir)
                  if n == prefix or n.startswith(prefix + '.split'))


report = []
total_rep, total_over = 0, []
# 1) split groups (sharedassetsN)
groups = sorted(set(n.split('.split')[0] for n in os.listdir(datadir)
                    if '.split' in n and n.startswith('sharedassets')))
for g in groups:
    parts = files_matching(g)
    blobs = [open(os.path.join(datadir, p), 'rb').read() for p in parts]
    sizes = [len(x) for x in blobs]
    whole = b''.join(blobs)
    new, rep, over = patch_blob(whole)
    assert len(new) == len(whole)
    off = 0
    for p, s in zip(parts, sizes):
        open(os.path.join(datadir, p), 'wb').write(new[off:off + s])
        off += s
    report.append('%s: parts=%d bytes=%d replaced=%d over=%d'
                  % (g, len(parts), len(whole), rep, len(over)))
    total_rep += rep
    total_over += over
# 2) single files (level*, *.resource, others with game text)
singles = sorted(n for n in os.listdir(datadir)
                 if (n.startswith('level') or n.endswith('.resource'))
                 and os.path.isfile(os.path.join(datadir, n)))
for s in singles:
    p = os.path.join(datadir, s)
    b = open(p, 'rb').read()
    new, rep, over = patch_blob(b)
    assert len(new) == len(b)
    if rep:
        open(p, 'wb').write(new)
    report.append('%s: bytes=%d replaced=%d over=%d'
                  % (s, len(b), rep, len(over)))
    total_rep += rep
    total_over += over

rpt = open(os.path.join(datadir, '..', 'transB3_report.txt'),
           'w', encoding='utf-8')
rpt.write('total_replaced_entries: %d\n' % total_rep)
for line in report:
    rpt.write(line + '\n')
rpt.write('overflow_left: %d\n' % len(total_over))
for a, bb in total_over:
    rpt.write('OVER kob=%d cnb=%d\n' % (a, bb))
rpt.close()
print('total_replaced_entries:', total_rep)
for line in report:
    print(line)
print('overflow_left:', len(total_over))
