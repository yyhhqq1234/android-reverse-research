#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Enumerate per-entry transB3 matches in PRISTINE scene blobs (read-only).
Usage: report_b3.py <tsv> ; reads scene_pristine under work_necr/trans/trial.
Output: for each KO with >=1 whole-entry match: files+offsets+context tag."""
import io
import os
import struct
import sys

W = 'D:/安卓逆向/NECR/work_necr'
P = os.path.join(W, 'trans', 'trial', 'scene_pristine')


def unesc(s):
    return (s.replace('\\\\', '\0').replace('\\n', '\n')
             .replace('\\r', '\r').replace('\\t', '\t').replace('\0', '\\'))


pairs = []
for ln in io.open(sys.argv[1], encoding='utf-8'):
    ln = ln.rstrip('\n')
    if not ln or ln.startswith('#') or '\t' not in ln:
        continue
    ko, cn = ln.split('\t', 1)
    ko, cn = unesc(ko), unesc(cn)
    if cn:
        pairs.append((ko.encode('utf-8'), cn.encode('utf-8')))

blobs = {}
for n in sorted(os.listdir(P)):
    p = os.path.join(P, n)
    if os.path.isfile(p) and (n.startswith('level') or n.startswith('sharedassets')):
        blobs[n] = open(p, 'rb').read()
# reassemble split groups like transB3 does
groups = {}
for n in sorted(os.listdir(P)):
    if '.split' in n and n.startswith('sharedassets'):
        g = n.split('.split')[0]
        groups.setdefault(g, []).append(n)
for g, parts in groups.items():
    blobs[g] = b''.join(open(os.path.join(P, p), 'rb').read() for p in parts)

print('files:', sorted(blobs)[:8], '...')

def context(blob, off, ln):
    s = max(0, off - 48)
    e = min(len(blob), off + 4 + ln + 48)
    seg = blob[s:e]
    # crude tag: printable-ratio around the match
    head = blob[s:off]
    tail = blob[off + 4 + ln:e]
    def pr(x):
        x = x.strip(b'\x00')
        if not x:
            return 1.0
        return sum(1 for c in x if 32 <= c < 127 or c >= 128) / len(x)
    return 'head_printable=%.2f tail_printable=%.2f' % (pr(head), pr(tail))

n_hit = 0
for ko, cn in pairs:
    needle = struct.pack('<i', len(ko)) + ko
    hits = []
    for name, blob in blobs.items():
        start = 0
        while True:
            i = blob.find(needle, start)
            if i < 0:
                break
            hits.append((name, i, context(blob, i, len(ko))))
            start = i + 1
    if hits:
        n_hit += 1
        ko_t = ko.decode('utf-8')
        disp = ko_t if len(ko_t) <= 44 else ko_t[:44] + '...'
        print('KO[%dB]=%s' % (len(ko), disp.replace('\n', '\\n')))
        for h in hits[:6]:
            print('   ', h[0], 'off=%d' % h[1], h[2])
print('entries_with_matches:', n_hit)
