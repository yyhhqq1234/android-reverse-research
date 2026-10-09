import re
from collections import Counter
d = open('g6.bin', 'rb').read()
offs = [m.start() for m in re.finditer(rb'ClientUnits\\HookUnit\.py', d)]
o = []
o.append('hookunit-filename-objs=%d' % len(offs))
# context matrix -96..+32
N_PRE, N_POST = 96, 32
cols = []
for i in range(N_PRE + N_POST):
    c = Counter()
    for off in offs:
        j = off - N_PRE + i
        if 0 <= j < len(d):
            c[d[j]] += 1
    cols.append(c)
o.append('--- invariant columns (value:count) rel to filename start ---')
for i, c in enumerate(cols):
    if len(c) == 1:
        v, n = list(c.items())[0]
        o.append('rel%+d: 0x%02x x%d' % (i - N_PRE, v, n))
o.append('--- near-invariant (>=80%%) ---')
for i, c in enumerate(cols):
    if 1 < len(c) <= 3:
        tot = sum(c.values())
        top = c.most_common(1)[0]
        if top[1] / tot >= 0.8 and tot >= len(offs) * 0.9:
            o.append('rel%+d: %s' % (i - N_PRE, [(hex(v), n) for v, n in c.most_common()]))
# kill_civil neighborhood raw
k = d.find(b'kill_civil')
o.append('--- kill_civil @%d neighborhood hex ---' % k)
seg = d[k - 400:k + 600]
for i in range(0, len(seg), 32):
    blk = seg[i:i + 32]
    o.append('%06d %s  |%s|' % (k - 400 + i, blk.hex(' '), ''.join(chr(c) if 32 <= c < 127 else '.' for c in blk)))
open('carve3.txt', 'w', encoding='utf8').write('\n'.join(o))
print('objs=%d kill@%d' % (len(offs), k))
