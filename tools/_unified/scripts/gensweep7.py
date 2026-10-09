import re
import struct
import subprocess
ADB = 'D:\\安卓逆向\\platform-tools\\adb.exe'


def u32(d, o):
    return struct.unpack_from('<I', d, o)[0]


d6 = open('g6.bin', 'rb').read()
BASE6 = 0xca6f0000


def str_va(match_off, nlen):
    end = match_off + nlen
    for s in range(nlen, 300):
        ost = end - 16 - s
        if ost < 0 or ost + 20 > len(d6):
            continue
        if u32(d6, ost) == 0x04f5fb40 and u32(d6, ost + 4) == s:
            return BASE6 + ost
    return None


pats = {}
m = re.search(re.escape(b'HookUnit.py'), d6)
pats['hookfn'] = str_va(m.start(), 11)
m = d6.find(b'kill_civil')
pats['killcivil'] = str_va(m, 10)
m = d6.find(b'hang_uid')
pats['hanguid'] = str_va(m, 8)
print(pats)
for k, v in pats.items():
    assert v is not None, k
    b = struct.pack('<I', v)
    assert b'\x00' not in b and b'\x0a' not in b, (k, b.hex())

ps = subprocess.run([ADB, 'shell', 'ps -A -o PID,NAME'], capture_output=True, text=True).stdout
pid = None
for ln in ps.splitlines():
    p = ln.split()
    if len(p) == 2 and p[1] == 'com.identityv.shrek156':
        pid = p[0]
        break
print('pid=' + str(pid))
subprocess.run([ADB, 'pull', '/proc/%s/maps' % pid, 'mapsG.txt'])
DUMPED = ['c7c39000-c7c7c000', 'c7d32000-c7d73000', 'c8ebb000-c8efc000', 'c8efe000-c8f3f000',
          'ca929b000-ca92dc000', 'ca5fe000-ca63f000', 'ca6f0000-ca731000',
          '12c00000-2ac00000', 'b5f00000-b60c0000', 'b99c0000-b9b0000', 'd9700000-d9fc0000']
rs = []
for ln in open('mapsG.txt', encoding='utf8', errors='replace'):
    p = ln.split()
    if len(p) >= 5 and p[1].startswith('rw') and not p[-1].startswith('/'):
        a, b = p[0].split('-')
        if (int(b, 16) - int(a, 16)) >= 1048576 and p[0] not in DUMPED:
            rs.append((a, b))
rs.sort()
L = []
for k, va in pats.items():
    by = struct.pack('<I', va)
    esc = ''.join('\\x%02x' % c for c in by)
    L.append('%s=$(printf \'%s\')' % ('P_' + k, esc))
for a, b in rs:
    sk, ct = int(a, 16) // 4096, (int(b, 16) - int(a, 16)) // 4096
    L.append('rm -f /data/local/tmp/r.bin')
    L.append('dd if=/proc/%s/mem of=/data/local/tmp/r.bin bs=4096 skip=%d count=%d 2>/dev/null' % (pid, sk, ct))
    L.append('if [ -f /data/local/tmp/r.bin ]; then')
    for k in pats:
        L.append('  n=$(grep -a -o -F -e \"$P_%s\" /data/local/tmp/r.bin | wc -l); if [ \"$n\" != \"0\" ]; then echo "%s-%s %s $n"; fi' % (k, a, b, k))
    L.append('fi')
L.append('echo SWEEP7-DONE')
open('sweep7.sh', 'w', newline='\n').write('\n'.join(L) + '\n')
print('regions=%d' % len(rs))
