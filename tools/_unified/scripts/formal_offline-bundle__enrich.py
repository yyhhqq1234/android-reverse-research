import pathlib, json, hashlib
B = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_offline-bundle")
M = json.loads((B/"MANIFEST.json").read_text(encoding="utf-8"))
M["cloud"].update({
 "download_id": "6ab78c0b421aa910f99a2b77",
 "download_method": "cloud",
 "thread_num": 6,
 "preload_tbs": ["res", "script", "release_2026_0421_nfxo", "release_2026_0421_shadercache_essl"],
 "evidence_cloud_line": "[cloud] preload tbs size 3775833841B=3600.92MB",
 "evidence_package_line": "[P1P2] package_size 3775833841 display 2.104.125221.3034860",
 "script1_apk_sha256": "d5662a3dec6478c188997192a5ad95a72a4b988ba3b53418b71da54b3aa803c0",
 "script1_device_sha256": "4ec82076f7247a5bd210bf3a09a054872365a0d740aa9fb45ad0031967c14205",
 "script1_device_md5": "89ffc145c07f0226384375e851a20126",
 "script_idx_sha256": "167386f014b6c837f2e032c7d1b88a409537b3fb4bb34c99b59d128f15996d9a",
})
(B/"MANIFEST.json").write_text(json.dumps(M, ensure_ascii=False, indent=1), encoding="utf-8")
print("manifest enriched")
lines = []
for p in sorted((B/"thd").glob("*")):
    h = hashlib.sha256(p.read_bytes()).hexdigest()
    lines.append(h + "  thd/" + p.name)
for p in sorted((B/"config").glob("*")):
    h = hashlib.sha256(p.read_bytes()).hexdigest()
    lines.append(h + "  config/" + p.name)
p = B/"script"/"script_device.idx"
lines.append(hashlib.sha256(p.read_bytes()).hexdigest() + "  script/script_device.idx")
for e in M["script_dual"]["entries"]:
    if e["name"] in ("script1_apk.wpk", "script1_device.wpk"):
        lines.append(e["sha256"] + "  script/" + e["name"])
(B/"CHECKSUMS.sha256").write_text("\n".join(lines) + "\n", encoding="utf-8")
print("checksums", len(lines))
