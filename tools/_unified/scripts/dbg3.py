import re
import struct
STR_TYPE = 0x04f5fb40


def u32(d, o):
    return struct.unpack_from('<I', d, o)[0]


def find_filenames(d, base, needle):
    vas = []
    ms = list(re.finditer(re.escape(needle), d))
    print('raw=%d' % len(ms))
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


d = open('g6.bin', 'rb').read()
vas = find_filenames(d, 0xca6f0000, b'HookUnit.py')
print('vas=%d' % len(vas), [hex(v) for v in vas[:5]])
