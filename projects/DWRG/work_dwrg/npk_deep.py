import pathlib, re
for name in ['raw/assets/script.npk', 'raw/assets/Documents/script.npk']:
    d = pathlib.Path(name).read_bytes()
    print('== %s len=%d ==' % (name, len(d)))
    for pat in ['WorldBattleClientBase', 'StateCivilian', 'Avatar', 'Traceback', 'postScriptError', '.py']:
        print(' %s x%d' % (pat, d.count(pat.encode())))
    txt = d.decode('ascii', errors='ignore')
    pys = sorted(set(re.findall(r'[A-Za-z0-9_/]{3,}\.py', txt)))
    print('PY_SAMPLE=%d' % len(pys))
    for p in pys[:30]:
        print(' PY=' + p)
d = pathlib.Path('raw/assets/res.npk').read_bytes()
print('== res head ==')
print(repr(d[16:1024].decode('ascii', errors='ignore')[:800]))
