import math
d = open('g6.bin', 'rb').read()
seg = d[190000:222000]
o = []
o.append('seg len=%d' % len(seg))
# printable runs >=4
import re
runs = [(m.start() + 190000, m.group().decode()) for m in re.finditer(rb'[\x20-\x7e]{4,}', seg)]
o.append('printable runs=%d' % len(runs))
for off, s in runs[:120]:
    o.append('%d: %s' % (off, s[:160]))
# entropy per 1KB: find high-entropy blobs (possible bytecode/marshal)
o.append('--- entropy per 2KB (min/max positions) ---')
es = []
for i in range(0, len(seg), 2048):
    blk = seg[i:i + 2048]
    if not blk:
        break
    f = [0] * 256
    for c in blk:
        f[c] += 1
    e = -sum((n / len(blk)) * math.log2(n / len(blk)) for n in f if n)
    es.append((e, 190000 + i))
es.sort()
o.append('lowest: ' + str([(round(e, 2), p) for e, p in es[:5]]))
o.append('highest: ' + str([(round(e, 2), p) for e, p in es[-5:]]))
open('carve2.txt', 'w', encoding='utf8').write('\n'.join(o))
print('wrote carve2.txt runs=%d' % len(runs))
