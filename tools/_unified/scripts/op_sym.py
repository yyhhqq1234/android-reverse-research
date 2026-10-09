import struct, sys
p = 'D:/APK-Reverse/projects/DWRG/work_dwrg/op_libclient_runtime.so'
d = open(p, 'rb').read()
assert d[:4] == b'\x7fELF', 'not elf'
e_shoff, = struct.unpack('<Q', d[0x28:0x30])
e_shentsize, e_shnum, e_shstrndx = struct.unpack('<HHH', d[0x3A:0x40])
secs = []
for i in range(e_shnum):
    o = e_shoff + i * e_shentsize
    name, stype, flags, addr, off, size, link, info, align, esz = struct.unpack('<IIQQQQIIQQ', d[o:o+64])
    secs.append(dict(i=i, name=name, type=stype, flags=flags, addr=addr, off=off, size=size, link=link, info=info, esz=esz))
shstr = secs[e_shstrndx]
s = shstr['off']
def nm(x): return d[s+x:].split(b'\x00')[0].decode()
for x in secs: x['sname'] = nm(x['name'])
want = sys.argv[1:] or ['handle_reconnect_fail', 'handle_reconnect', 'active_disconnect',
        'kcp_reconnect_enable', 'conn_disconnect_reason', 'DISCONNECT',
        'do_reconnect_endpoint', 'handle_kcp_reconnect']
for x in secs:
    if x['type'] in (2, 11) and x['sname'] in ('.symtab', '.dynsym', '.strtab', '.dynstr'):
        print(x['sname'], 'off', hex(x['off']), 'n', x['size'] // x['esz'] if x['esz'] else '?')
strsec = next(x for x in secs if x['sname'] == '.dynstr')
symsec = next(x for x in secs if x['sname'] == '.dynsym')
n = symsec['size'] // symsec['esz']
hits = 0
for i in range(n):
    o = symsec['off'] + i * symsec['esz']
    st_name, st_info, st_other, st_shndx, st_val, st_sz = struct.unpack('<IBBHQQ', d[o:o+24])
    name = d[strsec['off']+st_name:strsec['off']+st_name+256].split(b'\x00')[0].decode(errors='replace')
    for w in want:
        if name == w or name.endswith('::' + w) or name.endswith('_' + w):
            print(hex(st_val), hex(st_sz), name)
            hits += 1
            break
print('hits', hits)
