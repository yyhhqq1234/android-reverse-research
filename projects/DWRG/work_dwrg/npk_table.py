import pathlib
d = pathlib.Path('raw/assets/res.npk').read_bytes()
print('res len=%d' % len(d))
s = 16
n = 0
while n < 40:
    i = d.find(b'\r\n\x00', s)
    if i < 0:
        break
    j = i
    while j > s and 32 <= d[j - 1] < 127:
        j -= 1
    nm = d[j:i].decode('ascii', errors='ignore')
    pre = d[max(16, j - 12):j].hex()
    print('%d name=%r pre=%s' % (i, nm, pre))
    s = i + 3
    n += 1
for name in ['raw/assets/script.npk', 'raw/assets/Documents/script.npk']:
    b = pathlib.Path(name).read_bytes()
    print(name, 'rn0=', b.count(b'\r\n\x00'), 'rn=', b.count(b'\r\n'), 'py=', b.count(b'.py'))
