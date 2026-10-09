import frida, time, json, sys, os
jsf = sys.argv[1]
pid = int(sys.argv[2])
secs = int(sys.argv[3]) if len(sys.argv) > 3 else 20
base = os.path.dirname(os.path.abspath(__file__))
js = open(os.path.join(base, jsf), encoding='utf-8').read()
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
p = d.attach(pid)
s = p.create_script(js)
s.on('message', lambda m, dd: print(json.dumps(m.get('payload'), ensure_ascii=False)[:4000]))
s.load()
time.sleep(secs)
