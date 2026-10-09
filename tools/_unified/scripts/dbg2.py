import re
import struct
d = open('g6.bin', 'rb').read()
STR_TYPE = 0x04f5fb40


def u32(o):
    return struct.unpack_from('<I', d, o)[0]


ms = list(re.finditer(re.escape(b'HookUnit.py'), d))
print('matches=%d' % len(ms))
m = ms[0]
end = m.start() + 11
print('first match@%d end=%d' % (m.start(), end))
for s in (23, 11, 10):
    ost = end - 16 - s
    print('s=%d ost=%d u32(ost)=0x%x u32(ost+4)=%d' % (s, ost, u32(ost), u32(ost + 4)))
