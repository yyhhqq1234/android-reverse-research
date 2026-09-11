#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""T8/B-route v2: WHOLE-ENTRY metadata replacement (structure-aware).

Parses Il2Cpp v29 header (Offset/Size pairs), walks the stringLiteral table
{int32 length; uint32 offset} -> stringLiteralData blob. Replaces ONLY entries
whose FULL content equals the KO bytes (short KO that are substrings of other
words are never touched). Same-or-shorter bytes, NUL-padded in place.
Usage: transB2.py <tsv> <in_meta> <out_meta>
Report -> D:/tmp/transB2_report.txt (UTF-8) + console summary (ASCII-safe).
"""
import struct
import sys

tsv, src, dst = sys.argv[1], sys.argv[2], sys.argv[3]
pairs = []
for ln in open(tsv, encoding='utf-8'):
    ln = ln.rstrip('\n')
    if not ln or ln.startswith('#') or '\t' not in ln:
        continue
    ko, cn = ln.split('\t', 1)
    if cn:
        pairs.append((ko.encode('utf-8'), cn.encode('utf-8')))

meta = bytearray(open(src, 'rb').read())
magic, ver, slo, sls, sldo, slds = struct.unpack('<6I', meta[:24])
assert magic == 0xFAB11BAF and ver == 29, (hex(magic), ver)
assert sls % 8 == 0
n = sls // 8

want = {}
for raw, new in pairs:
    want.setdefault(raw, new)
    assert want[raw] == new, 'conflicting CN for same KO'

rep, over, matched = 0, [], set()
for i in range(n):
    ln, of = struct.unpack('<iI', meta[slo + i * 8:slo + i * 8 + 8])
    if ln <= 0 or of + ln > slds:
        continue
    cur = bytes(meta[sldo + of:sldo + of + ln])
    if cur in want:
        new = want[cur]
        matched.add(cur)
        if len(new) > len(cur):
            over.append((cur, new))
        else:
            meta[sldo + of:sldo + of + ln] = new + b'\x00' * (ln - len(new))
            rep += 1

missing = [ko for ko in want if ko not in matched]
open(dst, 'wb').write(meta)

rpt = open('D:/tmp/transB2_report.txt', 'w', encoding='utf-8')
rpt.write('entries_replaced: %d\n' % rep)
rpt.write('overflow_entries: %d\n' % len(over))
for ko, cn in over:
    rpt.write('OVER kob=%d cnb=%d\n' % (len(ko), len(cn)))
rpt.write('missing_whole_entries: %d\n' % len(missing))
rpt.close()
print('entries_replaced:', rep)
print('overflow_entries:', len(over))
print('detail -> D:/tmp/transB2_report.txt')
