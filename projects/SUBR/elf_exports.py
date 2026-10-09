import struct, sys
p = sys.argv[1] if len(sys.argv) > 1 else r'D:\APK-Reverse\projects\SUBR\SUBR\lib\arm64-v8a\libMyLibName.so'
d = open(p, 'rb').read()
assert d[:4] == b'\x7fELF', 'not elf'
is64 = d[4] == 2; le = d[5] == 1
E = '<' if le else '>'
def u16(o): return struct.unpack(E + 'H', d[o:o+2])[0]
def u32(o): return struct.unpack(E + 'I', d[o:o+4])[0]
def u64(o): return struct.unpack(E + 'Q', d[o:o+8])[0]
if is64:
    shoff, shentsz, shnum, shstr = u64(0x28), u16(0x3A), u16(0x3C), u16(0x3E)
else:
    shoff, shentsz, shnum, shstr = u32(0x20), u16(0x2E), u16(0x30), u16(0x32)
def sh(i):
    o = shoff + i * shentsz
    if is64:
        name, typ, flags, addr, off, size, link, info, al, ez = struct.unpack(E + 'IIQQQQIIQQ', d[o:o+64])
    else:
        name, typ, addr, off, size, link, info, al, ez = struct.unpack(E + 'IIIIIIIII', d[o:o+36])[:9]
    return name, typ, off, size, link, info
so = sh(shstr)
stab = d[so[2]:so[2] + so[3]].split(b'\x00')
def sname(n):
    c = 0
    for x in stab:
        if c == n:
            return x.decode('utf-8', 'replace')
        c += 1
    return '?'
print('sections:')
dyn = None
for i in range(shnum):
    n, t, off, size, link, info = sh(i)
    nm = sname(n)
    print('  [%d] %s size=%s link=%d info=%d type=%d' % (i, nm, hex(size), link, info, t))
    if nm == '.dynsym' or t == 11:
        dyn = (off, size, link)
if dyn:
    off, size, link = dyn
    stroff = sh(link)[2]
    nent = size // 24
    exp = []
    for j in range(nent):
        o = off + j * 24
        st_name, info_, other, shndx, val, sz = struct.unpack(E + 'IBBHQQ', d[o:o+24])
        if shndx != 0 and (info_ & 0xf) == 2:
            s = d[stroff + st_name:stroff + st_name + 300].split(b'\x00')[0].decode('utf-8', 'replace')
            exp.append((hex(val), 'B' + str(info_ >> 4), s))
    print('exported funcs: %d' % len(exp))
    for a, b, s in exp:
        print('  %s [%s] %s' % (a, b, s))
