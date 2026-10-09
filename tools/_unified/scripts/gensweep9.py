import re
import struct
import subprocess
ADB = 'D:\\安卓逆向\\platform-tools\\adb.exe'


def u32(d, o):
    return struct.unpack_from('<I', d, o)[0]


d6 = open('g6.bin', 'rb').read()
BASE6 = 0xca6f0000
vas = []
for m in re.finditer(re.escape(b'HookUnit.py'), d6):
    end = m.start() + 11
    for s in range(11, 300):
        ost = end - 16 - s
        if ost < 0 or ost + 20 > len(d6):
            continue
        if u32(d6, ost) == 0x04f5fb40 and u32(d6, ost + 4) == s:
            vas.append(BASE6 + ost)
            break


def str_va(off, n):
    end = off + n
    for s in range(n, 300):
        ost = end - 16 - s
        if u32(d6, ost) == 0x04f5fb40 and u32(d6, ost + 4) == s:
            return BASE6 + ost
    return None


vas.append(str_va(d6.find(b'kill_civil'), 10))
vas.append(str_va(d6.find(b'hang_uid'), 8))
vas = [v for v in vas if v is not None]
print('pats=%d' % len(vas))
bad = [hex(v) for v in vas if b'\x00' in struct.pack('<I', v) or b'\x0a' in struct.pack('<I', v)]
print('bad-pats=', bad)

ps = subprocess.run([ADB, 'shell', 'ps -A -o PID,NAME'], capture_output=True, text=True).stdout
pid = None
for ln in ps.splitlines():
    p = ln.split()
    if len(p) == 2 and p[1] == 'com.identityv.shrek156':
        pid = p[0]
        break
print('pid=' + str(pid))
REGIONS = ['12c00000-2ac00000', 'b0d00000-b4dc0000', '0d2ec000-11248000', 'db580000-dd580000',
           'd10c3000-d30c3000', 'c4454000-c6250000', '73956000-74955000', 'cc100000-cd0c0000',
           'e3f31000-e4b31000', 'e0b2e000-e172e000', '04fa6000-05919000', 'd9700000-d9fc0000']
L = []
for i, va in enumerate(vas):
    esc = ''.join('\\x%02x' % c for c in struct.pack('<I', va))
    L.append('P%d=$(printf \'%s\')' % (i, esc))
L.append('PATS="%s"' % ' '.join('$P%d' % i for i in range(len(vas))))
for r in REGIONS:
    a, b = r.split('-')
    sk, ct = int(a, 16) // 4096, (int(b, 16) - int(a, 16)) // 4096
    L.append('rm -f /data/local/tmp/r.bin')
    L.append('dd if=/proc/%s/mem of=/data/local/tmp/r.bin bs=4096 skip=%d count=%d 2>/dev/null' % (pid, sk, ct))
    L.append('if [ -f /data/local/tmp/r.bin ]; then')
    L.append('  for p in $PATS; do n=$(grep -a -o -F -e \"$p\" /data/local/tmp/r.bin | wc -l); if [ \"$n\" != \"0\" ]; then echo \"%s $n\"; fi; done' % r)
    L.append('fi')
L.append('echo SWEEP9-DONE')
open('sweep9.sh', 'w', newline='\n').write('\n'.join(L) + '\n')
print('wrote sweep9.sh')
