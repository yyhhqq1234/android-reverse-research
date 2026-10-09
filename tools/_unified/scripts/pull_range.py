"""Precise pull of absolute memory ranges. usage: pull_range.py <hexaddr> <size> <outfile>"""
import subprocess, sys

ADB = r'D:\安卓逆向\platform-tools\adb.exe'
DEV = '127.0.0.1:16384'

def adb(*a):
    p = subprocess.run([ADB, '-s', DEV] + list(a), capture_output=True)
    return (p.stdout + p.stderr).decode('utf-8', errors='replace')

addr, size, out = int(sys.argv[1], 16), int(sys.argv[2]), sys.argv[3]
pid = adb('shell', "su -c 'pidof com.PrismaThunder.Necromancer'").strip().split()[0]
start_page, end_page = addr // 4096, (addr + size + 4095) // 4096
print(adb('shell', f"su -c 'dd if=/proc/{pid}/mem of=/sdcard/pr.bin bs=4096 skip={start_page} count={end_page-start_page}'").strip().splitlines()[-1:])
print(adb('pull', '/sdcard/pr.bin', out + '.full').strip().splitlines()[-1:])
adb('shell', 'rm -f /sdcard/pr.bin')
with open(out + '.full', 'rb') as f:
    data = f.read()
off = addr - start_page * 4096
blob = data[off:off + size]
with open(out, 'wb') as f:
    f.write(blob)
import os
os.remove(out + '.full')
print(f'saved {out} {len(blob)} bytes head={blob[:8]!r}')
