import pathlib
d = pathlib.Path('raw/assets/res.npk').read_bytes()
print('E1head=' + d[1167:1267].hex())
print('E1asc=' + repr(d[1167:1267]))
import re
names = [m.start() for m in re.finditer(rb'\r\n\x00', d)]
print('total-namehits=%d' % len(names))
for i in [1, 2, 3, 100, 500, 1000]:
    if i >= len(names):
        break
    e = names[i]
    j = e
    while j > 0 and 32 <= d[j - 1] < 127:
        j -= 1
    print('#%d namestart=%d pre16=%s name=%r' % (i, j, d[max(0, j - 16):j].hex(), d[j:j + 44]))
