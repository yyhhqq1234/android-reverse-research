import frida, sys, time
DEV = '127.0.0.1:27042'
PID = int(sys.argv[1]) if len(sys.argv) > 1 else 16588
BASE, SIZE = 0x7e2a9ac2b000, 0xb11000
CH = 0x20000
mgr = frida.get_device_manager().add_remote_device(DEV)
proc = mgr.attach(PID)
bufs = {}
done = {'n': 0}
JS = open('D:/APK-Reverse/projects/DWRG/work_dwrg/op_dump.js').read()
def on_msg(m, d):
    p = m.get('payload', {})
    if 'i' in p and d is not None:
        bufs[p['i']] = bytes(d)
    if p.get('done'):
        done['n'] = p['n']
    if 'err' in p:
        print('ERR', p)
s = proc.create_script(JS)
s.on('message', on_msg)
s.load()
t0 = time.time()
while done['n'] == 0 and time.time() - t0 < 120:
    time.sleep(1)
print('got', len(bufs), '/', done['n'])
if done['n'] and len(bufs) == done['n']:
    out = b''.join(bufs[i] for i in range(done['n']))
    open('D:/APK-Reverse/projects/DWRG/work_dwrg/op_dwrg_data.bin', 'wb').write(out)
    print('wrote', len(out))
