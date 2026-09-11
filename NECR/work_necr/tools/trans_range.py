#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Range patch: TSV lines [lo, hi] (1-based, inclusive) whole-entries."""
import struct
import sys

tsv, src, dst, lo, hi = sys.argv[1], sys.argv[2], sys.argv[3], int(sys.argv[4]), int(sys.argv[5])
rows = [l.rstrip('\n') for l in open(tsv, encoding='utf-8')]
b = bytearray(open(src, 'rb').read())
rep, skip = 0, 0
for n in range(lo, hi + 1):
    ko, cn = rows[n - 1].split('\t', 1)
    raw, new = ko.encode('utf-8'), cn.encode('utf-8')
    if len(new) > len(raw):
        skip += 1
        continue
    needle = struct.pack('<i', len(raw)) + raw
    start = 0
    while True:
        p = b.find(needle, start)
        if p < 0:
            break
        b[p:p + 4 + len(raw)] = struct.pack('<i', len(new)) + new + b'\x00' * (len(raw) - len(new))
        rep += 1
        start = p + 4 + len(raw)
open(dst, 'wb').write(b)
print('range %d-%d replaced=%d skipped=%d' % (lo, hi, rep, skip))
