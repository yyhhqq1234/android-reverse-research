import pathlib, struct, zlib
d = pathlib.Path('raw/assets/script.npk').read_bytes()
magic, n, u1, eem, hm, eoff = struct.unpack_from('<6I', d, 0)
print('magic=%08x n=%d u1=%d eem=%d hm=%d eoff=%d' % (magic, n, u1, eem, hm, eoff))
print('table_end=%d filelen=%d' % (eoff + 28 * n, len(d)))
try:
    import lz4.block
    has_lz4 = True
except ImportError:
    has_lz4 = False
print('lz4=' + str(has_lz4))
try:
    import cryptography
    print('cryptography=Y')
except ImportError:
    print('cryptography=N')
from collections import Counter
c = Counter()
ents = []
for i in range(n):
    eid, off, psz, rsz, ckp, ckr, fl = struct.unpack_from('<7I', d, eoff + 28 * i)
    ents.append((eid, off, psz, rsz, ckp, ckr, fl))
    c[(fl & 0xFF, (fl >> 16) & 0xFF)] += 1
print('modes(comp,enc)=' + str(dict(c)))
for i in range(5):
    print(' e%d id=%08x off=%d psz=%d rsz=%d ckp=%08x ckr=%08x fl=%08x' % ((i,) + ents[i]))
# checksum probe on entry0 packed
eid, off, psz, rsz, ckp, ckr, fl = ents[0]
raw = d[off:off + psz]
print('e0 len=%d crc32=%08x adler=%08x' % (len(raw), zlib.crc32(raw) & 0xFFFFFFFF, zlib.adler32(raw) & 0xFFFFFFFF))
