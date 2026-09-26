import pathlib, struct, math
from collections import Counter
d = pathlib.Path('raw/assets/script.npk').read_bytes()
n = struct.unpack_from('<I', d, 4)[0]
eoff = struct.unpack_from('<I', d, 20)[0]
for i in range(3):
    eid, off, psz, rsz, ckp, ckr, fl = struct.unpack_from('<7I', d, eoff + 28 * i)
    b = d[off:off + psz]
    fr = Counter(b)
    ent = -sum(v / len(b) * math.log2(v / len(b)) for v in fr.values())
    print('e%s id=%08x psz=%d rsz=%d head=%s' % (i, eid, psz, rsz, b[:48].hex()))
    print('  tail=%s entropy=%.3f top=%s' % (b[-16:].hex(), ent, fr.most_common(4)))
    print('  asascii=%r' % b[:64])
