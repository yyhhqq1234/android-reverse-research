import struct, pathlib
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM, CS_MODE_LITTLE_ENDIAN
so = pathlib.Path('raw/lib/armeabi-v7a/libclient.so').read_bytes()
def rdstr(off):
    e = so.find(b'\x00', off)
    return so[off:e].decode()
print('--- method table ---')
funcs = {}
for t in range(0x1d3e280, 0x1d3e340, 16):
    nm, fn, fl, doc = struct.unpack_from('<IIII', so, t)
    if nm == 0 and fn == 0:
        print(' %x: sentinel' % t)
        continue
    try:
        ns = rdstr(nm)
    except Exception:
        ns = '?'
    if len(ns) > 40 or not ns.isprintable():
        continue
    print(' %x: name=%s meth=%x flags=%d' % (t, ns, fn, fl))
    if fn != 0 and ns in ('newrotor', 'encryptmore', 'decryptmore', 'setkey'):
        funcs[ns] = fn
md = Cs(CS_ARCH_ARM, CS_MODE_ARM + CS_MODE_LITTLE_ENDIAN)
out = []
for nm, va in funcs.items():
    out.append('===== %s @ %x =====' % (nm, va))
    code = so[va:va + 1600]
    for i, ins in enumerate(md.disasm(code, va)):
        if i > 400:
            break
        out.append('%x: %s %s' % (ins.address, ins.mnemonic, ins.op_str))
        if ins.mnemonic == 'pop' and 'pc' in ins.op_str:
            break
pathlib.Path('dsm_rotor.txt').write_text('\n'.join(out))
print('wrote dsm_rotor.txt funcs=' + str(list(funcs)))
