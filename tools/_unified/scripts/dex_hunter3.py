"""Full magic scan of all big (>=1MB) anon rw regions for dex. Chunked pulls."""
import os, re, struct, subprocess, sys

ADB = r'D:\安卓逆向\platform-tools\adb.exe'
DEV = '127.0.0.1:16384'
PKG = 'com.PrismaThunder.Necromancer'
OUT = r'D:\安卓逆向\NECR\work_necr\prod\dexdump'
CHUNK = 32 * 1024 * 1024

def adb(*a):
    p = subprocess.run([ADB, '-s', DEV] + list(a), capture_output=True)
    return p.stdout + p.stderr

def sh(cmd):
    return adb('shell', cmd).decode('utf-8', errors='replace')

def main():
    os.makedirs(OUT, exist_ok=True)
    pid = sh(f"su -c 'pidof {PKG}'").strip().split()
    if not pid:
        print('GAME NOT RUNNING'); return 2
    pid = pid[0]
    maps = sh(f"su -c 'cat /proc/{pid}/maps'")
    pat = re.compile(r'^([0-9a-f]+)-([0-9a-f]+)\s+(\S+)\s+\S+\s+\S+\s+\S+\s*(.*)$')
    regs = []
    for line in maps.splitlines():
        m = pat.match(line.strip())
        if not m:
            continue
        s, e, perms, name = int(m.group(1), 16), int(m.group(2), 16), m.group(3), m.group(4).strip()
        if not perms.startswith('r'):
            continue
        if (e - s) < 1024 * 1024:
            continue
        if name == '' or name.startswith('[') or 'dalvik' in name or 'ashmem' in name or 'stack' in name:
            if 'boot.' in name or '.art' in name or 'thread' in name or 'mark stack' in name or name == '[stack]':
                continue
            regs.append((s, e, name or '(anon)'))
    regs.sort(key=lambda t: (t[1] - t[0]), reverse=True)
    print(f'{len(regs)} big regions', flush=True)
    tmp = os.path.join(OUT, '_big.bin')
    found = 0
    for s, e, n in regs:
        size = e - s
        off = 0
        while off < size:
            csize = min(CHUNK, size - off)
            dev = '/sdcard/bg.bin'
            sh(f"su -c 'dd if=/proc/{pid}/mem of={dev} bs=4096 skip={(s+off)//4096} count={(csize+4095)//4096} 2>/dev/null'")
            adb('pull', dev, tmp)
            sh(f'rm -f {dev}')
            if not os.path.exists(tmp):
                off += CHUNK
                continue
            with open(tmp, 'rb') as f:
                data = f.read()[:csize]
            os.remove(tmp)
            if len(data) < 112:
                off += CHUNK
                continue
            pos = 0
            while True:
                i = data.find(b'dex\n0', pos)
                if i < 0 or i > len(data) - 112:
                    break
                pos = i + 1
                if not (data[i:i+4] == b'dex\n' and data[i+4:i+7].isdigit()):
                    continue
                fsize = struct.unpack('<I', data[i+32:i+36])[0]
                if fsize < 1000 or fsize > 100 * 1024 * 1024:
                    continue
                print(f'HIT @{hex(s+off+i)} size={fsize} in {n[:50]}', flush=True)
                found += 1
            off += CHUNK
        print(f'done {hex(s)} {(size)//1024//1024}MB {n[:40]}', flush=True)
    print(f'DONE hits={found}', flush=True)

if __name__ == '__main__':
    sys.exit(main())
