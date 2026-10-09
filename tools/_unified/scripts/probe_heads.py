"""Probe first page of every anon/file region >=256KB for dex/elf/zip magic."""
import os, re, subprocess, sys

ADB = r'D:\安卓逆向\platform-tools\adb.exe'
DEV = '127.0.0.1:16384'
PKG = 'com.PrismaThunder.Necromancer'

def adb(*a):
    p = subprocess.run([ADB, '-s', DEV] + list(a), capture_output=True)
    return p.stdout + p.stderr

def sh(cmd):
    return adb('shell', cmd).decode('utf-8', errors='replace')

pid = sh(f"su -c 'pidof {PKG}'").strip().split()[0]
print('PID:', pid)
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
    if (e - s) >= 256 * 1024 and ('(deleted)' in name or name == '' or name.startswith('[') or 'dalvik' in name or 'ashmem' in name):
        regs.append((s, e, perms, name[:60]))
print(f'probing {len(regs)} regions')
for s, e, p, n in regs:
    d = sh(f"su -c 'dd if=/proc/{pid}/mem bs=4096 count=1 skip={s//4096} 2>/dev/null | od -A n -t x1 | head -1'")
    print(f'{hex(s)} {(e-s)//1024:>7}KB {p} {d.strip()[:48]}  {n[:50]}')
