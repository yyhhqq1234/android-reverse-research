#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Single-pair patch: replace one KO whole-entry (or same-len content swap)."""
import struct
import sys

tsv, src, dst, lineno = sys.argv[1], sys.argv[2], sys.argv[3], int(sys.argv[4])
rows = [l.rstrip('\n') for l in open(tsv, encoding='utf-8')]
ko, cn = rows[lineno - 1].split('\t', 1)
pairs = [(ko.encode('utf-8'), cn.encode('utf-8'))]
assert len(pairs) == 1
raw, new = pairs[0]
b = bytearray(open(src, 'rb').read())
needle = struct.pack('<i', len(raw)) + raw
p = b.find(needle)
assert p > 0, 'KO entry not found'
fill = len(raw) - len(new)
assert fill >= 0
b[p:p + 4 + len(raw)] = struct.pack('<i', len(new)) + new + b'\x00' * fill
open(dst, 'wb').write(b)
print('single patched at %d (koB=%d cnB=%d)' % (p, len(raw), len(new)))
