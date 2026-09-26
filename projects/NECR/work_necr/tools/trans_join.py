#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Join translation sources into exact-KO TSVs for transB2/transB3.

Inputs (fixed paths under work_necr/trans/work/):
  ko.txt             ID<TAB>KO (exact metadata bytes, IDs are comments only)
  mt1.tsv            KO<TAB>CN batch1 (exact KO bytes, verified 217)
  cn_batch2_id.tsv   ID<TAB>CN batch2 (keyed by ko.txt ID)
  scene_only.txt     byteLen<TAB>KO(escaped \\n) scene strings not in ko.txt
  cn_scene_idx.tsv   LINENO<TAB>CN (\\n escapes for real newlines)
Outputs:
  tsv_full.tsv       KO<TAB>CN (mt1 + batch2) -> transB2.py (metadata)
  tsv_scene.tsv      KO<TAB>CN (full + scene-only) -> transB3.py (scenes)
Gates: unknown IDs, missing CN, conflicting CN for same KO, byte overflows
(all reported; overflow is fatal here so trial scripts stay clean).
"""
import io
import os
import sys

W = 'D:/安卓逆向/NECR/work_necr/trans/work'


def unesc(s):
    return (s.replace('\\\\', '\0').replace('\\n', '\n')
             .replace('\\r', '\r').replace('\\t', '\t').replace('\0', '\\'))


def esc(s):
    return (s.replace('\\', '\\\\').replace('\n', '\\n')
             .replace('\r', '\\r').replace('\t', '\\t'))


def load_pairs(path):
    pairs = []
    for ln in io.open(path, encoding='utf-8'):
        ln = ln.rstrip('\n')
        if not ln or ln.startswith('#') or '\t' not in ln:
            continue
        ko, cn = ln.split('\t', 1)
        if cn:
            pairs.append((ko, cn))
    return pairs


ko_by_id = {}
for ln in io.open(os.path.join(W, 'ko.txt'), encoding='utf-8'):
    ln = ln.rstrip('\n')
    if '\t' in ln:
        i, k = ln.split('\t', 1)
        ko_by_id[i] = k

full = load_pairs(os.path.join(W, 'mt1.tsv'))
print('mt1 pairs:', len(full))

n2 = 0
rawfix = {}
for ln in io.open(os.path.join(W, 'cn_rawfix.tsv'), encoding='utf-8'):
    ln = ln.rstrip('\n')
    if not ln or ln.startswith('#') or '\t' not in ln:
        continue
    i, rk = ln.split('\t', 1)
    rawfix[i] = unesc(rk)
print('rawfix entries:', len(rawfix))
for ln in io.open(os.path.join(W, 'cn_batch2_id.tsv'), encoding='utf-8'):
    ln = ln.rstrip('\n')
    if not ln or '\t' not in ln:
        continue
    i, cn = ln.split('\t', 1)
    assert i in ko_by_id, 'unknown ID ' + i
    if i in rawfix:
        ko = rawfix[i]
        assert ko.count('\n') == cn.count(' / '), 'sep count mismatch ' + i
        cn = cn.replace(' / ', '\n')
    else:
        ko = ko_by_id[i]
    full.append((ko, cn))
    n2 += 1
print('batch2 pairs:', n2)

want = {}
for ko, cn in full:
    assert ko not in want or want[ko] == cn, 'conflict: ' + ko[:30]
    want[ko] = cn

over = [(ko, cn) for ko, cn in want.items()
        if len(cn.encode('utf-8')) > len(ko.encode('utf-8'))]
print('meta overflow:', len(over))
for ko, cn in over:
    print('OVER %d>%d %s => %s'
          % (len(ko.encode('utf-8')), len(cn.encode('utf-8')), ko[:40], cn[:40]))
assert not over, 'meta overflows must be shortened first'

with io.open(os.path.join(W, 'tsv_full.tsv'), 'w', encoding='utf-8') as f:
    for ko, cn in want.items():
        f.write('%s\t%s\n' % (esc(ko), esc(cn)))
print('wrote tsv_full.tsv pairs:', len(want))

scene_lines = []
for ln in io.open(os.path.join(W, 'scene_only.txt'), encoding='utf-8'):
    ln = ln.rstrip('\n')
    if '\t' in ln:
        lb, tx = ln.split('\t', 1)
        scene_lines.append(unesc(tx))

cn_idx = {}
for ln in io.open(os.path.join(W, 'cn_scene_idx.tsv'), encoding='utf-8'):
    ln = ln.rstrip('\n')
    if '\t' in ln:
        n, cn = ln.split('\t', 1)
        cn_idx[int(n)] = unesc(cn)
assert set(cn_idx) == set(range(1, len(scene_lines) + 1)), 'scene idx mismatch'

spairs = [p for p in want.items()]
for n, ko in enumerate(scene_lines, 1):
    spairs.append((ko, cn_idx[n]))
swant = {}
for ko, cn in spairs:
    assert ko not in swant or swant[ko] == cn, 'scene conflict: ' + ko[:30]
    # Scene TSV keeps RAW cn (no mod4 pad): transB3 preserves the length
    # FIELD (space-pads content to lenKO), so stored lengths never change.
    swant[ko] = cn
sover = [(ko, cn) for ko, cn in swant.items()
         if len(cn.encode('utf-8')) > len(ko.encode('utf-8'))]
print('scene overflow:', len(sover))
for ko, cn in sover:
    print('SOVER %d>%d %s => %s'
          % (len(ko.encode('utf-8')), len(cn.encode('utf-8')),
             ko[:40].replace('\n', '\\n'), cn[:40].replace('\n', '\\n')))
assert not sover, 'scene overflows must be shortened first'

with io.open(os.path.join(W, 'tsv_scene.tsv'), 'w', encoding='utf-8') as f:
    for ko, cn in swant.items():
        f.write('%s\t%s\n' % (esc(ko), esc(cn)))
print('wrote tsv_scene.tsv pairs:', len(swant))
