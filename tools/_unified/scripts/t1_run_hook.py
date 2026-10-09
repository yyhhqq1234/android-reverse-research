import frida, time, sys
OUT = r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_动态\t1_frida_hook.log"
JS = open(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_动态\t1_cloud_thd_order_hook.js", encoding="utf-8").read()
mgr = frida.get_device_manager().add_remote_device("127.0.0.1:27042")
# attach by current dwrg pid (dynamic, fallback 4345)
import subprocess
def cur_pid():
    try:
        o = subprocess.check_output([r"D:\APK-Reverse\tools\platform-tools\adb.exe","-s","127.0.0.1:16384","shell","pidof com.netease.dwrg"], text=True).strip()
        return int(o.split()[0])
    except Exception:
        return 4345
PID = cur_pid()
print("target pid", PID)
try:
    sess = mgr.attach(PID)
except Exception as e:
    print("attach pid fail:", e)
    procs = mgr.enumerate_processes()
    cand = [p for p in procs if "dwrg" in p.name.lower() or p.pid==PID]
    print(cand)
    sess = mgr.attach(cand[0].pid)
fout = open(OUT, "w", encoding="utf-8")
def on_msg(m, d):
    try:
        if m["type"]=="send":
            fout.write(str(m["payload"])+"\n"); fout.flush()
        else:
            fout.write(str(m)+"\n"); fout.flush()
    except Exception as e:
        fout.write("logerr "+str(e)+"\n")
try:
    script = sess.create_script(JS, runtime="v8")
except TypeError:
    script = sess.create_script(JS)
script.on("message", on_msg)
script.load()
print("loaded, capture 180s")
time.sleep(180)
fout.close()
print("done")
