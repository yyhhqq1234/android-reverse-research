import pathlib, zlib, re
savedir = pathlib.Path('npk_out')
savedir.mkdir(exist_ok=True)
targets = ['kill_civil', 'release_logic', 'WorldManager', 'HookUnit', 'iLogicHook',
           'hang_uid', 'init_main_unit', 'WorldCityHall', 'WorldDeduce', 'AsyncManager']
for name in ['raw/assets/script.npk', 'raw/assets/Documents/script.npk']:
    d = pathlib.Path(name).read_bytes()
    print('== %s len=%d ==' % (name, len(d)))
    cands = []
    for i in range(20, len(d) - 2):
        if d[i] == 0x78 and d[i + 1] in (0x01, 0x9c, 0xda):
            cands.append(i)
    print(' cands=%d' % len(cands))
    ncode = ntxt = 0
    for off in cands:
        try:
            o = zlib.decompressobj()
            out = o.decompress(d[off:off + 4000000])
            o.flush()
        except Exception:
            continue
        if len(out) < 32:
            continue
        if out[:1] == b'c':
            fn = savedir / ('%s_pyc_%d.bin' % (pathlib.Path(name).stem, off))
            fn.write_bytes(out)
            ncode += 1
        else:
            try:
                txt = out.decode('ascii')
            except Exception:
                continue
            if len(txt) > 100:
                fn = savedir / ('%s_txt_%d.txt' % (pathlib.Path(name).stem, off))
                fn.write_text(txt[:500000])
                ntxt += 1
    print(' code=%d txt=%d' % (ncode, ntxt))
print('DONE')
# grep identifiers across saved
for fn in sorted(savedir.glob('*')):
    try:
        t = fn.read_bytes().decode('ascii', errors='ignore')
    except Exception:
        continue
    hits = [x for x in targets if x in t]
    strs = sorted(set(re.findall(r'[A-Za-z0-9_\\]{4,}\.py', t)))[:6]
    if hits or strs:
        print('%s : %s | %s' % (fn.name, '|'.join(hits), '|'.join(strs)))
