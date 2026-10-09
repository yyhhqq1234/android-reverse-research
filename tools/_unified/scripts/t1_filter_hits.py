import pathlib
t = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_动态\t1_logcat_hits.txt").read_text(encoding="utf-8", errors="ignore")
lines = t.splitlines()
def filt(keys):
    return [l for l in lines if any(k in l.lower() for k in keys)]
for name, keys in [
    ("THD", ["thd"]),
    ("WPK_NPK", ["wpk","npk"]),
    ("DOWNLOAD_CLOUD", ["download","cloud"]),
    ("ORDER_PAY", ["order","mpay","epay","verify","consume"]),
    ("H55_GSF_UPDATE", ["h55","gsf","update.netease","update.easebar","unisdk.update","protocol.unisdk","nos.gameyw","drpf"]),
    ("SCRIPT_PRELOAD", ["script","preload","pkgmapping","neox"]),
]:
    hits = filt(keys)
    print(f"== {name} n={len(hits)} ==")
    for h in hits[:30]:
        print(h[:500])
    print()
