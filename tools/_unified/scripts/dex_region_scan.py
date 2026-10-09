"""Deep-scan the 5.4MB 'extracted in memory' dex region page by page."""
import struct, subprocess, os

ADB = r'D:\安卓逆向\platform-tools\adb.exe'
DEV = '127.0.0.1:16384'
OUT = r'D:\安卓逆向\NECR\work_necr\prod\dexdump'

def adb(*a):
    p = subprocess.run([ADB, '-s', DEV] + list(a), capture_output=True)
    return p.stdout + p.stderr

def sh(cmd):
    return adb('shell', cmd).decode('utf-8', errors='replace')

pid = sh("su -c 'pidof com.PrismaThunder.Necromancer'").strip().split()[0]
maps = sh(f"su -c 'cat /proc/{pid}/maps'")
import re
found = []
for line in maps.splitlines():
    if 'extracted in memory' in line:
        m = re.match(r'^([0-9a-f]+)-([0-9a-f]+)', line.strip())
        s, e = int(m.group(1), 16), int(m.group(2), 16)
        found.append((s, e))
print('dex regions:', [(hex(s), hex(e)) for s, e in found])
for s, e in found:
    # dump 64-page chunks, tolerate I/O errors per chunk
    out = os.path.join(OUT, f'dexregion_{hex(s)}.bin')
    with open(out, 'wb') as f:
        pass
    good = 0
    magic_hits = []
    pgsize = 4096
    total = (e - s) // pgsize
    step = 64
    for pg in range(0, total, step):
        n = min(step, total - pg)
        dev = '/sdcard/dxr.bin'
        sh(f"su -c 'dd if=/proc/{pid}/mem of={dev} bs=4096 skip={s//pgsize+pg} count={n} 2>/dev/null'")
        adb('pull', dev, out + '.chk')
        sh(f'rm -f {dev}')
        if not os.path.exists(out + '.chk'):
            continue
        with open(out + '.chk', 'rb') as cf:
            data = cf.read()
        os.remove(out + '.chk')
        if len(data) < n * pgsize:
            continue
        with open(out, 'r+b') as f:
            f.seek(pg * pgsize)
            f.write(data)
        good += n
        pos = 0
        while True:
            i = data.find(b'dex\n0', pos)
            if i < 0:
                break
            pos = i + 1
            if data[i:i+4] == b'dex\n' and data[i+4:i+7].isdigit():
                magic_hits.append((pg * pgsize + i, data[i:i+8]))
    print(f'region {hex(s)}: readable {good}/{total} pages, dex magics: {[(hex(o), m) for o, m in magic_hits]}')
print('DONE')
