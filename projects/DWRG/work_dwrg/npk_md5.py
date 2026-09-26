import pathlib, hashlib
d = pathlib.Path('raw/assets/res.npk').read_bytes()
for nm, tail in [(' python add_sockets.py', d[17:23]), ('python change_bounding_box.py', d[313706:313712])]:
    print('name=%r tail=%s' % (nm, tail.hex()))
    for algo in ['md5', 'sha1']:
        h = hashlib.new(algo, nm.encode()).hexdigest()
        print(' %s=%s hit=%s' % (algo, h[:16], tail.hex() in h))
# lz4 probe on script entry0 payload
try:
    import lz4.block
    p = bytes(d2 := pathlib.Path('raw/assets/script.npk').read_bytes()[21:21 + 60000])
    for skip in [0, 2, 4]:
        for sz in [4096, 16384, 65536, 262144]:
            try:
                out = lz4.block.decompress(p[skip:], uncompressed_size=sz)
                asc = sum(32 <= c < 127 or c in (10, 13) for c in out[:2000])
                print('LZ4-HIT skip=%d sz=%d out=%d asc=%d head=%r' % (skip, sz, len(out), asc, out[:40]))
                raise SystemExit
            except SystemExit:
                raise
            except Exception:
                pass
    print('lz4-miss')
except ImportError:
    print('no-lz4')
