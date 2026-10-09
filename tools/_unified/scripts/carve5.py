import re
import struct
STR_TYPE = 0x04f5fb40
DUMPS = [('g6.bin', 0xca6f0000), ('h2.bin', 0xb5f00000), ('h3.bin', 0xb99c0000),
         ('h1.bin', 0xd9700000), ('g0.bin', 0xc7c39000), ('g1.bin', 0xc7d32000),
         ('g2.bin', 0xc8ebb000), ('g3.bin', 0xc8efe000), ('g5.bin', 0xca5fe000)]
DATA = {}
for fn, base in DUMPS:
    DATA[fn] = (open(fn, 'rb').read(), base)


def u32(d, o):
    return struct.unpack_from('<I', d, o)[0]


def read_pystr_at(d, base, va):
    off = va - base
    if off < 0 or off + 20 > len(d):
        return None
    if u32(d, off) != STR_TYPE:
        return None
    n = u32(d, off + 4)
    if n > 300:
        return None
    return d[off + 16:off + 16 + n]


def read_va(va):
    for fn, (d, base) in DATA.items():
        r = read_pystr_at(d, base, va)
        if r is not None:
            return r
    return None


def find_filenames(d, base, needle):
    vas = []
    for m in re.finditer(re.escape(needle), d):
        end = m.start() + len(needle)
        for s in range(len(needle), 300):
            ost = end - 16 - s
            if ost < 0 or ost + 20 > len(d):
                continue
            if u32(d, ost) == STR_TYPE and u32(d, ost + 4) == s:
                vas.append(base + ost)
                break
    return vas


FVA = {}
for fn, (d, base) in DATA.items():
    for needle in (b'HookUnit.py', b'WorldManager.py'):
        for va in find_filenames(d, base, needle):
            FVA[va] = (fn, needle.decode())
print('filename-objs=%d' % len(FVA))

OUT = []
ALL = {}
for fn, (d, base) in DATA.items():
    n = 0
    for i in range(0, len(d) - 8, 4):
        if u32(d, i) in FVA:
            nm = read_va(u32(d, i + 4))
            if nm is None:
                continue
            for delta in (52, 44):
                cva = base + i - delta
                co = None
                for fn2, (d2, base2) in DATA.items():
                    off = cva - base2
                    if off < 0 or off + 64 > len(d2):
                        continue
                    f = struct.unpack_from('<16I', d2, off)
                    if read_pystr_at(d2, base2, f[13]) == nm:
                        co = (fn2, f)
                        break
                if co is not None:
                    OUT.append('func %s @0x%x file=%s' % (nm.decode('utf8', 'replace'), cva, FVA[u32(d, i)][1]))
                    ALL[nm] = (cva,) + co
                    n += 1
                    break
    print(fn, 'funcs=', n)
open('carve5.txt', 'w', encoding='utf8').write('\n'.join(OUT))
print('total=%d' % len(ALL))
for k in (b'kill_civil', b'release_logic', b'hang_uid', b'kill_speed', b'hang_time'):
    v = ALL.get(k)
    print(k.decode(), ('@0x%x in %s' % (v[0], v[1]) if v else 'MISS'))
