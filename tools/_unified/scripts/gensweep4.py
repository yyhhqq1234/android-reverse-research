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
        if s >= 1048576:
            rs.append((s, a, b))
rs.sort(reverse=True)
KEYS = ['.nxsc', 'asdf_d', 'NpkImporter', 'find_module', 'decryptmore', 'HookUnit', 'kill_civil', 'hang_uid', 'WorldManager', 'release_logic']
L = ['rm -f /data/local/tmp/r.bin']
for s, a, b in rs[:80]:
    sk, ct = int(a, 16) // 4096, s // 4096
    L.append('rm -f /data/local/tmp/r.bin')
    L.append('dd if=/proc/%s/mem of=/data/local/tmp/r.bin bs=4096 skip=%d count=%d 2>/dev/null' % (pid, sk, ct))
    L.append('if [ -f /data/local/tmp/r.bin ]; then')
    for k in KEYS:
        L.append('  echo "%s-%s %s $(grep -a -c %s /data/local/tmp/r.bin)"' % (a, b, k, k))
    L.append('fi')
L.append('echo SWEEP4-DONE')
open('sweep4.sh', 'w', newline='\n').write('\n'.join(L) + '\n')
print('regions=%d pid=%s MB=%d' % (len(rs[:80]), pid, sum(s for s, _, _ in rs[:80]) // 1048576))
