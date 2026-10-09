import struct, pathlib, re
for name in ['raw/assets/script.npk', 'raw/assets/Documents/script.npk']:
    p = pathlib.Path(name)
    d = p.read_bytes()
    n = struct.unpack_from('I', d, 4)[0]
    print('== %s n=%d ==' % (name, n))
    # dump ascii strings in first 4KB
    head = d[:4096].decode('ascii', errors='ignore')
    strs = re.findall(r'[A-Za-z0-9_/\.\-]{4,}', head)
    print('STRS:' + '|'.join(strs[:40]))
    # try entry: after 20 bytes? hexdump first 128
    print('hex128=' + d[:128].hex())
