#!/usr/bin/env python3
"""strace race: poll for game pid, attach strace instantly, hold."""
import subprocess, time, os
ADB = r'D:\安卓逆向\platform-tools\adb.exe'
DEV = '127.0.0.1:16384'
LOG = r'D:\安卓逆向\NECR\work_necr\logs\strace_race.log'

def sh(*a):
    return subprocess.run(a, capture_output=True, text=True).stdout.strip()

print('waiting for game…', flush=True)
t0 = time.time(); pid = ''
while time.time() - t0 < 120:
    pid = sh(ADB, '-s', DEV, 'shell', "su -c 'pidof com.PrismaThunder.Necromancer'")
    if pid:
        break
    time.sleep(0.3)
if not pid:
    print('TIMEOUT', flush=True); raise SystemExit
dt = time.time() - t0
print(f'pid {pid} after {dt:.1f}s — attaching strace', flush=True)
open(LOG, 'w').write(f'pid={pid} attach_delay={dt:.1f}s\n')
# -f threads, -y paths, -e file opens + memfd + mmap, -s 256 path length
cmd = (f"su -c 'LD_LIBRARY_PATH=/data/local/tmp /data/local/tmp/strace "
       f"-f -y -s 300 -e trace=openat,open,openat2,memfd_create,mmap -p {pid} -o /sdcard/st.log'")
p = subprocess.Popen([ADB, '-s', DEV, 'shell', cmd])
time.sleep(110)
subprocess.run([ADB, '-s', DEV, 'shell', f"su -c 'pkill -f \"strace.*{pid}\"'"],
               capture_output=True)
p.wait(timeout=30)
print('strace detached, pulling', flush=True)
subprocess.run([ADB, '-s', DEV, 'shell', "su -c 'chmod 644 /sdcard/st.log'"])
subprocess.run([ADB, '-s', DEV, 'pull', '/sdcard/st.log', LOG.replace('.log', '_sys.log')])
sz = os.path.getsize(LOG.replace('.log', '_sys.log'))
print(f'STRACE DONE bytes={sz}', flush=True)
