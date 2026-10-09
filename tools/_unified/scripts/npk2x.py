import pathlib, struct, zlib, re
d = pathlib.Path('raw/assets/script.npk').read_bytes()
n = struct.unpack_from('<I', d, 4)[0]
eoff = struct.unpack_from('<I', d, 20)[0]
out = pathlib.Path('npk2_out')
out.mkdir(exist_ok=True)
targets = ['WorldManager', 'WorldCityHall', 'WorldCityBase', 'WorldBase', 'WorldBattleClientBase',
           'HookUnit', 'iLogicHook', 'AsyncManager', 'kill_civil', 'release_logic', 'init_main_unit',
           'hang_uid', 'TimerManager', 'timer', 'WorldDeduce', 'UILoading']
stat = {}
for i in range(n):
    eid, off, psz, rsz, ckp, ckr, fl = struct.unpack_from('<7I', d, eoff + 28 * i)
    comp, enc = fl & 0xFF, (fl >> 16) & 0xFF
    blob = d[off:off + psz]
    if comp == 1:
        try:
            blob = zlib.decompress(blob)
        except Exception as ex:
            print('zlib-err %08x %s' % (eid, str(ex)[:40]))
            continue
    elif comp == 2:
        print('lz4-entry %08x (skip)' % eid)
        continue
    kind = 'raw'
    if blob[:8] == b'NXS3\x03\x00\x00\x01':
        kind = 'NXS3'
    elif blob[:1] == b'c':
        kind = 'marshal'
    (out / ('%08x.%s.bin' % (eid, kind))).write_bytes(blob)
    stat[kind] = stat.get(kind, 0) + 1
    if kind != 'raw':
        continue
    try:
        t = blob.decode('ascii', errors='ignore')
    except Exception:
        continue
    fns = sorted(set(re.findall(r'[A-Za-z0-9_\\/\-]{3,}\.py', t)))[:8]
    hits = [x for x in targets if x in t]
    if hits or fns:
        print('%08x : %s | %s' % (eid, '|'.join(hits), '|'.join(fns)))
print('stat=' + str(stat))
