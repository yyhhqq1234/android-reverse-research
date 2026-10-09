#!/usr/bin/env python3
"""t2 frida attach collector — attach com.netease.dwrg, load offline_bypass.js, collect 25s."""
import frida, pathlib, time, sys
JS = pathlib.Path("projects/DWRG/work_dwrg/offline_bypass/offline_bypass.js").read_text(encoding="utf-8")
LOG = pathlib.Path("projects/DWRG/work_dwrg/offline_assemble/t2_frida.log")
msgs = []
def on_msg(m, d):
    line = "[%s] %s" % (m.get("type"), (m.get("payload") or d))
    print(line, flush=True)
    msgs.append(line)
mgr = frida.get_device_manager()
dev = mgr.add_remote_device("127.0.0.1:27042")
# main is arm64-translated: enumerate_processes misses it (only PushService listed).
# path record: attach by PID from adb instead of name enumeration.
import subprocess
pid = int(subprocess.run(["tools/platform-tools/adb.exe","-s","127.0.0.1:16384","shell","pidof com.netease.dwrg"],
    capture_output=True, text=True, timeout=30).stdout.strip().split()[0])
print("target pid=%d" % pid, flush=True)
sess = dev.attach(pid)
scr = sess.create_script(JS)
scr.on("message", on_msg)
scr.load()
print("loaded, collecting 25s ...", flush=True)
time.sleep(25)
sess.detach()
LOG.write_text("\n".join(msgs), encoding="utf-8")
print("FRIDA-OK n=%d log=%s" % (len(msgs), LOG), flush=True)
