"""Disassemble libMyLibName.so A64HookFunction to confirm its true signature/ABI."""
import struct
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

P = r'D:\APK-Reverse\projects\SUBR\SUBR\lib\arm64-v8a\libMyLibName.so'
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
        if i == n: return x.decode('utf-8','replace')
    return '?'
dyn = next(s for s in secs if s['typ'] == 11)
stroff = secs[dyn['link']]['off']
exp = {}
for j in range(dyn['size']//24):
    o = dyn['off'] + j*24
    st_name, info, other, shndx, val, sz = struct.unpack(E+'IBBHQQ', d[o:o+24])
    if shndx != 0 and (info & 0xf) == 2:
        exp[val] = d[stroff+st_name:stroff+st_name+200].split(b'\x00')[0].decode('utf-8','replace')

execs = [s for s in secs if s['typ'] == 1 and (s['flags'] & 4)]
code = {}
md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
for s in execs:
    for ins in md.disasm(d[s['off']:s['off']+s['size']], s['addr']):
        code[ins.address] = ins

def dis(start, n=70, label=''):
    print('=== %s @0x%x ===' % (label, start))
    va = start
    for _ in range(n):
        ins = code.get(va)
        if not ins:
            print('   %x: ??' % va); break
        print('   %8x: %-30s %s' % (ins.address, ins.mnemonic + ' ' + ins.op_str, ''))
        va += 4
        if ins.mnemonic == 'ret' and _ > 4:
            break

dis(0x46d8c, 70, 'A64HookFunction')
dis(0x42be8, 46, 'JNI_OnLoad')
