#!/usr/bin/env python3
"""Spawn game under boot-snapshot hooks, hold 150s, log all agent messages."""
import frida, time
LOG = r'D:\安卓逆向\NECR\work_necr\logs\bootsnap.log'
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
print('killing old…', flush=True)
for p in d.enumerate_processes():
    if p.name == 'com.PrismaThunder.Necromancer':
        try: d.kill(p.pid)
        except Exception: pass
time.sleep(2)
pid = d.spawn(['com.PrismaThunder.Necromancer'])
print('spawned', pid, flush=True)
s = d.attach(pid)
src = open(r'D:\安卓逆向\NECR\work_necr\tools\bootsnap.js', encoding='utf-8').read()
log = open(LOG, 'w')
def on_msg(m, p):
    if m['type'] == 'send':
        log.write(m['payload'] + '\n'); log.flush()
        print('[js]', m['payload'], flush=True)
    elif m['type'] == 'error':
        log.write('[ERR] ' + str(m.get('description', m)) + '\n'); log.flush()
sc = s.create_script(src)
sc.on('message', on_msg)
sc.load()
d.resume(pid)
print('RESUMED, holding 150s', flush=True)
time.sleep(150)
print('SNAP DONE', flush=True)
