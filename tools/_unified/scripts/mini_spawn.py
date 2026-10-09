#!/usr/bin/env python3
"""Minimal spawn test: verify agent messages flow in spawn mode."""
import frida, time
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
pid = d.spawn(['com.PrismaThunder.Necromancer'])
print('spawned', pid, flush=True)
s = d.attach(pid)
js = '''
send('agent-loaded');
var n = 0;
var t = setInterval(function () {
  send('tick ' + (n++));
  try {
    if (typeof Java !== 'undefined' && Java.available) { send('VM-READY'); clearInterval(t); }
  } catch (e) { send('tick-err ' + e); }
  if (n > 20) clearInterval(t);
}, 1000);
'''
sc = s.create_script(js)
sc.on('message', lambda m, p: print('[js]', m.get('payload', m), flush=True))
sc.load()
d.resume(pid)
print('RESUMED', flush=True)
time.sleep(40)
print('MINI DONE', flush=True)
