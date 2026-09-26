import pathlib, struct, zlib, re
d = pathlib.Path('raw/assets/script.npk').read_bytes()
n = struct.unpack_from('<I', d, 4)[0]
eoff = struct.unpack_from('<I', d, 20)[0]
for i in range(n):
    eid, off, psz, rsz, ckp, ckr, fl = struct.unpack_from('<7I', d, eoff + 28 * i)
    if (fl & 0xFF) == 1:
        blob = zlib.decompress(d[off:off + psz])
        print('redirect id=%08x out=%d' % (eid, len(blob)))
        t = blob.decode('ascii', errors='ignore')
        strs = sorted(set(re.findall(r'[ -~]{5,}', t)))
        for s in strs:
            print('  S: ' + s[:160])
        break
