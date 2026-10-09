"""Disassemble libMyLibName.so: find A64HookFunction call sites + JNI_OnLoad flow."""
import struct
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

P = r'D:\APK-Reverse\projects\SUBR\SUBR\lib\arm64-v8a\libMyLibName.so'
d = open(P, 'rb').read()
E = '<'
def u16(o): return struct.unpack(E + 'H', d[o:o+2])[0]
def u32(o): return struct.unpack(E + 'I', d[o:o+4])[0]
def u64(o): return struct.unpack(E + 'Q', d[o:o+8])[0]
shoff, shentsz, shnum, shstr = u64(0x28), u16(0x3A), u16(0x3C), u16(0x3E)
secs = []
for i in range(shnum):
    o = shoff + i * shentsz
    name, typ, flags, addr, off, size, link, info, al, ez = struct.unpack(E + 'IIQQQQIIQQ', d[o:o+64])
    secs.append(dict(name=name, type=typ, flags=flags, addr=addr, off=off, size=size, link=link, info=info))
so = secs[shstr]
stab = d[so['off']:so['off'] + so['size']].split(b'\x00')
def sname(n):
    c = 0
    for x in stab:
        if c == n:
            return x.decode('utf-8', 'replace')
        c += 1
    return 'sec%d' % n
for s in secs:
    s['sname'] = sname(s['name'])

# dynamic symbols (type 11)
dyn = next(s for s in secs if s['type'] == 11)
stroff = secs[dyn['link']]['off']
exports = {}
for j in range(dyn['size'] // 24):
    o = dyn['off'] + j * 24
    st_name, info, other, shndx, val, sz = struct.unpack(E + 'IBBHQQ', d[o:o+24])
    if shndx != 0 and (info & 0xf) == 2:
        s = d[stroff + st_name:stroff + st_name + 300].split(b'\x00')[0].decode('utf-8', 'replace')
        exports[val] = s

HOOKS = [v for v, s in exports.items() if 'A64Hook' in s]
print('hook fns:', [(hex(v), exports[v]) for v in HOOKS])
print('JNI_OnLoad:', [hex(v) for v, s in exports.items() if s == 'JNI_OnLoad'])

text = next(s for s in secs if s['sname'] == '.text') if any(s['sname'] == '.text' for s in secs) else None
# stripped: find executable PROGBITS (type1) with exec flag (flags&4)
execs = [s for s in secs if s['type'] == 1 and (s['flags'] & 4)]
print('exec sections:', [(s['sname'], hex(s['addr']), hex(s['off']), hex(s['size'])) for s in execs])

md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
md.detail = True
code = {}
for s in execs:
    blob = d[s['off']:s['off'] + s['size']]
    for ins in md.disasm(blob, s['addr']):
        code[ins.address] = ins

def dis_range(start_va, n=80):
    out = []
    va = start_va
    for _ in range(n):
        ins = code.get(va)
        if ins is None:
            out.append('%x: ??' % va)
            break
        out.append('%x: %-28s %s' % (ins.address, ins.mnemonic + ' ' + ins.op_str, ''))
        va += 4
        if ins.mnemonic in ('ret',):
            break
    return out

# find all BL/BLR to hook fns
print('=== BL sites to A64Hook* ===')
for va, ins in sorted(code.items()):
    if ins.mnemonic == 'bl' and ins.operands and ins.operands[0].type == 2:  # imm
        t = ins.operands[0].imm
        if t in HOOKS:
            print('%x: bl %s' % (va, exports[t]))

import io, sys
_out = io.open(r'D:\APK-Reverse\projects\SUBR\hook_analysis.txt', 'w', encoding='utf-8', errors='replace')
_real = print
def print(*a, **k):
    _real(*a, **k, file=_out)
    _out.flush()

jniv = next(v for v, s in exports.items() if s == 'JNI_OnLoad')
print('=== JNI_OnLoad disasm ===')
print('\n'.join(dis_range(jniv, 120)))

# callees of JNI_OnLoad
for t in (0x418c4, 0x424b4):
    print('=== sub_%x ===' % t)
    print('\n'.join(dis_range(t, 100)))

# string xrefs: find rodata VAs of interesting strings, then adrp users
ro = [s for s in secs if s['type'] == 1 and (s['flags'] & 2) and not (s['flags'] & 4)]
strs = {}
for s in ro:
    blob = d[s['off']:s['off'] + s['size']]
    for m in __import__('re').finditer(rb'libil2cpp\.so|libMyLibName\.so|pthread_create|dlopen|dlsym|/proc/self/maps', blob):
        strs[m.group(0).decode()] = s['addr'] + m.start()
print('str VAs:', {k: hex(v) for k, v in strs.items()})

# adrp-based xref scan: for each adrp, compute page; if page matches a str VA page, report
import re
print('=== adrp refs to interesting strings ===')
for va, ins in sorted(code.items()):
    if ins.mnemonic == 'adrp' and ins.operands and len(ins.operands) > 1 and ins.operands[1].type == 2:
        page = ins.operands[0].imm if False else ins.operands[1].imm
        for name, sva in strs.items():
            if page == (sva & ~0xfff):
                print('%x: %s %s  -> page of %s (str va %x)' % (va, ins.mnemonic, ins.op_str, name, sva))
