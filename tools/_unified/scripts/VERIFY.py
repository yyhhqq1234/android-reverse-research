import json, pathlib, hashlib, zipfile, sys
ROOT = pathlib.Path(__file__).resolve().parents[4]
WD = ROOT / "projects/DWRG/work_dwrg"
B = WD / "formal_offline-bundle"
APK = ROOT / "projects/DWRG/第五人格（官服正式版）.apk"
ok = True
def check(name, cond, detail=""):
    global ok
    print(("PASS " if cond else "FAIL ") + name + (" | " + detail if detail else ""))
    if not cond: ok = False

M = json.loads((B/"MANIFEST.json").read_text(encoding="utf-8"))
# APK
sz = APK.stat().st_size
check("apk_size", sz==2012889355, str(sz))
h=hashlib.sha256()
with open(APK,'rb') as f:
    for c in iter(lambda: f.read(8*1024*1024), b''): h.update(c)
check("apk_sha256", h.hexdigest()=="0683dd40388bb6fb1d58d4111f80909dc5a2d7a0af07a703f0de73e7e271a5c3", h.hexdigest()[:16])
# wpk inventory vs APK
z=zipfile.ZipFile(APK)
wpks=[i for i in z.infolist() if i.filename.startswith("assets/res/") and i.filename.endswith(".wpk")]
check("wpk_count", len(wpks)==15, str(len(wpks)))
tot=sum(i.file_size for i in wpks)
check("wpk_total", tot==1756889328, str(tot))
man={e["name"]:(e["file_size"],e["crc"]) for e in M["wpk"]["entries"]}
for i in wpks:
    e=man.get(i.filename)
    if not e or e[0]!=i.file_size or e[1]!="%08x"%i.CRC:
        check("wpk_entry_"+i.filename, False, "mismatch"); break
else:
    check("wpk_entries_crc", True, "15/15")
# thd81
thd=list((B/"thd").glob("*"))
check("thd_count", len(thd)==81, str(len(thd)))
check("thd_total", sum(p.stat().st_size for p in thd)==51289828, str(sum(p.stat().st_size for p in thd)))
# spot hash 3
import hashlib as hl
spots={"builtin.thy":"*","chr_player.thy":"*","ui.thy":"*"}
mth={e["name"]:e["sha256"] for e in M["thd_device"]["files"]}
for n in ["builtin.thy","chr_player.thy","ui.thy"]:
    p=B/"thd"/n
    hh=hl.sha256(p.read_bytes()).hexdigest()
    check("thd_hash_"+n, hh==mth[n], hh[:16])
# config
for n in ["apk_preload.json","preload_device.json","apk_pkgmapping.json","pkgmapping_device.json","apk_cloud.json","cloud_device.json","apk_neox3.xml"]:
    check("config_"+n, (B/"config"/n).exists(), str((B/"config"/n).stat().st_size) if (B/"config"/n).exists() else "missing")
ap=json.loads((B/"config"/"apk_preload.json").read_text(encoding="utf-8"))
dv=json.loads((B/"config"/"preload_device.json").read_text(encoding="utf-8"))
check("preload_48_48", len(ap)==48 and len(dv)==48, f"{len(ap)}/{len(dv)}")
am=json.loads((B/"config"/"apk_pkgmapping.json").read_text(encoding="utf-8"))
dm=json.loads((B/"config"/"pkgmapping_device.json").read_text(encoding="utf-8"))
check("pkgmapping_14_17", len(am["mapping"])==14 and len(dm["mapping"])==17, f"{len(am['mapping'])}/{len(dm['mapping'])}")
# script dual
for n,s in [("script1_apk.wpk",201326608),("script1_device.wpk",137363472),("script_device.idx",252900)]:
    p=B/"script"/n
    check("script_"+n, p.exists() and p.stat().st_size==s, str(p.stat().st_size) if p.exists() else "missing")
# cloud meta
check("cloud_size", M["cloud"]["package_size"]==3775833841, str(M["cloud"]["package_size"]))
print("OVERALL", "GREEN" if ok else "RED")
sys.exit(0 if ok else 1)
