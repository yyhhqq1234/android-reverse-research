import pathlib
d = pathlib.Path('raw/assets/res.npk').read_bytes()
for tag, noff in [('E1', 45), ('E2', 313741)]:
    j = noff
    while j > 0 and 32 <= d[j - 1] < 127:
        j -= 1
    print('== %s namestart=%d name=%r' % (tag, j, d[j:j + 40]))
    print(' pre64=' + d[max(0, j - 64):j].hex())
    # name end
    e = d.find(b'\r\n\x00', j)
    print(' nameend=%d datastart=%d' % (e, e + 3 if e >= 0 else -1))
