import pathlib, zlib
d = pathlib.Path('raw/assets/res.npk').read_bytes()
pos = 16
for n in range(6):
    hdr = d[pos:pos + 7]
    e = d.find(b'\r\n', pos + 7, pos + 300)
    if e < 0:
        print('entry%d pos=%d NO-NAME' % (n, pos))
        break
    nm = d[pos + 7:e].decode('ascii', errors='ignore')
    ds = e + 3
    o = zlib.decompressobj()
    try:
        out = o.decompress(d[ds:ds + 2000000])
        used = (ds + 2000000 - len(o.unused_data)) - ds if o.unused_data else None
    except Exception as ex:
        print('entry%d %r zlib-err %s' % (n, nm, str(ex)[:60]))
        break
    nxt = ds + (len(d[ds:ds + 2000000]) - len(o.unused_data)) if o.unused_data else ds + len(out)
    print('entry%d pos=%d hdr=%s name=%r out=%d nxt=%d head=%r' % (n, pos, hdr.hex(), nm, len(out), nxt, out[:40]))
    pos = nxt
