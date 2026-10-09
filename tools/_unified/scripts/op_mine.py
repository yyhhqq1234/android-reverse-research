import re, sys
src = sys.argv[1] if len(sys.argv) > 1 else 'D:/APK-Reverse/projects/DWRG/work_dwrg/op_hall_full.txt'
t = open(src, encoding='utf-16', errors='replace').read()
print('logcat-bytes', len(t))
files = sorted(set(re.findall(r'File "([^"]+\.py)"', t)))
print('py-files', len(files))
open('D:/APK-Reverse/projects/DWRG/work_dwrg/op_script_tree.txt', 'w').write('\n'.join(files))
tags = {}
for m in re.finditer(r'M \[SCRIPT\].*?(\w+) - (INFO|WARN|ERROR)', t):
    tags[m.group(1)] = tags.get(m.group(1), 0) + 1
print('script-loggers', len(tags))
for k, v in sorted(tags.items(), key=lambda x: -x[1])[:25]:
    print(k, v)
mods = sorted(set(re.findall(r'File "([^"/]+\.py)"', t)))
print('toplevel', len(mods))
