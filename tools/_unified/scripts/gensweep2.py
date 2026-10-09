rs = []
for ln in open('maps4810.txt', encoding='utf8', errors='replace'):
    p = ln.split()
    if len(p) >= 2 and p[1].startswith('rw') and len(p) == 5:
        a, b = p[0].split('-')
        s = int(b, 16) - int(a, 16)
        if s >= 8 * 1048576:
            rs.append((s, a, b))
rs.sort(reverse=True)
L = ['PID=4810', 'rm -f /data/local/tmp/r.bin']
for s, a, b in rs[:12]:
    sk, ct = int(a, 16) // 4096, s // 4096
    L.append('rm -f /data/local/tmp/r.bin')
    L.append('dd if=/proc/$PID/mem of=/data/local/tmp/r.bin bs=4096 skip=%d count=%d 2>&1 | head -2' % (sk, ct))
    L.append('ls -l /data/local/tmp/r.bin 2>&1')
    L.append('if [ -f /data/local/tmp/r.bin ]; then')
    for k in ['HookUnit', 'kill_civil', 'hang_uid', 'WorldManager', 'release_logic', 'iLogicHook', 'AsyncManager', 'redirect', 'NpkImporter']:
        L.append('  echo "%s-%s %s $(grep -a -c %s /data/local/tmp/r.bin)"' % (a, b, k, k))
    L.append('fi')
L.append('echo SWEEP2-DONE')
open('sweep2.sh', 'w').write('\n'.join(L) + '\n')
print('regions=%d' % len(rs[:12]))
for s, a, b in rs[:12]:
    print('%s-%s %dMB' % (a, b, s // 1048576))
