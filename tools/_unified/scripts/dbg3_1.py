#!/usr/bin/env python3
import frida, time
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
s = d.attach(21258)
js = '''
try {
  var oa = Module.findExportByName(null, 'openat');
  if (oa === null) { var l = Module.findExportByName('libc.so', 'openat'); oa = l; }
  send('openat=' + oa);
  Interceptor.attach(oa, {
    onEnter: function (a) {
      try { this.p = Memory.readUtf8String(a[1]); } catch (e) { this.p = ''; }
    },
    onLeave: function (r) {
      if (this.p && /dex|jar|apk|zip|jiagu|jgapp|havefun|plugin|oat|vdex/i.test(this.p)) send('[file] ' + this.p);
    }
  });
  try {
    var syms = Module.enumerateSymbols('libart.so');
    for (var i = 0; i < syms.length; i++) {
      if (syms[i].name.indexOf('DefineClass') !== -1) send('[art] ' + syms[i].name + ' ' + syms[i].address);
    }
  } catch (e) { send('artenum-err ' + e); }
  send('armed-ok');
} catch (e) { send('ERR ' + e); }
'''
sc = s.create_script(js)
sc.on('message', lambda m, p: print('[js]', m.get('payload', m)))
sc.load()
time.sleep(120)
print('dbg3 done')
