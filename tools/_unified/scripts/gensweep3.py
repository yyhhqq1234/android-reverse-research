import subprocess
ADB = 'D:\\安卓逆向\\platform-tools\\adb.exe'
ps = subprocess.run([ADB, 'shell', 'ps -A -o PID,NAME'], capture_output=True, text=True).stdout
pid = None
for ln in ps.splitlines():
    p = ln.split()
    if len(p) == 2 and p[1] == 'com.identityv.shrek156':
        pid = p[0]
        break
print('main-pid=' + str(pid))
if not pid:
    raise SystemExit('game-main-not-found')
subprocess.run([ADB, 'pull', '/proc/%s/maps' % pid, 'mapsG.txt'])
rs = []
for ln in open('mapsG.txt', encoding='utf8', errors='replace'):
    p = ln.split()
    if len(p) >= 5 and p[1].startswith('rw') and not p[-1].startswith('/'):
        a, b = p[0].split('-')
        s = int(b, 16) - int(a, 16)
        if s >= 8 * 1048576:
            rs.append((s, a, b))
rs.sort(reverse=True)
L = ['rm -f /data/local/tmp/r.bin']
for s, a, b in rs[:12]:
    sk, ct = int(a, 16) // 4096, s // 4096
    L.append('rm -f /data/local/tmp/r.bin')
    L.append('dd if=/proc/%s/mem of=/data/local/tmp/r.bin bs=4096 skip=%d count=%d 2>&1 | head -2' % (pid, sk, ct))
    L.append('ls -l /data/local/tmp/r.bin 2>&1')
    L.append('if [ -f /data/local/tmp/r.bin ]; then')
    for k in ['HookUnit', 'kill_civil', 'hang_uid', 'WorldManager', 'release_logic', 'iLogicHook', 'AsyncManager', 'redirect', 'NpkImporter']:
        L.append('  echo "%s-%s %s $(grep -a -c %s /data/local/tmp/r.bin)"' % (a, b, k, k))
    L.append('fi')
L.append('echo SWEEP3-DONE')
open('sweep3.sh', 'w', newline='\n').write('\n'.join(L) + '\n')
print('regions=%d pid=%s' % (len(rs[:12]), pid))
for s, a, b in rs[:12]:
    print('%s-%s %dMB' % (a, b, s // 1048576))
