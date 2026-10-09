import pathlib, zlib
d = pathlib.Path('raw/assets/script.npk').read_bytes()
print('d20=%s' % d[20:28].hex())
pos = 20
for n in range(12):
    t = d[pos]
    if t == 0:
        o = zlib.decompressobj()
        try:
            out = o.decompress(d[pos + 1:pos + 3000000])
        except Exception as ex:
            print('entry%d zlib-err %s' % (n, str(ex)[:50]))
            break
        used = (pos + 1 + 3000000 - len(o.unused_data)) - (pos + 1) if o.unused_data else len(d) - pos - 1
        asc = sum(32 <= c < 127 or c in (10, 13) for c in out[:2000])
        print('entry%d T=00 pos=%d out=%d ascii%%=%d head=%r' % (n, pos, len(out), 100 * asc // max(1, min(len(out), 2000)), out[:36]))
        pos = pos + 1 + used
        if not o.unused_data:
            print('  stream-to-EOF')
            break
    else:
        print('entry%d T=%02x pos=%d next64=%s' % (n, t, pos, d[pos:pos + 64].hex()))
        print('  asc=' + repr(d[pos:pos + 64]))
        break
