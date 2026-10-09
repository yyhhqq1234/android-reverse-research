#!/usr/bin/env python3
"""O4 repack chain — work_dwrg/offline_assemble/repack_offline.py
offline package recipe without touching the 2GB original by default.
--check: dry-run (tools + inject list + sizes, no 2GB copy, exit 0 on ready)
--execute: full copy+inject+zipalign+sign (needs ~6GB free + local keystore, NOT run in DoD round)
"""
import sys, zipfile
from pathlib import Path

WD = Path("projects/DWRG/work_dwrg")
APK = Path("projects/DWRG/第五人格（官服正式版）.apk")
BT = Path("tools/build-tools-win/android-14")
OB = WD / "offline_bypass" / "stubs"
CFG = WD / "formal_offline-bundle" / "config"

INJECT = [
    ("assets/offline/server_list.json", OB / "server_list.json"),
    ("assets/offline/drpf.json", OB / "drpf.json"),
    ("assets/offline/unisdk_update.json", OB / "unisdk_update.json"),
    ("assets/offline/webview_whitelist.json", OB / "webview_whitelist.json"),
    ("assets/offline/pay.json", OB / "pay.json"),
]

def check():
    assert APK.exists(), "formal apk missing"
    assert APK.stat().st_size == 2012889355, "formal size drift %d" % APK.stat().st_size
    assert (BT / "zipalign.exe").exists(), "zipalign missing"
    assert (BT / "apksigner.bat").exists(), "apksigner missing"
    for arc, src in INJECT:
        assert src.exists(), "stub missing " + str(src)
    cfgs = list(CFG.glob("*.json")) + list(CFG.glob("*.xml"))
    assert len(cfgs) >= 4, "bundle config thin %d" % len(cfgs)
    z = zipfile.ZipFile(APK)
    names = z.namelist()
    assert len(names) == 6073, "entries %d != 6073" % len(names)
    assert "META-INF/MANIFEST.MF" in names, "no v1 meta"
    print("REPACK-CHECK apk=2012889355 entries=6073 inject=%d configs=%d zipalign+apksigner present" % (len(INJECT), len(cfgs)))

def execute(out="offline_dwrg.apk"):
    import shutil, subprocess
    check()
    print("copy 2GB ...")
    shutil.copyfile(APK, out)
    print("inject (storall, recompress later by zipalign -f)...")
    import zipfile as zf
    with zf.ZipFile(out, "a", zf.ZIP_STORED) as z:
        for arc, src in INJECT:
            z.writestr(arc, src.read_bytes())
    print("next: zipalign -f 4 %s aligned.apk && apksigner sign --ks <local-test.jks> --v1-signing-enabled true --v2-signing-enabled true aligned.apk" % out)
    print("note: original 9ac964dc sig WILL break (expected); verify new pkg v1+v2 green, keep original hash pinned.")

if __name__ == "__main__":
    if "--execute" in sys.argv:
        execute()
    else:
        check()
