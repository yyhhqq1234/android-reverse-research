import struct, pathlib
for name in ['raw/assets/script.npk', 'raw/assets/Documents/script.npk', 'raw/assets/res.npk']:
    p = pathlib.Path(name)
    d = p.read_bytes()
    print('== %s len=%d ==' % (name, len(d)))
    print('head64=' + d[:64].hex())
    # try fields
    magic, a, b, c = struct.unpack_from('IIII', d, 0)
    # magic as ascii
    print('magic=%r a=%08x b=%d c=%d' % (d[:4], a, b, c))
