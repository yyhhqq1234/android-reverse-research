import pathlib, struct
from collections import Counter
d = pathlib.Path('raw/assets/script.npk').read_bytes()
n = struct.unpack_from('<I', d, 4)[0]
eoff = struct.unpack_from('<I', d, 20)[0]
c2, c4 = Counter(), Counter()
for i in range(n):
    eid, off, psz, rsz, ckp, ckr, fl = struct.unpack_from('<7I', d, eoff + 28 * i)
    c2[d[off:off + 2].hex()] += 1
    c4[d[off:off + 4].hex()] += 1
print('p2-top=' + str(c2.most_common(6)))
print('distinct2=%d distinct4=%d' % (len(c2), len(c4)))
print('p4-top=' + str(c4.most_common(6)))
