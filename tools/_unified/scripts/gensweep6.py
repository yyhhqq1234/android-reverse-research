import subprocess
ADB = 'D:\\安卓逆向\\platform-tools\\adb.exe'
REGIONS = ['c7c39000-c7c7c000', 'c7d32000-c7d73000', 'c8ebb000-c8efc000',
           'c8efe000-c8f3f000', 'ca929b000-ca92dc000', 'ca5fe000-ca63f000',
           'ca6f0000-ca731000']
KEYS = ['NpkImporter', 'HookUnit', 'kill_civil', 'hang_uid', 'WorldManager',
        'release_logic', 'WorldDeduce', 'HallEvent', 'find_module', 'decryptmore',
        '.nxsc', 'co_filename', 'asyncio', 'AsyncManager', 'timer']
L = []
for i, r in enumerate(REGIONS):
    a, b = r.split('-')
    sk, ct = int(a, 16) // 4096, (int(b, 16) - int(a, 16)) // 4096
    L.append('dd if=/proc/5679/mem of=/data/local/tmp/g%d.bin bs=4096 skip=%d count=%d 2>/dev/null' % (i, sk, ct))
L.append('ls -l /data/local/tmp/g*.bin')
L.append('grep -a -b -o -E \'%s\' /data/local/tmp/g*.bin | head -60' % '|'.join(KEYS))
L.append('echo SWEEP6-DONE')
open('sweep6.sh', 'w', newline='\n').write('\n'.join(L) + '\n')
print('wrote sweep6.sh')
