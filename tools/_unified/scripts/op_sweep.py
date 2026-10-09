import frida, time, json, sys, os
pid = int(sys.argv[1]) if len(sys.argv) > 1 else 2559
rounds = int(sys.argv[2]) if len(sys.argv) > 2 else 12
gap = int(sys.argv[3]) if len(sys.argv) > 3 else 15
base = os.path.dirname(os.path.abspath(__file__))
js = open(os.path.join(base, 'op_bt3.js'), encoding='utf-8').read()
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
for r in range(rounds):
    try:
        p = d.attach(pid)
        got = []
        def onm(m, dd):
            try:
                got.extend(m['payload'].get('lines', []))
            except Exception:
                pass
        s = p.create_script(js)
        s.on('message', onm)
        s.load()
        time.sleep(8)
        open(os.path.join(base, 'op_sweep_%02d.txt' % r), 'w', encoding='utf-8').write('\n'.join(got))
        print('round %d saved %d' % (r, len(got)), flush=True)
        p.detach()
    except Exception as e:
        print('round %d ERR %s' % (r, str(e)[:100]), flush=True)
    time.sleep(gap)
print('sweep done', flush=True)
