#!/usr/bin/env python3
"""Probe Java bridge via ARM server on the live game."""
import frida, time, subprocess
ADB = r'D:\安卓逆向\platform-tools\adb.exe'
r = subprocess.run([ADB, '-s', '127.0.0.1:16384', 'shell', "su -c 'pidof com.PrismaThunder.Necromancer'"],
                   capture_output=True, text=True)
pid = r.stdout.strip()
print('pid', pid, flush=True)
try:
    d = frida.get_device_manager().add_remote_device('127.0.0.1:27043')
    procs = list(d.enumerate_processes())
    print('arm-server procs:', len(procs), flush=True)
    s = d.attach(int(pid))
    js = '''
send('arch=' + Process.arch);
send('Java-type=' + (typeof Java));
try { send('available=' + Java.available); } catch (e) { send('avail-err=' + e); }
'''
    sc = s.create_script(js)
    sc.on('message', lambda m, p: print('[js]', m.get('payload', m), flush=True))
    sc.load()
    time.sleep(8)
except Exception as e:
    print('ARM-FAIL', type(e).__name__, str(e)[:200], flush=True)
print('PROBE DONE', flush=True)
