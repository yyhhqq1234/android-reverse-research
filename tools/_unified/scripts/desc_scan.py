#!/usr/bin/env python3
"""Live full-memory descriptor scan (read-only). No size/name filters except
skipping system file-backed libs. Fingerprints: Unity descriptors + dex magics."""
import os, re, subprocess, sys

DEV = '127.0.0.1:16384'
ADB = r'D:\安卓逆向\platform-tools\adb.exe'
OUT = r'D:\安卓逆向\NECR\work_necr\logs\descsan.log'
PROD = r'D:\安卓逆向\NECR\work_necr\prod\descsan'

FINGERS = [b'Lcom/unity3d/player/UnityPlayer;', b'Lcom/stub/StubApp;',
           b'Lcom/qihoo/util/', b'dex\n035\x00', b'dex\n037\x00',
           b'dex\n038\x00', b'dex\n039\x00', b'cdex\n']

def sh(cmd):
    return subprocess.run(cmd, capture_output=True, text=True).stdout

def main():
    os.makedirs(PROD, exist_ok=True)
    log = open(OUT, 'w')
    pid = sh([ADB, '-s', DEV, 'shell', "su -c 'pidof com.PrismaThunder.Necromancer'"]).strip()
    log.write(f'PID={pid}\n'); log.flush()
    maps = sh([ADB, '-s', DEV, 'shell', f"su -c 'cat /proc/{pid}/maps'"])
    total = 0
    for line in maps.splitlines():
        m = re.match(r'([0-9a-f]+)-([0-9a-f]+) (..)-(p) \S+ \S+ \S+\s*(.*)', line)
        if not m:
            continue
        s, e, perms = int(m.group(1), 16), int(m.group(2), 16), m.group(3)
        name = m.group(5).strip()
        if 'r' not in perms:
            continue
        size = e - s
        if size < 4096 or size > 64 * 1048576:
            continue
        # skip system file-backed code, keep app files + all anon flavors
        if name.startswith('/') and ('/system/' in name or '/apex/' in name or '/vendor/' in name):
            continue
        if name.startswith('/') and ('base.apk' in name or '.odex' in name or '.vdex' in name or '.oat' in name):
            continue
        if 'libil2cpp.so' in name or 'libunity.so' in name:
            continue
        total += 1
        fn = f'{s:012x}_{size}.bin'
        fp = os.path.join(PROD, fn)
        r = subprocess.run(
            [ADB, '-s', DEV, 'shell',
             f"su -c 'dd if=/proc/{pid}/mem of=/sdcard/ds.bin bs=4096 skip={s // 4096} count={(size + 4095) // 4096} 2>/dev/null'"],
            capture_output=True)
        r = subprocess.run([ADB, '-s', DEV, 'pull', '/sdcard/ds.bin', fp],
                           capture_output=True)
        try:
            d = open(fp, 'rb').read()[:size]
        except OSError:
            log.write(f'SKIP {s:012x} pull-fail {name[:60]}\n'); log.flush(); continue
        hits = {}
        for f in FINGERS:
            idx = [m2.start() for m2 in list(re.finditer(re.escape(f), d))[:4]]
            if idx:
                hits[f.decode(errors='replace')] = [hex(x) for x in idx]
        if hits:
            log.write(f'HIT {s:012x}-{e:012x} sz={size} {name[:70]} :: {hits}\n')
        else:
            os.remove(fp)
        log.flush()
    log.write(f'DONE regions={total}\n')
    log.close()

main()
