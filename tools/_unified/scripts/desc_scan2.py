#!/usr/bin/env python3
"""Chunk-scan the 384MB dalvik-main space (read-only) for dex/Unity fingerprints."""
import os, re, subprocess

DEV = '127.0.0.1:16384'
ADB = r'D:\安卓逆向\platform-tools\adb.exe'
OUT = r'D:\安卓逆向\NECR\work_necr\logs\descsan2.log'
PROD = r'D:\安卓逆向\NECR\work_necr\prod\descsan2'
BASE = 0x12c00000
TOTAL = 384 * 1048576
CHUNK = 16 * 1048576

FINGERS = [b'Lcom/unity3d/player/UnityPlayer;', b'Lcom/stub/StubApp;',
           b'dex\n035\x00', b'dex\n037\x00', b'dex\n038\x00',
           b'dex\n039\x00', b'cdex\n', b'Lcom/playgame/',
           b'Necromancer', b'havefun']

def sh(cmd):
    return subprocess.run(cmd, capture_output=True, text=True).stdout

def main():
    os.makedirs(PROD, exist_ok=True)
    log = open(OUT, 'w')
    pid = sh([ADB, '-s', DEV, 'shell', "su -c 'pidof com.PrismaThunder.Necromancer'"]).strip()
    log.write(f'PID={pid}\n'); log.flush()
    n = TOTAL // CHUNK
    for i in range(n):
        addr = BASE + i * CHUNK
        fp = os.path.join(PROD, f'chunk_{i:02d}.bin')
        subprocess.run([ADB, '-s', DEV, 'shell',
            f"su -c 'dd if=/proc/{pid}/mem of=/sdcard/dc.bin bs=1048576 skip={addr // 1048576} count={CHUNK // 1048576} 2>/dev/null'"],
            capture_output=True)
        r = subprocess.run([ADB, '-s', DEV, 'pull', '/sdcard/dc.bin', fp], capture_output=True)
        try:
            d = open(fp, 'rb').read()
        except OSError:
            log.write(f'chunk {i} pull-fail\n'); log.flush(); continue
        hits = {}
        for f in FINGERS:
            idx = [m.start() for m in list(re.finditer(re.escape(f), d))[:6]]
            if idx:
                hits[f.decode(errors='replace')] = [hex(x) for x in idx]
        if hits:
            log.write(f'HIT chunk{i} {addr:08x} :: {hits}\n')
        else:
            os.remove(fp)
        log.write(f'chunk {i}/{n} done\n'); log.flush()
    log.write('DONE\n'); log.close()

main()
