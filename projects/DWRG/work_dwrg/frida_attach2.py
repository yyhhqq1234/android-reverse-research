import frida, pathlib, time, json
mgr = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
proc = mgr.attach(2713)
print('attached 2713')
js = pathlib.Path(r'D:\APK-Reverse\projects\DWRG\work_dwrg\hook_login.js').read_text(encoding='utf-8')
script = proc.create_script(js)
def on_msg(m, d):
    print('[FRIDA_MSG] ' + json.dumps(m, ensure_ascii=False)[:2000])
script.on('message', on_msg)
script.load()
print('script loaded, wait 15s')
time.sleep(15)
print('done')
