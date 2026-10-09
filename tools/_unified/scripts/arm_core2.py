import pathlib
from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM, CS_MODE_LITTLE_ENDIAN
so = pathlib.Path('raw/lib/armeabi-v7a/libclient.so').read_bytes()
md = Cs(CS_ARCH_ARM, CS_MODE_ARM + CS_MODE_LITTLE_ENDIAN)
out = []
for nm, va in [('init', 0x1297230), ('setkeycopy', 0x1296bac), ('advance', 0x12978e0), ('helper', 0x130cf0)]:
    out.append('===== %s @ %x =====' % (nm, va))
    code = so[va:va + 2000]
    for i, ins in enumerate(md.disasm(code, va)):
        if i > 400:
            break
        out.append('%x: %s %s' % (ins.address, ins.mnemonic, ins.op_str))
        if ins.mnemonic == 'pop' and 'pc' in ins.op_str:
            break
pathlib.Path('dsm_core2.txt').write_text('\n'.join(out))
print('lines=%d' % len(out))
