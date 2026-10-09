import re, pathlib
src = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_动态\t1_frida_hook_cli.log").read_text(encoding="utf-16", errors="ignore")
print("lines", src.count("\n"))
pat = re.compile(r"https?://[^\s'\"}]+")
urls = pat.findall(src)
print("urls", len(urls))
uniq = sorted(set([u.strip() for u in urls]))
print("uniq", len(uniq))
pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_动态\t1_hook_urls.txt").write_text("\n".join(uniq), encoding="utf-8")
print("wrote t1_hook_urls.txt")
for u in uniq[:100]:
    print(u)
