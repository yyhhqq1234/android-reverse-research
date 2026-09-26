import frida, time, json
dev = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
try:
    proc = dev.attach('com.identityv.shrek156')
    print('attached by name')
except Exception as e:
    print('attach-name-fail ' + str(e))
    proc = dev.attach(3107)
    print('attached 3107')
def on_msg(m, d):
    print('[MSG] ' + json.dumps(m, ensure_ascii=False)[:2000])
# native-only probe (no Java)
js = r"""
send('arch=' + Process.arch + ' platform=' + Process.platform);
try {
  var mods = Process.enumerateModules().filter(function(m){ return m.name.indexOf('client')>=0 || m.name.indexOf('houdini')>=0 || m.name.indexOf('libart')>=0; });
  mods.forEach(function(m){ send('mod ' + m.name + ' ' + m.base + ' sz=' + m.size); });
} catch(e){ send('enum-mod-err '+e); }
try {
  var ex = Module.enumerateExports('libclient.so');
  send('libclient exports=' + ex.length);
  ex.slice(0,20).forEach(function(e){ send('exp ' + e.name + ' ' + e.type); });
} catch(e){ send('exp-err '+e); }
try { send('JavaAvailable=' + (typeof Java !== 'undefined')); } catch(e){ send('java-check-err '+e); }
"""
script = proc.create_script(js)
script.on('message', on_msg)
script.load()
print('loaded wait 8s')
time.sleep(8)
print('done')
