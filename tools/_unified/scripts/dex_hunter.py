"""DEX hunter for NECR via ADB root (no GG scripts needed).
Scans readable anon/dalvik memory regions of the game process for dex headers,
slices by header file_size, saves candidates to work_necr\\prod\\dexdump\\.
Read-only vs APK: only reads device memory.
Usage: python dex_hunter.py
"""
import os, re, struct, subprocess, sys

ADB = r'D:\安卓逆向\platform-tools\adb.exe'
DEV = '127.0.0.1:16384'
PKG = 'com.PrismaThunder.Necromancer'
OUT = r'D:\安卓逆向\NECR\work_necr\prod\dexdump'
MAX_REGION = 300 * 1024 * 1024

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
    print('PID:', pid)
    maps = sh(f"su -c 'cat /proc/{pid}/maps'")
    open(os.path.join(OUT, 'maps_dexhunt.txt'), 'w').write(maps)
    pat = re.compile(r'^([0-9a-f]+)-([0-9a-f]+)\s+(\S+)\s+\S+\s+\S+\s+\S+\s*(.*)$')
    regions = []
    for line in maps.splitlines():
        m = pat.match(line.strip())
        if not m:
            continue
        s, e, perms, name = int(m.group(1), 16), int(m.group(2), 16), m.group(3), m.group(4).strip()
        if not perms.startswith('r'):
            continue
        size = e - s
        if size < 64 * 1024 or size > MAX_REGION:
            continue
        # prime targets: anon / dalvik / ashmem / empty path; skip file-backed .so/.oat/.art (dex won't hide there)
        if name == '' or name.startswith('[anon') or 'dalvik' in name or 'ashmem' in name or 'linearalloc' in name or 'jit-cache' in name or '/memfd:' in name:
            regions.append((s, e, perms, name or '(anon)'))
    total = sum(e - s for s, e, _, _ in regions)
    print(f'candidate regions: {len(regions)} total {total//1024//1024}MB')
    for s, e, p, n in regions[:40]:
        print(f'   {hex(s)}-{hex(e)} {(e-s)//1024}KB {p} {n[:70]}')
    if len(regions) > 40:
        print(f'   ... +{len(regions)-40} more')
    found = 0
    bs = 4096
    for idx, (s, e, p, n) in enumerate(regions):
        size = e - s
        dev = f'/sdcard/dexscan_{idx}.bin'
        sh(f"su -c 'dd if=/proc/{pid}/mem of={dev} bs={bs} skip={s//bs} count={(size+bs-1)//bs} 2>/dev/null'")
        raw = adb('pull', dev, os.path.join(OUT, f'region_{idx}.bin')).decode(errors='replace')
        sh(f"rm -f {dev}")
        fpath = os.path.join(OUT, f'region_{idx}.bin')
        if not os.path.exists(fpath):
            continue
        with open(fpath, 'rb') as f:
            data = f.read()[:size]
        # search dex magic
        pos = 0
        hits = 0
        while True:
            i = data.find(b'dex\n0', pos)
            if i < 0:
                break
            pos = i + 1
            if i + 112 > len(data):
                continue
            ver = data[i+4:i+8]
            if ver not in (b'35\x000', b'37\x000', b'38\x000', b'39\x000', b'40\x000'):
                # ver bytes are like b'035\x00'
                if not (data[i:i+4] == b'dex\n' and data[i+4:i+7].isdigit()):
                    continue
            try:
                fsize = struct.unpack('<I', data[i+32:i+36])[0]
            except Exception:
                continue
            if fsize < 1000 or i + fsize > len(data) + 4096:
                continue
            blob = data[i:i+fsize]
            # sanity: header_size field at +0x20 should be 0x70
            if len(blob) >= 0x24 and struct.unpack('<I', blob[0x20:0x24])[0] != 0x70:
                continue
            outp = os.path.join(OUT, f'found_{found}_{ver.decode(errors="replace").strip(chr(0))}_{fsize}.dex')
            with open(outp, 'wb') as o:
                o.write(blob)
            print(f'HIT region={idx} off={hex(i)} ver={ver} size={fsize} -> {os.path.basename(outp)}')
            found += 1
            hits += 1
            if hits > 8:
                break  # per-region cap
        os.remove(fpath)  # drop raw region, keep only dex hits
        print(f'  region {idx} done ({size//1024}KB) hits={hits}')
    print(f'DONE total dex hits: {found} -> {OUT}')
    return 0

if __name__ == '__main__':
    sys.exit(main())
