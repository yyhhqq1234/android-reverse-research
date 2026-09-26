rs = []
for ln in open('mapsG.txt', encoding='utf8', errors='replace'):
    p = ln.split()
    if len(p) >= 5 and p[1].startswith('rw') and not p[-1].startswith('/'):
        a, b = p[0].split('-')
        ai, bi = int(a, 16), int(b, 16)
        if ai >= 0xc6250000 and ai < 0xcf000000:
            rs.append((bi - ai, a, b))
rs.sort(key=lambda r: r[1])
KEYS = ['WorldManager', 'release_logic', 'HookUnit', 'kill_civil', '.nxsc', 'NpkImporter', 'decryptmore', 'find_module', 'co_filename', 'WorldDeduce', 'HallEvent']
L = ['rm -f /data/local/tmp/r.bin']
for s, a, b in rs:
    sk, ct = int(a, 16) // 4096, s // 4096
    L.append('rm -f /data/local/tmp/r.bin')
    L.append('dd if=/proc/PID/mem of=/data/local/tmp/r.bin bs=4096 skip=%d count=%d 2>/dev/null' % (sk, ct))
    L.append('if [ -f /data/local/tmp/r.bin ]; then')
    for k in KEYS:
        L.append('  echo "%s-%s %s $(grep -a -c %s /data/local/tmp/r.bin)"' % (a, b, k, k))
    L.append('fi')
L.append('echo SWEEP5-DONE')
open('sweep5.sh', 'w', newline='\n').write('\n'.join(L) + '\n')
print('cregions=%d MB=%d' % (len(rs), sum(s for s, _, _ in rs) // 1048576))
for s, a, b in rs:
    print('%s-%s %dKB' % (a, b, s // 1024))
