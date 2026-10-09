#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""DWRG FORMAL runner — com.netease.dwrg arm64,只做native attach,不碰Java桥."""
import argparse, json, sys, time, pathlib
try:
    import frida
except ImportError:
    print("need pip install frida==17.18.0"); sys.exit(2)
PKG = "com.netease.dwrg"
REMOTE = "127.0.0.1:27042"
DEV_DIR = "/data/local/tmp/dwrg_dump_formal"
def on_msg(msg, data, outdir):
    t = msg.get("type")
    if t == "send":
        p = msg.get("payload")
        if isinstance(p, dict) and p.get("ev") == "script1":
            fn = p.get("file", "unknown").split("/")[-1]
            lp = outdir / fn
            if data is not None:
                lp.write_bytes(bytes(data)); print(f"[script1-pull] {lp} {len(data)}B why={p.get('why')}")
            else: print(f"[script1] {p}")
            return
        print(str(p)[:2000])
    elif t == "error": print("[ERR]", json.dumps(msg, ensure_ascii=False)[:2000])
    else: print(f"[{t}]", json.dumps(msg, ensure_ascii=False)[:800])
def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--js", required=True)
    ap.add_argument("--pkg", default=PKG)
    ap.add_argument("--remote", default=REMOTE)
    ap.add_argument("--out", default="out_formal")
    ap.add_argument("--seconds", type=int, default=180)
    ap.add_argument("--pid", type=int, default=0)
    a = ap.parse_args()
    jp = pathlib.Path(a.js)
    if not jp.exists():
        alt = pathlib.Path(__file__).parent / a.js
        if alt.exists(): jp = alt
        else: print(f"js not found {a.js}"); sys.exit(2)
    js = jp.read_text(encoding="utf-8")
    if "Java.perform" in js or "Java.use(" in js or "Java.enumerate" in js:
        print("REFUSE: Java bridge present"); sys.exit(3)
    outdir = pathlib.Path(__file__).parent / a.out
    outdir.mkdir(parents=True, exist_ok=True)
    dev = frida.get_device_manager().add_remote_device(a.remote)
    print(f"device={a.remote} pkg={a.pkg} js={jp.name} out={outdir}")
    hit = []
    try:
        ps = dev.enumerate_processes()
        hit = [p for p in ps if a.pkg in (p.name or "")]
        print("ps-match=" + ",".join(str(p.pid) for p in hit[:5]) + f" ({len(hit)})")
    except Exception as e: print(f"ps-warn {e}")
    sess = None
    if a.pid:
        try: sess = dev.attach(a.pid); print(f"attached by pid {a.pid}")
        except Exception as e: print(f"pid-attach-fail {e}")
    if sess is None and hit:
        try: sess = dev.attach(hit[0].pid); print(f"attached by ps-pid {hit[0].pid}")
        except Exception as e: print(f"ps-pid-attach-fail {e}")
    if sess is None:
        try: sess = dev.attach(a.pkg); print("attached by name")
        except Exception as e: print(f"attach-fail {e}; launch formal to main gate first"); sys.exit(4)
    import subprocess
    adb = r"D:\APK-Reverse\tools\platform-tools\adb.exe"
    try: subprocess.run([adb, "-s", "127.0.0.1:16384", "shell", f"mkdir -p {DEV_DIR}"], timeout=15); print(f"mkdir {DEV_DIR} ok")
    except Exception as e: print(f"mkdir-warn {e}")
    s = sess.create_script(js)
    s.on("message", lambda m, d: on_msg(m, d, outdir))
    s.load(); print("loaded, capturing...")
    try: time.sleep(a.seconds)
    except KeyboardInterrupt: print("interrupted")
    try: s.unload()
    except Exception: pass
    try: sess.detach()
    except Exception: pass
    print(f"pull: {adb} -s 127.0.0.1:16384 pull {DEV_DIR} {outdir}")
if __name__ == "__main__": main()
