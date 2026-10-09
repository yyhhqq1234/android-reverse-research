import frida, time, json, sys, os
pid = int(sys.argv[1]) if len(sys.argv) > 1 else 8771
secs = int(sys.argv[2]) if len(sys.argv) > 2 else 240
base = os.path.dirname(os.path.abspath(__file__))
js = open(os.path.join(base, 'op_watch.js'), encoding='utf-8').read()
log = open(os.path.join(base, 'op_watchlog.txt'), 'w', encoding='utf-8')
t0 = time.time()
n = [0]


def onm(m, dd):
    try:
        p = m.get('payload', {})
        if isinstance(p, dict) and p.get('t') in ('conn', 'rfail'):
            n[0] += 1
            log.write('%.1f %s\n' % (time.time() - t0, json.dumps(p, ensure_ascii=False)))
            if n[0] % 20 == 0:
                log.flush()
    except Exception:
        pass


d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
p = d.attach(pid)
s = p.create_script(js)
s.on('message', onm)
s.load()
print('armed, holding %ds' % secs, flush=True)
time.sleep(secs)
log.close()
print('watch done, events %d' % n[0], flush=True)
