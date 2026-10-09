"""ADB-root memdump for NECR (no GG scripts needed).
Requires: emulator online, game RUNNING at main screen, root (su).
Dumps whole contiguous mapping range per .so via /proc/PID/mem + dd.
Read-only vs APK: only reads device memory; writes go to work_necr\\prod.
Usage: python adb_memdump.py
"""
import os, re, subprocess, sys

ADB = r'D:\安卓逆向\platform-tools\adb.exe'
PKG = 'com.PrismaThunder.Necromancer'
OUT = r'D:\安卓逆向\NECR\work_necr\prod'
TARGETS = ['libil2cpp.so', 'libOGM.so', 'libjiagu.so', 'libmain.so', 'libunity.so']

def sh(*args):
    p = subprocess.run([ADB, 'shell'] + list(args), capture_output=True, text=True)
    return (p.stdout or '') + (p.stderr or '')

def main():
    os.makedirs(OUT, exist_ok=True)
    pid = sh(f"su -c 'pidof {PKG}'").strip().split()
    if not pid:
        print('GAME NOT RUNNING — launch NECR to main screen first, then rerun.');
        return 2
    pid = pid[0]
    print('PID:', pid)
    maps = sh(f"su -c 'cat /proc/{pid}/maps'")
    open(os.path.join(OUT, 'maps_snapshot.txt'), 'w').write(maps)
    print(f'maps lines: {len(maps.splitlines())} -> prod\\maps_snapshot.txt')
    pat = re.compile(r'^([0-9a-f]+)-([0-9a-f]+)\s+(\S+)\s+\S+\s+\S+\s+\S+\s*(.*)$')
    hits = {}
    for line in maps.splitlines():
        m = pat.match(line.strip())
        if not m:
            continue
        start, end, perms, name = int(m.group(1), 16), int(m.group(2), 16), m.group(3), m.group(4)
        for t in TARGETS:
            if t in name:
                hits.setdefault(t, []).append((start, end, perms, name))
    for t, segs in hits.items():
        segs.sort()
        lo, hi = segs[0][0], segs[-1][1]
        print(f'{t}: {len(segs)} segs range {hex(lo)}-{hex(hi)} size {(hi-lo)//1024}KB')
        for s, e, p, n in segs:
            print(f'   {hex(s)}-{hex(e)} {p} {n[:80]}')
    print()
    for t, segs in hits.items():
        if 'libil2cpp' not in t and 'libOGM' not in t and 'libjiagu' not in t:
            continue  # only dump what matters by default
        segs.sort()
        lo, hi = segs[0][0], segs[-1][1]
        size = hi - lo
        if size > 200 * 1024 * 1024:
            print(f'SKIP {t}: range too big ({size//1024//1024}MB)'); continue
        dev = f'/sdcard/{t}.memdump.bin'
        bs = 4096
        cmd = f"su -c 'dd if=/proc/{pid}/mem of={dev} bs={bs} skip={lo//bs} count={(size+bs-1)//bs} 2>&1'"
        print(f'dd {t} ...')
        ddout = sh(cmd).strip().splitlines()
        print('   ', ddout[-1] if ddout else '(no output)')
        out = os.path.join(OUT, t + '.memdump.bin')
        # trim to exact range (dd works inWhole pages; lo is page aligned so head exact, tail may overhang)
        p = subprocess.run([ADB, 'pull', dev, out], capture_output=True, text=True)
        print('   pull:', (p.stdout or p.stderr).strip().splitlines()[-1:])
        if os.path.exists(out):
            with open(out, 'rb') as f:
                data = f.read()
            data = data[:size]  # trim overhang
            with open(out, 'wb') as f:
                f.write(data)
            print(f'   saved {out} ({len(data)} bytes) head={data[:4]!r}')
    print('DONE. Next: python tools\\g1_gate.py prod')
    return 0

if __name__ == '__main__':
    sys.exit(main())
