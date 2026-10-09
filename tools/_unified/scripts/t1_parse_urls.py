import re, pathlib
p = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_动态\t1_frida_hook_cli.log").read_text(encoding="utf-8", errors="ignore")
print("lines", p.count("\n"))
urls = re.findall(r"https?://[^\s'\"}]+", p)
print("urls", len(urls))
uniq = sorted(set(urls))
for u in uniq[:200]:
    print(u)
print("---CLOUD/DOWNLOAD/THD/ORDER/WPK---")
for u in uniq:
    l = u.lower()
    if any(k in l for k in ["cloud","download","thd","order","wpk","npk","script","preload","pkgmapping","h55","gsf","mpay","epay","unisdk","update"]):
        print(u)
