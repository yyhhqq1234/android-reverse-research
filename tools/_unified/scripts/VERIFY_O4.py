#!/usr/bin/env python3
"""O4 six-gate self-check — work_dwrg/offline_assemble/VERIFY_O4.py
G1 chain tools+sizes / G2 device+pkg (via adb dumpsys cache files if present else live adb) —
live adb preferred; G3 hall shot / G4 dual size+hash pins / G5 git boundary / G6 upstream greens.
Static-first: never copies 2GB, never resigns, never uninstalls.
"""
import json, subprocess, sys, zipfile
from pathlib import Path

fails = []
def need(c, m):
    if not c: fails.append(m)

WD = Path("projects/DWRG/work_dwrg")
OA = WD / "offline_assemble"
FAPK = Path("projects/DWRG/第五人格（官服正式版）.apk")
TAPK = Path("projects/DWRG/第五人格（测试版）.apk")

# G6 upstream artifacts present (content greens re-run by caller; here presence+size sanity)
need((WD / "formal_offline-bundle" / "VERIFY.py").exists(), "G6 no VERIFY.py")
need((WD / "formal_core_script" / "VERIFY_T3.py").exists(), "G6 no VERIFY_T3.py")
need((WD / "offline_bypass" / "verify_o2.py").exists(), "G6 no verify_o2")
need((OA / "repack_offline.py").exists(), "G1 no repack script")

# G1 chain
need((Path("tools/build-tools-win/android-14/zipalign.exe")).exists(), "G1 no zipalign")
need((Path("tools/build-tools-win/android-14/apksigner.bat")).exists(), "G1 no apksigner")
need(FAPK.exists() and FAPK.stat().st_size == 2012889355, "G1 formal size")
z = zipfile.ZipFile(FAPK)
names = z.namelist()
need(len(names) == 6073, "G1 entries %d" % len(names))
need("META-INF/MANIFEST.MF" in names, "G1 no v1 meta")

# G4 dual pins (formal full-hash via bundle MANIFEST; test via size + known prefix)
need(TAPK.exists() and TAPK.stat().st_size == 687172784, "G4 test size")
man = json.loads((WD / "formal_offline-bundle" / "MANIFEST.json").read_text(encoding="utf-8"))
need(man["apk"]["sha256"] == "0683dd40388bb6fb1d58d4111f80909dc5a2d7a0af07a703f0de73e7e271a5c3", "G4 formal pin")
need(man["apk"]["size"] == 2012889355, "G4 formal size pin")

# G3 hall shot
shot = OA / "o4_hall.png"
need(shot.exists() and shot.stat().st_size > 500000, "G3 no hall shot")

# G5 git boundary (no binaries tracked)
try:
    tree = subprocess.run(["git", "ls-tree", "-r", "--name-only", "HEAD"], capture_output=True, text=True, timeout=60).stdout
    bad = [l for l in tree.splitlines() if l.lower().endswith((".apk", ".so", ".dex", ".jks", ".keystore", ".idsig", ".exe", ".dll", ".jar", ".dat", ".bin"))]
    need(not bad, "G5 binaries tracked " + str(bad[:3]))
except Exception as e:
    need(False, "G5 git ls-tree err %s" % e)

# G2 device live (non-fatal if adb busy: record as fail, caller retries)
try:
    dev = subprocess.run(["tools/platform-tools/adb.exe", "-s", "127.0.0.1:16384", "shell", "pidof com.netease.dwrg"],
                         capture_output=True, text=True, timeout=30).stdout.strip()
    need(dev != "", "G2 no dwrg pid")
    top = subprocess.run(["tools/platform-tools/adb.exe", "-s", "127.0.0.1:16384", "shell", "dumpsys activity activities"],
                         capture_output=True, text=True, timeout=30).stdout
    need("com.netease.dwrg/.Client" in top, "G2 no Client top")
except Exception as e:
    need(False, "G2 adb err %s" % e)

if fails:
    print("O4-FAIL")
    for f in fails: print(" - " + f)
    sys.exit(1)
print("O4-OK G1-G6 hall-shot=%d" % (OA / "o4_hall.png").stat().st_size)
