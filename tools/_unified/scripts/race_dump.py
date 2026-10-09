"""Race-dump NECR while the gfx crash window is open (no taps needed).
1. am start game; 2. poll maps until libil2cpp.so has r-xp (decrypted);
3. su kill -STOP (freeze); 4. dd ranges; 5. kill -CONT; 6. report.
Writes to work_necr\\prod\\ . Read-only vs APK.
"""
import os, re, subprocess, sys, time

ADB = r'D:\安卓逆向\platform-tools\adb.exe'
PKG = 'com.PrismaThunder.Necromancer'
ACT = f'{PKG}/com.unity3d.player.UnityPlayerActivity'
OUT = r'D:\安卓逆向\NECR\work_necr\prod'
TARGETS = ['libil2cpp.so', 'libOGM.so', 'libjiagu.so']

def sh(*a):
    p = subprocess.run([ADB, 'shell'] + list(a), capture_output=True, text=True)
    return (p.stdout or '') + (p.stderr or '')

def main():
    os.makedirs(OUT, exist_ok=True)
    print('launching...', sh('am', 'start', '-n', ACT).strip().splitlines()[:1])
    pid = None
    t0 = time.time()
    while time.time() - t0 < 90:
        out = sh(f"su -c 'pidof {PKG}'").strip().split()
        if out:
            pid = out[0]
            break
        time.sleep(2)
    if not pid:
        print('no process appeared'); return 2
    print('PID:', pid)
    pat = re.compile(r'^([0-9a-f]+)-([0-9a-f]+)\s+(\S+)\s+\S+\s+\S+\s+\S+\s*(.*)$')
    ready = False
    t0 = time.time()
    maps = ''
    while time.time() - t0 < 90:
        maps = sh(f"su -c 'cat /proc/{pid}/maps'")
        if 'libil2cpp.so' in maps and re.search(r'r-xp\S*\s+\S+\s+\S+\s+\S+\s+.*libil2cpp\.so', maps):
            ready = True
            break
        if f'pidof' in maps or not maps.strip():
            print('process died while waiting'); return 3
        time.sleep(2)
    open(os.path.join(OUT, 'maps_race.txt'), 'w').write(maps)
    if not ready:
        print('TIMEOUT: libil2cpp r-xp never appeared (crashed first?)'); return 4
    print('libil2cpp executable mapping present — freezing process')
    print(sh(f"su -c 'kill -STOP {pid}'").strip() or '(stopped)')
    try:
        hits = {}
        for line in maps.splitlines():
            m = pat.match(line.strip())
            if not m:
                continue
            s, e, perms, name = int(m.group(1), 16), int(m.group(2), 16), m.group(3), m.group(4)
            for t in TARGETS:
                if t in name:
                    hits.setdefault(t, []).append((s, e, perms, name))
        for t, segs in hits.items():
            segs.sort()
            lo, hi = segs[0][0], segs[-1][1]
            size = hi - lo
            print(f'{t}: range {hex(lo)}-{hex(hi)} ({size//1024}KB, {len(segs)} segs)')
            dev = f'/sdcard/{t}.racedump.bin'
            bs = 4096
            dd = sh(f"su -c 'dd if=/proc/{pid}/mem of={dev} bs={bs} skip={lo//bs} count={(size+bs-1)//bs}'")
            print('   dd:', (dd.strip().splitlines() or ['(no output)'])[-1])
            out = os.path.join(OUT, t + '.racedump.bin')
            subprocess.run([ADB, 'pull', dev, out], capture_output=True)
            if os.path.exists(out):
                with open(out, 'rb') as f:
                    data = f.read()[:size]
                with open(out, 'wb') as f:
                    f.write(data)
                print(f'   saved {len(data)} bytes head={data[:8]!r}')
    finally:
        print(sh(f"su -c 'kill -CONT {pid}'").strip() or '(resumed)')
    print('DONE -> run g1_gate.py prod')
    return 0

if __name__ == '__main__':
    sys.exit(main())
