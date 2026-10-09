#!/usr/bin/env python3
"""Attach-race: poll for game pid, attach instantly, arm dex-capture, hold. Run BEFORE user taps icon."""
import frida, time, subprocess
ADB = r'D:\安卓逆向\platform-tools\adb.exe'
DEV = '127.0.0.1:16384'
LOG = r'D:\安卓逆向\NECR\work_necr\logs\attachrace.log'

def pidof():
    r = subprocess.run([ADB, '-s', DEV, 'shell', "su -c 'pidof com.PrismaThunder.Necromancer'"],
                       capture_output=True, text=True)
    return r.stdout.strip()

log = open(LOG, 'w')
print('waiting for game… (launch it NOW)', flush=True)
t0 = time.time()
pid = ''
while time.time() - t0 < 120:
    pid = pidof()
    if pid:
        break
    time.sleep(0.5)
if not pid:
    print('TIMEOUT no game', flush=True); raise SystemExit
print(f'got pid {pid} in {time.time()-t0:.1f}s, attaching…', flush=True)
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
s = d.attach(int(pid))
src = open(r'D:\安卓逆向\NECR\work_necr\tools\bootsnap2.js', encoding='utf-8').read()
def on_msg(m, p):
    if m['type'] == 'send':
        log.write(m['payload'] + '\n'); log.flush()
        print('[js]', m['payload'], flush=True)
    elif m['type'] == 'error':
        log.write('[ERR] ' + str(m.get('description', m)) + '\n'); log.flush()
        print('[jserr]', str(m.get('description', m))[:200], flush=True)
sc = s.create_script(src)
sc.on('message', on_msg)
sc.load()
print('ARMED, holding 150s', flush=True)
time.sleep(150)
print('RACE DONE', flush=True)
