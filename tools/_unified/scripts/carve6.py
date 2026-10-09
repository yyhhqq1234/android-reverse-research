d = open('g6.bin', 'rb').read()
o = []
o.append('=== inter-filename gaps 195080-196620 ===')
seg = d[195080:196620]
i = 0
while i < len(seg):
    blk = seg[i:i + 48]
    hx = blk.hex(' ')
    tx = ''.join(chr(c) if 32 <= c < 127 else '.' for c in blk)
    o.append('%06d %s |%s|' % (195080 + i, hx, tx))
    i += 48
open('carve6.txt', 'w', encoding='utf8').write('\n'.join(o))
print('wrote carve6.txt')
