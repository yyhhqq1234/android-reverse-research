#!/usr/bin/env python3
import frida, time
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
s = d.attach(21258)
js = '''
try {
  var oa = Module.getExportByName(null, 'openat');
  send('openat=' + oa);
  Interceptor.attach(oa, {
    onEnter: function (a) {
      try { this.p = Memory.readUtf8String(a[1]); } catch (e) { this.p = ''; }
    },
    onLeave: function (r) {
      if (this.p && /dex|jar|apk|zip|jiagu|jgapp|havefun|plugin|oat|vdex/i.test(this.p)) send('[file] ' + this.p);
    }
  });
  send('armed-ok');
} catch (e) { send('ERR ' + e); }
'''
sc = s.create_script(js)
sc.on('message', lambda m, p: print('[js]', m.get('payload', m)))
sc.load()
time.sleep(45)
print('dbg2 done')
