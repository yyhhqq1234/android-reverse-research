#!/usr/bin/env python3
import frida, time
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
s = d.attach(21258)
sc = s.create_script('send("arch=" + Process.arch);')
sc.on('message', lambda m, p: print('[js]', m))
sc.load()
time.sleep(5)
print('debug done')
