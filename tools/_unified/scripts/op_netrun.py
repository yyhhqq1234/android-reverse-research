import frida, time, sys
SECS = int(sys.argv[2]) if len(sys.argv) > 2 else 120
PID = int(sys.argv[1]) if len(sys.argv) > 1 else 16588
mgr = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
proc = mgr.attach(PID)
log = open('D:/APK-Reverse/projects/DWRG/work_dwrg/op_netlog.txt', 'a')
def on_msg(m, d):
    p = m.get('payload', {})
    log.write(repr(p) + '\n')
    log.flush()
s = proc.create_script(open('D:/APK-Reverse/projects/DWRG/work_dwrg/op_nethook.js').read())
s.on('message', on_msg)
s.load()
log.write('=== start pid=%d ===\n' % PID)
log.flush()
time.sleep(SECS)
log.write('=== stop ===\n')
