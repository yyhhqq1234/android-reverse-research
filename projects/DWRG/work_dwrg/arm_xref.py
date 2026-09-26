import struct, pathlib
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM, CS_MODE_THUMB, CS_MODE_LITTLE_ENDIAN

so = pathlib.Path('raw/lib/armeabi-v7a/libclient.so').read_bytes()
e_phoff = struct.unpack_from('<I', so, 0x1C)[0]
e_phentsize, e_phnum = struct.unpack_from('<HH', so, 0x2A)
loads = []
for i in range(e_phnum):
    p = struct.unpack_from('<IIIIIIII', so, e_phoff + i * e_phentsize)
    if p[0] == 1:
        loads.append(dict(off=p[1], va=p[2], filesz=p[4], flags=p[6]))
        print('LOAD off=%x va=%x sz=%d flags=%d' % (p[1], p[2], p[4], p[6]))

def o2va(off):
    for L in loads:
        if L['off'] <= off < L['off'] + L['filesz']:
            return L['va'] + (off - L['off'])
    return None

xseg = [L for L in loads if L['flags'] == 5][0]
td = so[xseg['off']:xseg['off'] + xseg['filesz']]
tva = xseg['va']
print('xseg va=%x size=%d' % (tva, len(td)))

targets = [b'Failed to uncompress npk file(ZLIB)', b'Failed to uncompress npk file(LZ4)',
           b'File %s in package %s opener %s is encrypted!',
           b'Package %s under opener %s is loaded.']
tva_map = {}
for t in targets:
    j = so.find(t)
    if j >= 0:
        va = o2va(j)
        tva_map[t] = va
        print('STR %s -> %x' % (t[:40], va))

def func_start_arm(off):
    p = off
    while p > max(0, off - 0x800):
        p -= 4
        w = struct.unpack_from('<I', td, p)[0]
        if (w & 0xFFFFC000) == 0xE92D4000:
            return p
    return None

def func_start_thumb(off):
    p = off
    while p > max(0, off - 0x400):
        p -= 2
        h = struct.unpack_from('<H', td, p)[0]
        if (h & 0xFF00) == 0xB500:
            return p
    return None

def disasm(va_off, mode, n=120):
    md = Cs(CS_ARCH_ARM, CS_MODE_LITTLE_ENDIAN + mode)
    code = td[va_off:va_off + 800]
    out = []
    for i, ins in enumerate(md.disasm(code, tva + va_off)):
        if i >= n:
            break
        out.append('%x: %s %s' % (ins.address, ins.mnemonic, ins.op_str))
        if ins.mnemonic == 'pop' and 'pc' in ins.op_str:
            out.append('  ..ret..')
            break
    return out

hits = []
for off in range(0, len(td) - 4, 4):
    w = struct.unpack_from('<I', td, off)[0]
    if (w & 0x0FFF0000) == 0x059F0000:
        imm = w & 0xFFF
        tgt = tva + off + 8 + (imm if (w & 0x00800000) else -imm)
        for t, va in tva_map.items():
            if tgt == va:
                hits.append(('ARM', off, t))
for off in range(0, len(td) - 2, 2):
    h = struct.unpack_from('<H', td, off)[0]
    if (h & 0xF800) == 0x4800:
        tgt = ((tva + off + 4) & 0xFFFFFFFC) + ((h & 0xFF) * 4)
        for t, va in tva_map.items():
            if tgt == va:
                hits.append(('THUMB', off, t))
movw = {}
for off in range(0, len(td) - 4, 4):
    w = struct.unpack_from('<I', td, off)[0]
    if (w & 0x0FBF0000) == 0x03000000:
        movw[(w >> 12) & 0xF] = (((w >> 16) & 0xF) << 12) | (w & 0xFFF)
    elif (w & 0x0FBF0000) == 0x03400000:
        rd = (w >> 12) & 0xF
        if rd in movw:
            addr = ((((w >> 16) & 0xF) << 12) | (w & 0xFFF)) << 16 | movw[rd]
            for t, va in tva_map.items():
                if addr == va:
                    hits.append(('MOV', off, t))
print('hits=%d' % len(hits))
seen = set()
for mode, off, t in hits[:8]:
    fs = func_start_arm(off) if mode in ('ARM', 'MOV') else func_start_thumb(off)
    print('== %s xref@%x -> %r func=%s ==' % (mode, tva + off, t[:50], ('%x' % (tva + fs)) if fs is not None else None))
    if fs is None or (mode, fs) in seen:
        continue
    seen.add((mode, fs))
    for line in disasm(fs, CS_MODE_ARM if mode in ('ARM', 'MOV') else CS_MODE_THUMB):
        print('  ' + line)
