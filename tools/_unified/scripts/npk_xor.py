import pathlib
d = pathlib.Path('raw/assets/script.npk').read_bytes()
p = d[21:21 + 512]
cribs = [b'\x63\x00\x00\x00\x00', b'\x78\x9c', b'\x78\x01', b'\x63\x00']
for per in [1, 2, 4, 8, 16, 32]:
    for cb in cribs:
        ks = bytes(p[i] ^ cb[i % len(cb)] for i in range(max(per, len(cb)) * 2))
        ok = all(ks[i] == ks[i % per] for i in range(len(ks)))
        if not ok:
            continue
        dec = bytes(b ^ ks[i % per] for i, b in enumerate(d[21:21 + 4096]))
        asc = sum(32 <= c < 127 or c in (10, 13) for c in dec)
        tag = ''
        if b'.py' in dec[:2000]:
            tag = ' <== HAS.PY'
        if asc > 2000:
            print('per=%d crib=%s asc=%d key=%s%s' % (per, cb.hex(), asc, ks[:per].hex(), tag))
print('done')
