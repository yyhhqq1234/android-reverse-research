import struct
import subprocess
ADB = 'D:\\安卓逆向\\platform-tools\\adb.exe'
PATS = {'hookfn': 0xca71f114, 'killcivil': 0xca745ae4, 'hanguid': 0xca6fe514}
ps = subprocess.run([ADB, 'shell', 'ps -A -o PID,NAME'], capture_output=True, text=True).stdout
pid = None
for ln in ps.splitlines():
    p = ln.split()
    if len(p) == 2 and p[1] == 'com.identityv.shrek156':
        pid = p[0]
        break
print('pid=' + str(pid))
subprocess.run([ADB, 'pull', '/proc/%s/maps' % pid, 'mapsG.txt'])
rs = []
for ln in open('mapsG.txt', encoding='utf8', errors='replace'):
    p = ln.split()
    if len(p) >= 5 and p[1].startswith('rw') and not p[-1].startswith('/'):
        a, b = p[0].split('-')
        if (int(b, 16) - int(a, 16)) < 1048576:
            rs.append((a, b))
rs.sort()
L = []
for k, va in PATS.items():
    esc = ''.join('\\x%02x' % c for c in struct.pack('<I', va))
    L.append('%s=$(printf \'%s\')' % ('P_' + k, esc))
TEXTS = ['WorldManager', 'HookUnit', 'co_filename', 'WorldDeduce', 'NpkImporter']
for a, b in rs:
    sk, ct = int(a, 16) // 4096, (int(b, 16) - int(a, 16)) // 4096
    if ct < 1:
        continue
    L.append('rm -f /data/local/tmp/r.bin')
    L.append('dd if=/proc/%s/mem of=/data/local/tmp/r.bin bs=4096 skip=%d count=%d 2>/dev/null' % (pid, sk, ct))
    L.append('if [ -f /data/local/tmp/r.bin ]; then')
    for k in PATS:
        L.append('  n=$(grep -a -o -F -e \"$P_%s\" /data/local/tmp/r.bin | wc -l); if [ \"$n\" != \"0\" ]; then echo "%s-%s %s $n"; fi' % (k, a, b, k))
    for t in TEXTS:
        L.append('  n=$(grep -a -o -F -e \"%s\" /data/local/tmp/r.bin | wc -l); if [ \"$n\" != \"0\" ]; then echo "%s-%s %s $n"; fi' % (t, a, b, t))
    L.append('fi')
L.append('echo SWEEP8-DONE')
open('sweep8.sh', 'w', newline='\n').write('\n'.join(L) + '\n')
tot = sum(int(b, 16) - int(a, 16) for a, b in rs)
print('small-regions=%d MB=%d' % (len(rs), tot // 1048576))
