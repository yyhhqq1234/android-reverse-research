#!/usr/bin/env python3
import frida, subprocess, time
d = frida.get_device_manager().add_remote_device("127.0.0.1:27042")
pid = int(subprocess.run(["tools/platform-tools/adb.exe","-s","127.0.0.1:16384","shell","pidof com.netease.dwrg"],capture_output=True,text=True,timeout=30).stdout.strip().split()[0])
print("pid=%d" % pid, flush=True)
s = d.attach(pid)
js = "send('hello-pid'); try { Java.perform(function(){ send('java-ok'); }); } catch(e) { send('java-err:'+e.message); }"
sc = s.create_script(js)
def on_msg(m, dat):
    print("MSG %s %s" % (m, dat), flush=True)
sc.on("message", on_msg)
sc.load()
time.sleep(8)
s.detach()
print("PROBE-DONE", flush=True)
