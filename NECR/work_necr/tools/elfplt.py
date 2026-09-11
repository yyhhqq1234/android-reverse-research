#!/usr/bin/env python3
"""Find PLT stub addresses for imported libc functions in libil2cpp.so."""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
d = open(SO, 'rb').read()

e_phoff = struct.unpack('<I', d[0x1C:0x20])[0]
e_phnum = struct.unpack('<H', d[0x2C:0x2E])[0]
segs = []
for i in range(e_phnum):
    o = e_phoff + i * 32
    p_type, p_off, p_v, p_p, p_fsz, p_msz, p_fl, p_al = struct.unpack('<IIIIIIII', d[o:o + 32])
    segs.append((p_type, p_off, p_v, p_fsz))


def va_to_off(va):
    for t, off, v, fsz in segs:
        if t == 1 and v <= va < v + fsz:
            return off + (va - v)
    raise KeyError(hex(va))


# PT_DYNAMIC
dyn = [(t, off, v, fsz) for t, off, v, fsz in segs if t == 2][0]
_, doff, dv, _ = dyn
def va(x):
    return va_to_off(x)

entries = {}
o = doff
while True:
    tag, val = struct.unpack('<II', d[o:o + 8])
    o += 8
    if tag == 0:
        break
    entries[tag] = val
# DT_STRTAB=5 DT_STRSZ=10 DT_SYMTAB=6 DT_SYMENT=11 DT_JMPREL=23 DT_PLTRELSZ=2 DT_RELACOUNT? DT_RELA=7 DT_RELASZ=8
strtab = va(entries[5])
symtab = va(entries[6])
syment = entries.get(11, 16)
jmprel = va(entries[23])
pltsz = entries[2]
print('jmprel off', hex(jmprel), 'size', pltsz)

want = sys.argv[1:]
found = {}
for i in range(pltsz // 8):
    o = jmprel + i * 8
    r_off, r_info = struct.unpack('<II', d[o:o + 8])
    sym = r_info >> 8
    so = symtab + sym * syment
    st_name, st_val, st_sz, st_info, st_other, st_sh = struct.unpack('<IIIBBH', d[so:so + 16])
    end = d.index(b'\x00', strtab + st_name)
    name = d[strtab + st_name:end].decode()
    if name in want:
        found[name] = r_off  # r_offset = GOT address for this import
        print(name, 'GOT', hex(r_off))

# ARM PLT entry (Android linker, FULL RELRO):
#   off+0: e59fc004  ldr ip, [pc, #4]   ; ip = [off+12]
#   off+4: e08cc00f  add ip, pc, ip     ; ip = off+8 + [off+12] = GOT va
#   off+8: e59cf000  ldr pc, [ip]       ; tail-call import
#   off+12: constant
got_to_name = {ga: n for n, ga in found.items()}
for off in range(0x1000, 0x200000, 4):
    w, = struct.unpack('<I', d[off:off + 4])
    if w != 0xE59FC004:
        continue
    w2, = struct.unpack('<I', d[off + 4:off + 8])
    w3, = struct.unpack('<I', d[off + 8:off + 12])
    if w2 != 0xE08CC00F or w3 != 0xE59CF000:
        continue
    const, = struct.unpack('<I', d[off + 12:off + 16])
    got = off + 8 + const
    if got in got_to_name:
        print(got_to_name[got], 'PLT', hex(off), 'GOT', hex(got))
