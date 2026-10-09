import pathlib, zlib
d = pathlib.Path('raw/assets/script.npk').read_bytes()
p = d[28:]
print('p28=' + p[:64].hex())
try:
    o = zlib.decompressobj()
    out = o.decompress(p[:3000000])
    print('ZLIB-HIT out=%d head=%r' % (len(out), out[:48]))
except Exception as ex:
    print('zlib-miss ' + str(ex)[:60])
try:
    import lz4.block
    for sz in [4096, 16384, 65536, 262144, 1048576]:
        try:
            out = lz4.block.decompress(bytes(p[:60000]), uncompressed_size=sz)
            print('LZ4-HIT sz=%d out=%d head=%r' % (sz, len(out), out[:48]))
            break
        except Exception:
            pass
    else:
        print('lz4-miss')
except ImportError:
    print('no-lz4')
cribs = [b'\x63\x00\x00\x00\x00', b'\x78\x9c']
for per in [1, 2, 4, 8, 16, 32]:
    for cb in cribs:
        ks = bytes(p[i] ^ cb[i % len(cb)] for i in range(max(per, len(cb)) * 2))
        if all(ks[i] == ks[i % per] for i in range(len(ks))):
            dec = bytes(b ^ ks[i % per] for i, b in enumerate(d[28:28 + 4096]))
            asc = sum(32 <= c < 127 or c in (10, 13) for c in dec)
            if asc > 2000:
                print('XOR per=%d crib=%s asc=%d key=%s' % (per, cb.hex(), asc, ks[:per].hex()))
print('done')
