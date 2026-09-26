import pathlib, re, zlib
d = pathlib.Path('raw/assets/res.npk').read_bytes()
names = [m.start() for m in re.finditer(rb'\r\n\x00', d)]
for e in names:
    j = e
    while j > 0 and 32 <= d[j - 1] < 127:
        j -= 1
    nm = d[j:e]
    if len(nm) >= 8:
        print('%d pre12=%s name=%r' % (j, d[max(0, j - 12):j].hex(), nm[:60]))
# checksum test on E0
o = zlib.decompressobj()
out = o.decompress(d[48:48 + 2000000])
import binascii
print('E0 out=%d adler16=%04x crc32=%08x' % (len(out), zlib.adler32(out) & 0xFFFF, zlib.crc32(out) & 0xFFFFFFFF))
