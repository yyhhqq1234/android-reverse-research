import pathlib, zlib
for name in ['raw/assets/script.npk', 'raw/assets/Documents/script.npk']:
    d = pathlib.Path(name).read_bytes()
    print('== %s ==' % name)
    body = d[20:]
    cands = []
    for i in range(len(body) - 2):
        if body[i] == 0x78 and body[i + 1] in (0x01, 0x9c, 0xda):
            cands.append(i + 20)
        if body[i:i + 4] == b'\x04\x22\x4d\x18':
            print(' LZ4FRAME at %d' % (i + 20))
    print(' zlib-cands=%d' % len(cands))
    ok = 0
    for off in cands[:60]:
        try:
            o = zlib.decompressobj()
            out = o.decompress(d[off:off + 300000])
            if len(out) > 64 and (b'.py' in out[:4000] or b'def ' in out[:4000] or b'import' in out[:4000]):
                print(' HIT off=%d out=%d head=%r' % (off, len(out), out[:80]))
                pathlib.Path('zhit_%d.bin' % off).write_bytes(out[:200000])
                ok += 1
                if ok >= 3:
                    break
        except Exception:
            pass
    print(' hits=%d' % ok)
