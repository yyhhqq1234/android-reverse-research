#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Bisect helper: patch a blob with only pairs whose KO byte-len >= MINLEN."""
import struct
import sys

tsv, src, dst, minlen = sys.argv[1], sys.argv[2], sys.argv[3], int(sys.argv[4])
pairs = []
for ln in open(tsv, encoding='utf-8'):
    ln = ln.rstrip('\n')
    if not ln or ln.startswith('#') or '\t' not in ln:
        continue
    ko, cn = ln.split('\t', 1)
    kb, cb = ko.encode('utf-8'), cn.encode('utf-8')
    if cn and len(kb) >= minlen and len(cb) <= len(kb):
        pairs.append((kb, cb))
b = bytearray(open(src, 'rb').read())
rep = 0
for raw, new in pairs:
    L = len(raw)
    needle = struct.pack('<i', L) + raw
    start = 0
    while True:
        p = b.find(needle, start)
        if p < 0:
            break
        b[p:p + 4 + L] = struct.pack('<i', len(new)) + new + b'\x00' * (L - len(new))
        rep += 1
        start = p + 4 + L
open(dst, 'wb').write(b)
print('pairs=%d replaced=%d' % (len(pairs), rep))
