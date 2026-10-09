import re
import struct
d = open('g6.bin', 'rb').read()


def u32(o):
    return struct.unpack_from('<I', d, o)[0]


o = 219892
print('bytes@-16:', d[o - 16:o + 12].hex(' '))
print('u32(-16)=0x%x u32(-12)=%d' % (u32(o - 16), u32(o - 12)))
n1 = list(re.finditer(b'HookUnit', d))
print('plain-HookUnit:', len(n1))
n2 = list(re.finditer(re.escape(b'HookUnit.py'), d))
print('escaped-HookUnit.py:', len(n2))
n3 = list(re.finditer(b'kill_civil', d))
print('plain-kill_civil:', [(m.start()) for m in n3])
