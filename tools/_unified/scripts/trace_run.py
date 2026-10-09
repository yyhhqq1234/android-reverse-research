#!/usr/bin/env python3
"""Attach recon tracer persistently, log to file. Usage: trace_run.py <pid> <seconds>"""
import frida, sys, time
pid, secs = int(sys.argv[1]), int(sys.argv[2])
LOG = r'D:\安卓逆向\NECR\work_necr\logs\recon.log'
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
s = d.attach(pid)
src = open(r'D:\安卓逆向\NECR\work_necr\tools\recon.js', encoding='utf-8').read()
log = open(LOG, 'w')
def on_msg(m, p):
    if m['type'] == 'send':
        log.write(m['payload'] + '\n'); log.flush()
sc = s.create_script(src)
sc.on('message', on_msg)
sc.load()
print('tracing', pid, secs, flush=True)
time.sleep(secs)
print('trace done', flush=True)
