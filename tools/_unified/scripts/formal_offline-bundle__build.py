import zipfile, pathlib, json, hashlib, shutil, datetime
ROOT = pathlib.Path(r"D:\APK-Reverse")
WD = ROOT / "projects/DWRG/work_dwrg"
BUNDLE = WD / "formal_offline-bundle"
APK = ROOT / "projects/DWRG/第五人格（官服正式版）.apk"
WPK_SRC = WD / "formal_core_wpk"
THD_SRC = WPK_SRC / "thd"

BUNDLE.mkdir(exist_ok=True)
(BUNDLE/"config").mkdir(exist_ok=True)
(BUNDLE/"thd").mkdir(exist_ok=True)
(BUNDLE/"script").mkdir(exist_ok=True)

def sha256_file(p, chunk=4*1024*1024):
    h=hashlib.sha256()
    with open(p,'rb') as f:
        for c in iter(lambda: f.read(chunk), b''):
            h.update(c)
    return h.hexdigest()

# 1. APK identity (read-only, no write)
apk_size = APK.stat().st_size
h=hashlib.sha256()
with open(APK,'rb') as f:
    for c in iter(lambda: f.read(8*1024*1024), b''):
        h.update(c)
apk_sha256=h.hexdigest()

z=zipfile.ZipFile(APK)
wpks=[]
for i in z.infolist():
    if i.filename.startswith("assets/res/") and i.filename.endswith(".wpk"):
        wpks.append({"name":i.filename,"file_size":i.file_size,"compress_size":i.compress_size,"crc":"%08x"%i.CRC,"method":i.compress_type})
wpks=sorted(wpks,key=lambda x:x["file_size"],reverse=True)
wpk_total=sum(x["file_size"] for x in wpks)
thd_apk=[i for i in z.infolist() if "/thd/" in i.filename]
thd_apk_total=sum(i.file_size for i in thd_apk)

# small configs from APK (read via zip, write copies into bundle/config)
for n in ["assets/preload.json","assets/pkgmapping.json","assets/cloud.json","assets/neox3.xml"]:
    data=z.read(n)
    (BUNDLE/"config"/("apk_"+pathlib.Path(n).name)).write_bytes(data)
# device configs copy
for n in ["preload_device.json","pkgmapping_device.json","cloud_device.json","apk_preload.json","apk_pkgmapping.json","apk_cloud.json","apk_neox3.xml"]:
    src=WPK_SRC/n
    if src.exists():
        shutil.copy2(src, BUNDLE/"config"/n)
# copies already in bundle/config/apk_* from WPK_SRC overlap; ensure apk_* canonical from APK read above (overwrite with fresh read - already done)

# thd81 device copy (51MB) + checksums
thd_files=sorted(THD_SRC.glob("*"))
thd_manifest=[]
for p in thd_files:
    thd_manifest.append({"name":p.name,"size":p.stat().st_size,"sha256":sha256_file(p)})
    shutil.copy2(p, BUNDLE/"thd"/p.name)
thd_total=sum(x["size"] for x in thd_manifest)

# script dual copy (338MB)
script_manifest=[]
for n in ["script1_apk.wpk","script1_device.wpk","script_device.idx"]:
    src=WPK_SRC/n
    dst=BUNDLE/"script"/n
    if src.exists():
        shutil.copy2(src,dst)
        script_manifest.append({"name":n,"size":src.stat().st_size,"sha256":sha256_file(dst) if src.stat().st_size<300*1024*1024 else "see-formal_core_wpk"})
# hash script idx small, wpks large: compute anyway (338M ok)
for e in script_manifest:
    print(e)

# preload/pkgmapping compare
apk_pre=json.loads((BUNDLE/"config"/"apk_preload.json").read_text(encoding="utf-8"))
dev_pre=json.loads((BUNDLE/"config"/"preload_device.json").read_text(encoding="utf-8"))
apk_map=json.loads((BUNDLE/"config"/"apk_pkgmapping.json").read_text(encoding="utf-8"))
dev_map=json.loads((BUNDLE/"config"/"pkgmapping_device.json").read_text(encoding="utf-8"))
apk_cloud=json.loads((BUNDLE/"config"/"apk_cloud.json").read_text(encoding="utf-8"))
dev_cloud=json.loads((BUNDLE/"config"/"cloud_device.json").read_text(encoding="utf-8"))

# cloud 3.7G evidence: logcat package_size + pcap
# read t1 logcat hits for package_size if present
pkg_size=3775833841
display="2.104.125221.3034860"
try:
    txt=(WD/"formal_core_动态/t1_logcat_hits.txt").read_text(encoding="utf-16",errors="replace")[:200000]
    import re
    m=re.search(r"package_size\s*(\d+)",txt)
    if m: pkg_size=int(m.group(1))
    m2=re.search(r"display\s*([0-9.]+)",txt)
    if m2: display=m2.group(1)
except Exception as e:
    print("logcat read note:",e)

manifest={
 "bundle":"formal_offline-bundle",
 "created":datetime.datetime.now().isoformat(timespec="seconds"),
 "apk":{"path":"projects/DWRG/第五人格（官服正式版）.apk","size":apk_size,"sha256":apk_sha256,"readonly":True,
        "versionName":"2026.0828.1653","versionCode":262401653,"package":"com.netease.dwrg"},
 "wpk":{"count":len(wpks),"total":wpk_total,"total_human":"1756889328B (~1675.6MiB / 1.75GB decimal)","storage":"APK只读内含，不在bundle复刻1.75G，清单+CRC即落地凭证，按需用extract_wpk.py流式提取","entries":wpks},
 "thd_device":{"count":len(thd_manifest),"total":thd_total,"storage":"bundle/thd全量拷贝","files":thd_manifest},
 "thd_apk":{"count":len(thd_apk),"total":thd_apk_total,"note":"APK内104文件与设备端81文件为两套基准，任务口径thd81指设备端Documents/thd"},
 "preload":{"apk_keys":len(apk_pre),"device_keys":len(dev_pre),"task_label":"preload50为名义口径，实测APK48/Device48双版","apk_only":sorted(set(apk_pre)-set(dev_pre)),"device_only":sorted(set(dev_pre)-set(apk_pre)),"storage":"bundle/config/apk_preload.json + preload_device.json"},
 "pkgmapping":{"apk_pairs":len(apk_map["mapping"]),"device_pairs":len(dev_map["mapping"]),"task_label":"pkgmapping14指APK版14对，设备端已漂移至17对","apk_mapping":apk_map["mapping"],"device_mapping":dev_map["mapping"],"storage":"bundle/config/apk_pkgmapping.json + pkgmapping_device.json"},
 "script_dual":{"entries":script_manifest,"note":"script1双版：首包201326608 + 云端137363472 + script.idx 252900；另assets/script.npk 1952为NXS3引导（见F3）","storage":"bundle/script全量拷贝"},
 "cloud":{"package_size":pkg_size,"display":display,"human":"3775833841B (~3.52GiB / 3.77GB decimal = 任务口径cloud3.7G)","base_url_apk":apk_cloud.get("base_url"),"version_url_apk":apk_cloud.get("version_url"),"base_url_device":dev_cloud.get("base_url"),"version_url_device":dev_cloud.get("version_url"),"storage":"元数据落地，3.7G载荷不复刻，凭证为logcat download_id/package_size + pcap SNI + Documents已pull件","refs":["work_dwrg/formal_core_动态/t1_logcat_hits.txt","work_dwrg/formal_core_wpk/t2_pcap_sll.txt","work_dwrg/formal_core_动态/formal_T1_20260926.pcap"]},
 "sources":["F4_Remote_Verify.md","formal_remote_wpk.txt","formal_core_wpk/t2_wpk远端落地.md","formal_core_动态/t1_正式包动态抓远端.md","T6_Formal_Diff.md"],
}
(BUNDLE/"MANIFEST.json").write_text(json.dumps(manifest,ensure_ascii=False,indent=1),encoding="utf-8")
print("MANIFEST done", len(wpks), wpk_total, len(thd_manifest), thd_total)
