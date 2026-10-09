import struct, pathlib
so = pathlib.Path('raw/lib/armeabi-v7a/libclient.so').read_bytes()
vas = [0x173cb0a, 0x173cb5e, 0x173d338, 0x173cc43]
names = ['ZLIB', 'LZ4', 'encrypted!', 'loaded.']
for va, nm in zip(vas, names):
    key = struct.pack('<I', va)
    offs = []
    s = 0
    while True:
        i = so.find(key, s)
        if i < 0:
            break
        offs.append(i)
        s = i + 1
        if len(offs) > 12:
            break
    print('== %s va=%x hits=%d ==' % (nm, va, len(offs)))
    for o in offs[:12]:
        seg = 'R+E' if o < 28841432 else 'RW'
        print(' off=%x [%s] ctx=%s' % (o, seg, so[max(0, o - 16):o + 20].hex()))
