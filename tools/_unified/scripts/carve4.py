import re
import struct
STR_TYPE = 0x04f5fb40
DUMPS = [('g6.bin', 0xca6f0000), ('h2.bin', 0xb5f00000), ('h3.bin', 0xb99c0000), ('h1.bin', 0xd9700000)]
OUT = []


def u32(d, o):
    return struct.unpack_from('<I', d, o)[0]


def read_pystr(d, va, base):
    off = va - base
    if off < 0 or off + 20 > len(d):
        return None
    if u32(d, off) != STR_TYPE:
        return None
    n = u32(d, off + 4)
    if n > 300:
        return None
    return d[off + 16:off + 16 + n]


def find_filenames(d, base, needle):
    vas = []
    ms = list(re.finditer(re.escape(needle), d))
    print('DBG find %s raw=%d' % (needle.decode(), len(ms)))
    for m in ms:
        end = m.start() + len(needle)
        for s in range(len(needle), 300):
            ost = end - 16 - s
            if ost < 0 or ost + 20 > len(d):
                continue
            if u32(d, ost) == STR_TYPE and u32(d, ost + 4) == s:
                vas.append(base + ost)
                break
    return vas


def try_code(d, base, code_va, expect_name):
    off = code_va - base
    if off < 0 or off + 64 > len(d):
        return None
    for nfields, fo in ((16, 0), (15, -4)):
        try:
            f = struct.unpack_from('<16I', d, off + fo) if fo == 0 else None
        except Exception:
            continue
        if f is None:
            continue
        nm = read_pystr(d, f[13], base)
        if nm == expect_name:
            return (f, fo)
    return None


def scan_code_objs(d, base, fname_vas):
    found = []
    want = set(fname_vas)
    for i in range(0, len(d) - 8, 4):
        if u32(d, i) in want:
            name_ptr = u32(d, i + 4)
            nm = read_pystr(d, name_ptr, base)
            if nm is not None:
                for delta in (52, 44):
                    r = try_code(d, base, base + i - delta, nm)
                    if r is not None:
                        found.append((base + i - delta, nm, r[0]))
                        break
    return found


def dump_code(d, base, code_va):
    off = code_va - base
    if off < 0 or off + 64 > len(d):
        return ['<out of range>']
    f = struct.unpack_from('<16I', d, off)
    L = ['code@0x%x arg=%d nloc=%d stack=%d flags=0x%x' % (code_va, f[2], f[3], f[4], f[5])]
    for tag, ptr in [('co_code', f[6]), ('co_consts', f[7]), ('co_names', f[8]),
                     ('co_varnames', f[9]), ('co_filename', f[12]), ('co_name', f[13])]:
        L.append('  %s -> 0x%x' % (tag, ptr))
    L.append('  firstlineno=%d' % f[14])
    code_s = read_pystr(d, f[6], base)
    if code_s is not None:
        L.append('  bytecode len=%d hex=%s' % (len(code_s), code_s.hex(' ')))
    else:
        L.append('  bytecode UNREADABLE')
    lno_s = read_pystr(d, f[15], base)
    if lno_s is not None:
        L.append('  lnotab len=%d hex=%s' % (len(lno_s), lno_s.hex(' ')))
    else:
        L.append('  lnotab UNREADABLE')
    # names tuple quick peek: tuple of string ptrs?
    return L


ALL = {}
for fn, base in DUMPS:
    d = open(fn, 'rb').read()
    for needle in [b'HookUnit.py', b'WorldManager.py']:
        fvas = find_filenames(d, base, needle)
        if not fvas:
            continue
        OUT.append('== %s base=0x%x %s files=%d' % (fn, base, needle.decode(), len(fvas)))
        for cva, nm, f in scan_code_objs(d, base, fvas):
            OUT.append('func %s @0x%x arg=%d nloc=%d stack=%d flags=0x%x firstline=%d' % (
                nm.decode('utf8', 'replace'), cva, f[2], f[3], f[4], f[5], f[14]))
            ALL[nm] = (fn, base, cva, f)
open('carve4.txt', 'w', encoding='utf8').write('\n'.join(OUT))
print('total funcs=%d' % len(ALL))
for k in [b'kill_civil', b'release_logic', b'hang_uid', b'kill_speed']:
    print(k.decode(), ALL.get(k, 'MISS'))
