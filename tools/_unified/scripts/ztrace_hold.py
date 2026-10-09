#!/usr/bin/env python3
"""Hold zygote strace open (pipe holder), 100s, then pull."""
import subprocess, time, os
ADB = r'D:\安卓逆向\platform-tools\adb.exe'
DEV = '127.0.0.1:16384'
OUT = r'D:\安卓逆向\NECR\work_necr\logs\stz2.log'

def sh(*a):
    return subprocess.run(a, capture_output=True, text=True).stdout.strip()

z = sh(ADB, '-s', DEV, 'shell', "su -c 'pidof zygote'")
print('zygote', z, flush=True)
p = subprocess.Popen(
    [ADB, '-s', DEV, 'shell',
     f"su -c 'LD_LIBRARY_PATH=/data/local/tmp /data/local/tmp/strace -f -y -s 300 "
     f"-e trace=openat,open,openat2,memfd_create -p {z} -o /sdcard/stz2.log'"],
    stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
time.sleep(100)
sh(ADB, '-s', DEV, 'shell', "su -c 'pkill -9 -f stz2.log'")
try:
    p.wait(timeout=20)
except Exception:
    p.kill()
sh(ADB, '-s', DEV, 'shell', "su -c 'chmod 644 /sdcard/stz2.log'")
subprocess.run([ADB, '-s', DEV, 'pull', '/sdcard/stz2.log', OUT])
print('ZT DONE bytes=', os.path.getsize(OUT), flush=True)
