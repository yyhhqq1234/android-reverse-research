"""Identify libil2cpp function at the crash pc (0x6d1d14) to confirm root cause."""
import struct
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

P = r'D:\APK-Reverse\projects\SUBR\SUBR\lib\arm64-v8a\libil2cpp.so'
d = open(P, 'rb').read()
E = '<'
def u16(o): return struct.unpack(E+'H', d[o:o+2])[0]
def u32(o): return struct.unpack(E+'I', d[o:o+4])[0]
def u64(o): return struct.unpack(E+'Q', d[o:o+8])[0]
shoff, shentsz, shnum, shstr = u64(0x28), u16(0x3A), u16(0x3C), u16(0x3E)
secs = []
for i in range(shnum):
    o = shoff + i*shentsz
    name, typ, flags, addr, off, size, link, info, al, ez = struct.unpack(E+'IIQQQQIIQQ', d[o:o+64])
    secs.append(dict(name=name, typ=typ, flags=flags, addr=addr, off=off, size=size, link=link))
so = secs[shstr]
stab = d[so['off']:so['off']+so['size']].split(b'\x00')
def sname(n):
    for i, x in enumerate(stab):
        if i == n: return x.decode('utf-8', 'replace')
    return '?'
for s in secs:
    s['sn'] = sname(s['name'])
# dynsym exports
dyn = next(s for s in secs if s['typ'] == 11)
stroff = secs[dyn['link']]['off']
exp = []
for j in range(dyn['size']//24):
    o = dyn['off'] + j*24
    st_name, info, other, shndx, val, sz = struct.unpack(E+'IBBHQQ', d[o:o+24])
    if shndx != 0 and (info & 0xf) == 2:
        s = d[stroff+st_name:stroff+st_name+200].split(b'\x00')[0].decode('utf-8','replace')
        exp.append((val, s))
exp.sort()
PC = 0x6d1d14
# find nearest export <= PC and next export after PC
below = [e for e in exp if e[0] <= PC]
above = [e for e in exp if e[0] > PC]
print('nearest export at/below 0x%x:' % PC)
for a, s in below[-4:]: print('   0x%x  %s' % (a, s))
if above:
    print('next export: 0x%x %s (delta %d)' % (above[0][0], above[0][1], above[0][0]-PC))
# disassemble a window around PC (map va->file off)
def va2off(va):
    for s in secs:
        if s['typ'] == 1 and s['addr'] <= va < s['addr']+s['size']:
            return s['off'] + (va - s['addr'])
    return None
off = va2off(PC - 0x40)
md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
print('--- disasm around crash pc ---')
for ins in md.disasm(d[off:off+0x100], PC - 0x40):
    mark = '  <== CRASH' if ins.address == PC else ''
    print('  0x%x: %-24s %s%s' % (ins.address, ins.mnemonic+' '+ins.op_str, '', mark))
