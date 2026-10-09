import struct, pathlib
so = pathlib.Path('raw/lib/armeabi-v7a/libclient.so').read_bytes()
cands = [b'\x00rotor\x00', b'decryptmore\x00', b'encryptmore\x00', b'setkey\x00', b'newrotor\x00']
for c in cands:
    j = so.find(c[1:] if c.startswith(b'\x00') else c)
    if j < 0:
        print('%r NOT-FOUND' % c)
        continue
    va = j + (1 if c.startswith(b'\x00') else 0)
    key = struct.pack('<I', va)
    offs = []
    s = 0
    while True:
        i = so.find(key, s)
        if i < 0:
            break
        offs.append(i)
        s = i + 1
        if len(offs) > 10:
            break
    print('== %r va=%x refs=%d ==' % (c, va, len(offs)))
    for o in offs[:10]:
        print(' off=%x ctx=%s' % (o, so[max(0, o - 24):o + 40].hex()))
