"""DEX hunter v2: chunked scan of dalvik-main space + LinearAlloc/memfd/jit.
Hits re-extracted precisely by header file_size. Saves to prod\\dexdump\\.
"""
import os, re, struct, subprocess, sys

ADB = r'D:\安卓逆向\platform-tools\adb.exe'
DEV = '127.0.0.1:16384'
PKG = 'com.PrismaThunder.Necromancer'
OUT = r'D:\安卓逆向\NECR\work_necr\prod\dexdump'
CHUNK = 32 * 1024 * 1024
OVERLAP = 8 * 1024 * 1024

def adb(*a):
    p = subprocess.run([ADB, '-s', DEV] + list(a), capture_output=True)
    return p.stdout + p.stderr

def sh(cmd):
    return adb('shell', cmd).decode('utf-8', errors='replace')

def dd_pull(pid, start, size, local):
    dev = '/sdcard/dx.bin'
    sh(f"su -c 'dd if=/proc/{pid}/mem of={dev} bs=4096 skip={start//4096} count={(size+4095)//4096} 2>/dev/null'")
    adb('pull', dev, local)
    sh(f'rm -f {dev}')
    if not os.path.exists(local):
        return None
    with open(local, 'rb') as f:
        return f.read()[:size]

def main():
    os.makedirs(OUT, exist_ok=True)
    pid = sh(f"su -c 'pidof {PKG}'").strip().split()
    if not pid:
        print('GAME NOT RUNNING'); return 2
    pid = pid[0]
    print('PID:', pid, flush=True)
    maps = sh(f"su -c 'cat /proc/{pid}/maps'")
    pat = re.compile(r'^([0-9a-f]+)-([0-9a-f]+)\s+(\S+)\s+\S+\s+\S+\s+\S+\s*(.*)$')
    targets = []
    for line in maps.splitlines():
        m = pat.match(line.strip())
        if not m:
            continue
        s, e, perms, name = int(m.group(1), 16), int(m.group(2), 16), m.group(3), m.group(4).strip()
        if not perms.startswith('r'):
            continue
        if ('dalvik-main space' in name or 'LinearAlloc' in name or 'memfd' in name
                or 'jit-cache' in name or 'dalvik-large object space' in name):
            targets.append((s, e, name))
    targets.sort(key=lambda t: (t[1] - t[0]), reverse=True)
    print(f'targets: {len(targets)}', flush=True)
    for s, e, n in targets:
        print(f'   {hex(s)}-{hex(e)} {(e-s)//1024}KB {n[:60]}', flush=True)
    found = 0
    tmp = os.path.join(OUT, '_chunk.bin')
    for s, e, n in targets:
        size = e - s
        off = 0
        while off < size:
            csize = min(CHUNK, size - off)
            data = dd_pull(pid, s + off, csize, tmp)
            if data is None or len(data) < 112:
                print(f'  skip unreadable chunk {hex(s+off)}', flush=True)
                off += CHUNK
                continue
            pos = 0
            while True:
                i = data.find(b'dex\n0', pos)
                if i < 0 or i > len(data) - 112:
                    break
                pos = i + 1
                if not (data[i:i+4] == b'dex\n' and data[i+4:i+7].isdigit() and data[i+7:i+8] == b'\x00'):
                    continue
                fsize = struct.unpack('<I', data[i+32:i+36])[0]
                if fsize < 1000 or fsize > 100 * 1024 * 1024:
                    continue
                if len(data) >= i + 0x24 and struct.unpack('<I', data[i+0x20:i+0x24])[0] != 0x70:
                    continue
                abs_off = s + off + i
                blob = dd_pull(pid, abs_off, fsize, tmp)
                if blob is None or len(blob) < fsize:
                    print(f'  hit@{hex(abs_off)} size={fsize} re-read FAILED', flush=True)
                    continue
                if blob[:4] != b'dex\n':
                    continue
                outp = os.path.join(OUT, f'memdex_{found}_{fsize}.dex')
                with open(outp, 'wb') as o:
                    o.write(blob)
                print(f'HIT {os.path.basename(outp)} from {n[:40]}', flush=True)
                found += 1
            off += CHUNK
            print(f'  scanned {hex(s+off)}/{hex(e)}', flush=True)
    if os.path.exists(tmp):
        os.remove(tmp)
    print(f'DONE hits={found}', flush=True)
    return 0

if __name__ == '__main__':
    sys.exit(main())
