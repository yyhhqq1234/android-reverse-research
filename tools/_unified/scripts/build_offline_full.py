#!/usr/bin/env python3
"""t1 full offline build — copy+inject(stubs+bundle)+zipalign+v1v2sign+verify.
All writes under work_dwrg/offline_assemble/ ; formal APK read-only.
Key: reuse local BREM debug.jks (android-debug, pass via env DWRG_KEYSTORE_PASS).
"""
import hashlib, json, os, shutil, subprocess, sys, zipfile
from pathlib import Path

CWD = Path(".").resolve()
WD = Path("projects/DWRG/work_dwrg")
OA = WD / "offline_assemble"
FAPK = Path("projects/DWRG/第五人格（官服正式版）.apk")
BT = Path("tools/build-tools-win/android-14")
OB = WD / "offline_bypass" / "stubs"
CFG = WD / "formal_offline-bundle" / "config"
KS = Path("projects/BREM/debug.jks")
RAW = OA / "offline_dwrg_raw.apk"
ALIGNED = OA / "offline_dwrg_aligned.apk"
EVID = OA / "t1_evidence.json"

KSPASS = os.environ.get("DWRG_KEYSTORE_PASS", "")  # local debug-key pass comes from env; never hardcode

def sha256(p, n=1<<20):
    h = hashlib.sha256()
    with open(p, "rb") as f:
        while True:
            b = f.read(n)
            if not b: break
            h.update(b)
    return h.hexdigest().upper()

def run(cmd, timeout=600):
    print("+ " + " ".join(str(c) for c in cmd), flush=True)
    r = subprocess.run([str(c) for c in cmd], capture_output=True, text=True, timeout=timeout)
    print(r.stdout[-4000:], flush=True)
    print(r.stderr[-4000:], flush=True)
    return r

def main():
    ev = {}
    # 0 pins
    fsize = FAPK.stat().st_size
    fhash = sha256(FAPK)
    print(f"ORIG size={fsize} sha256={fhash}", flush=True)
    assert fsize == 2012889355, f"formal size drift {fsize}"
    assert fhash == "0683DD40388BB6FB1D58D4111F80909DC5A2D7A0AF07A703F0DE73E7E271A5C3", "formal hash drift"
    ev["orig_size"] = fsize
    ev["orig_sha256"] = fhash
    # 1 reuse repack_offline check+copy+stubs
    sys.path.insert(0, str(OA.resolve()))
    import repack_offline as ro
    ro.check()
    print("copy 2GB -> %s ..." % RAW, flush=True)
    if RAW.exists():
        RAW.unlink()
    shutil.copyfile(FAPK, RAW)
    print("inject stubs5 (STORED) ...", flush=True)
    with zipfile.ZipFile(RAW, "a", zipfile.ZIP_STORED) as z:
        for arc, src in ro.INJECT:
            z.writestr(arc, Path(src).read_bytes())
        # bundle config under assets/offline/bundle/
        cfgs = list(CFG.glob("*.json")) + list(CFG.glob("*.xml"))
        for c in cfgs:
            z.writestr("assets/offline/bundle/" + c.name, c.read_bytes())
        ev["inject_stubs"] = len(ro.INJECT)
        ev["inject_bundle"] = len(cfgs)
    print("inject done stubs=%d bundle=%d raw=%d" % (ev["inject_stubs"], ev["inject_bundle"], RAW.stat().st_size), flush=True)
    # 2 zipalign
    if ALIGNED.exists():
        ALIGNED.unlink()
    r = run([BT / "zipalign.exe", "-f", "-p", "4", RAW, ALIGNED], timeout=600)
    assert r.returncode == 0, "zipalign failed %s %s" % (r.stdout, r.stderr)
    assert ALIGNED.exists()
    ev["aligned_size"] = ALIGNED.stat().st_size
    # 3 sign v1+v2 with local debug key
    assert KS.exists(), "keystore missing"
    r = run([BT / "apksigner.bat", "sign", "--ks", KS, "--ks-pass", "pass:"+KSPASS,
             "--key-pass", "pass:"+KSPASS,
             "--ks-key-alias", "androiddebugkey",
             "--v1-signing-enabled", "true", "--v2-signing-enabled", "true", ALIGNED], timeout=600)
    # path record: --ks-pass:xxx inline-colon form unsupported in this build-tools rev; use --ks-pass pass:xxx
    if r.returncode != 0:
        print("env-pass sign failed, retry with CHANGE_ME placeholder", flush=True)
        r = run([BT / "apksigner.bat", "sign", "--ks", KS, "--ks-pass", "pass:" + (KSPASS or "CHANGE_ME"), "--key-pass", "pass:" + (KSPASS or "CHANGE_ME"),
                 "--ks-key-alias", "androiddebugkey",
                 "--v1-signing-enabled", "true", "--v2-signing-enabled", "true", ALIGNED], timeout=600)
    assert r.returncode == 0, "apksigner sign failed"
    ev["signed_size"] = ALIGNED.stat().st_size
    ev["signed_sha256"] = sha256(ALIGNED)
    # 4 verify
    r = run([BT / "apksigner.bat", "verify", "--verbose", ALIGNED], timeout=300)
    ev["verify_out"] = (r.stdout + r.stderr)[-2000:]
    assert r.returncode == 0, "verify failed"
    assert "Verified using v1 scheme (JAR signing): true" in (r.stdout + r.stderr), "v1 not true"
    assert "Verified using v2 scheme (APK Signature Scheme v2): true" in (r.stdout + r.stderr), "v2 not true"
    r = run([BT / "zipalign.exe", "-c", "-p", "4", ALIGNED], timeout=300)
    ev["align_check"] = r.returncode
    assert r.returncode == 0, "align check failed"
    # entries
    z = zipfile.ZipFile(ALIGNED)
    names = z.namelist()
    ev["entries"] = len(names)
    ev["has_stubs"] = all(a in names for a, s in ro.INJECT)
    ev["has_bundle"] = any(n.startswith("assets/offline/bundle/") for n in names)
    assert ev["has_stubs"] and ev["has_bundle"], "inject missing"
    # 5 orig still readonly
    assert FAPK.stat().st_size == 2012889355 and sha256(FAPK) == fhash, "orig touched!"
    ev["orig_pinned"] = True
    EVID.write_text(json.dumps(ev, indent=2, ensure_ascii=False), encoding="utf-8")
    print("T1-OK " + json.dumps(ev, ensure_ascii=False), flush=True)

if __name__ == "__main__":
    # ensure env for apksigner fallback
    if "DWRG_KEYSTORE_PASS" not in os.environ:
        os.environ["DWRG_KEYSTORE_PASS"] = KSPASS
    main()
