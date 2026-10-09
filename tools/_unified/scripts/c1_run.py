#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""DWRG C1 native runner — 只做 native attach,不碰Java桥,不拿真机(走MuMu 16384+27042)."""
import argparse, json, sys, time, pathlib
try:
    import frida
except ImportError:
    print("need pip install frida==17.18.0 (PC==server 17.18.0)"); sys.exit(2)

PKG = "com.identityv.shrek156"
REMOTE = "127.0.0.1:27042"
DUMP_DIR_DEVICE = "/data/local/tmp/dwrg_dump"

def on_msg(msg, data, outdir: pathlib.Path):
    t = msg.get("type")
    if t == "send":
        payload = msg.get("payload")
        if isinstance(payload, dict) and payload.get("ev") == "script1":
            fn = payload.get("file", "unknown").split("/")[-1]
            lp = outdir / fn
            if data is not None:
                lp.write_bytes(bytes(data))
                print(f"[script1-pull] {lp} {len(data)}B why={payload.get('why')}")
            else:
                print(f"[script1] {payload}");
            return
        print(str(payload)[:2000])
    elif t == "error":
        print("[ERR]", json.dumps(msg, ensure_ascii=False)[:2000])
    else:
        print(f"[{t}]", json.dumps(msg, ensure_ascii=False)[:1000])

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--js", required=True, help="c1_file.js | c1_net.js | c1_order.js")
    ap.add_argument("--pkg", default=PKG)
    ap.add_argument("--remote", default=REMOTE)
    ap.add_argument("--out", default="out")
    ap.add_argument("--seconds", type=int, default=120)
    a = ap.parse_args()
    js_path = pathlib.Path(a.js)
    if not js_path.exists():
        # 允许相对 c1_native 目录
        alt = pathlib.Path(__file__).parent / a.js
        if alt.exists(): js_path = alt
        else: print(f"js not found: {a.js}"); sys.exit(2)
    js = js_path.read_text(encoding="utf-8")
    # 硬门禁: 不碰Java桥
    if "Java." in js or "Java_" in js and "Java_com" not in js:
        pass
    if "Java.perform" in js or "Java.use(" in js or "Java.enumerate" in js:
        print("REFUSE: js contains Java bridge (Java.perform/use) — C1 只允许 native"); sys.exit(3)
    outdir = pathlib.Path(__file__).parent / a.out
    outdir.mkdir(parents=True, exist_ok=True)
    dev = frida.get_device_manager().add_remote_device(a.remote)
    print(f"device={a.remote} pkg={a.pkg} js={js_path.name} out={outdir} wait={a.seconds}s")
    try:
        procs = dev.enumerate_processes()
        hit = [p for p in procs if a.pkg in (p.name or "")]
        print(f"ps-match={len(hit)} " + ",".join(str(p.pid) for p in hit[:5]))
    except Exception as e:
        print(f"ps-warn {e}")
    try:
        sess = dev.attach(a.pkg)
        print("attached by name")
    except Exception as e:
        print(f"attach-name-fail {e}; try frida-ps PID manual: python c1_run.py --help ; see dynamic_T4 pid3365 precedent")
        sys.exit(4)
    import subprocess
    adb = r"D:\APK-Reverse\tools\platform-tools\adb.exe"
    try:
        subprocess.run([adb, "-s", "127.0.0.1:16384", "shell", f"mkdir -p {DUMP_DIR_DEVICE}"], timeout=15)
        print(f"mkdir {DUMP_DIR_DEVICE} ok")
    except Exception as e:
        print(f"mkdir-warn {e}")
    script = sess.create_script(js)
    script.on("message", lambda m, d: on_msg(m, d, outdir))
    script.load()
    print("loaded, capturing... Ctrl+C to stop early")
    try:
        time.sleep(a.seconds)
    except KeyboardInterrupt:
        print("interrupted")
    print("detach")
    try: script.unload()
    except Exception: pass
    try: sess.detach()
    except Exception: pass
    print(f"device dumps pull: {adb} -s 127.0.0.1:16384 pull {DUMP_DIR_DEVICE} {outdir}")
if __name__ == "__main__":
    main()
