#!/usr/bin/env python3
"""Spawn under cloak17 + bootsnap2, hold 150s. The anti-debug bypass attempt."""
import frida, time
LOG = r'D:\安卓逆向\NECR\work_necr\logs\snap3.log'
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
for p in d.enumerate_processes():
    if p.name == 'com.PrismaThunder.Necromancer':
        try: d.kill(p.pid)
        except Exception: pass
time.sleep(2)
pid = d.spawn(['com.PrismaThunder.Necromancer'])
print('spawned', pid, flush=True)
s = d.attach(pid)
log = open(LOG, 'w')
def on_msg(m, p):
    if m['type'] == 'send':
        log.write(m['payload'] + '\n'); log.flush()
        print('[js]', m['payload'], flush=True)
    elif m['type'] == 'error':
        log.write('[ERR] ' + str(m.get('description', m)) + '\n'); log.flush()
for f in ['cloak17.js', 'bootsnap2.js']:
    src = open(r'D:\安卓逆向\NECR\work_necr\tools\\' + f, encoding='utf-8').read()
    sc = s.create_script(src)
    sc.on('message', on_msg)
    sc.load()
    print('loaded', f, flush=True)
d.resume(pid)
print('RESUMED 150s', flush=True)
time.sleep(150)
print('SNAP3 DONE', flush=True)
