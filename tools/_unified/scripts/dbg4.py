#!/usr/bin/env python3
import frida, time
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
s = d.attach(21258)
js = '''
send('findExportByName=' + (typeof Module.findExportByName));
send('getExportByName=' + (typeof Module.getExportByName));
send('enumerateSymbols=' + (typeof Module.enumerateSymbols));
send('enumerateExports=' + (typeof Module.enumerateExports));
send('Interceptor=' + (typeof Interceptor.attach));
send('frida-version=' + Frida.version);
'''
sc = s.create_script(js)
sc.on('message', lambda m, p: print('[js]', m.get('payload', m)))
sc.load()
time.sleep(8)
print('dbg4 done')
