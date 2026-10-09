#!/usr/bin/env python3
"""Attach probe: is the Java bridge alive on a normally-booted game?"""
import frida, time, subprocess
ADB = r'D:\安卓逆向\platform-tools\adb.exe'
r = subprocess.run([ADB, '-s', '127.0.0.1:16384', 'shell', "su -c 'pidof com.PrismaThunder.Necromancer'"],
                   capture_output=True, text=True)
pid = r.stdout.strip()
print('pid', pid, flush=True)
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
s = d.attach(int(pid))
js = '''
send('Java-type=' + (typeof Java));
try { send('available=' + Java.available); } catch (e) { send('avail-err=' + e); }
try {
  Java.perform(function () {
    send('perform-ok');
    var AC = Java.use('android.app.ActivityThread');
    send('ActivityThread-ok');
  });
} catch (e) { send('perform-err=' + e); }
'''
sc = s.create_script(js)
sc.on('message', lambda m, p: print('[js]', m.get('payload', m), flush=True))
sc.load()
time.sleep(10)
print('PROBE DONE', flush=True)
