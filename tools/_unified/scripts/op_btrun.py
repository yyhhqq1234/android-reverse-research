import frida, time, sys
PID = int(sys.argv[1]) if len(sys.argv) > 1 else 16588
mgr = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
proc = mgr.attach(PID)
log = open('D:/APK-Reverse/projects/DWRG/work_dwrg/op_btlog.txt', 'a')
def on_msg(m, d):
    log.write(repr(m.get('payload', {}))[:4000] + '\n')
    log.flush()
s = proc.create_script(open('D:/APK-Reverse/projects/DWRG/work_dwrg/op_bt.js').read())
s.on('message', on_msg)
s.load()
time.sleep(15)
log.write('=== bt done ===\n')
