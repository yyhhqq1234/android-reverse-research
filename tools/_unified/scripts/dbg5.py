#!/usr/bin/env python3
import frida, time
d = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
s = d.attach(21258)
js = '''
try {
  var oa = DebugSymbol.fromName('openat').address;
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
var cands = ['JVM_DefineClassWithSource', 'JVM_DefineClassWithSourceAndResolve',
  '_ZN3art3JNI11DefineClassEP7_JNIEnvPKcP8_jobjectPKhj',
  '_ZN3art7DexFile10OpenMemoryEPKhm',
  'DexFile_openInMemoryDexFile'];
for (var i = 0; i < cands.length; i++) {
  try { send('[sym] ' + cands[i] + ' = ' + DebugSymbol.fromName(cands[i]).address); }
  catch (e) { send('[sym] ' + cands[i] + ' MISSING'); }
}
'''
sc = s.create_script(js)
sc.on('message', lambda m, p: print('[js]', m.get('payload', m)))
sc.load()
time.sleep(120)
print('dbg5 done')
