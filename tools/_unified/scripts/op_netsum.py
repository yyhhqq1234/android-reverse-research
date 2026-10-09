import re
from collections import Counter
p = 'D:/APK-Reverse/projects/DWRG/work_dwrg/op_netlog.txt'
txt = open(p, encoding='utf-8').read()
ls = txt.splitlines()
print('lines', len(ls))
c = Counter()
for l in ls:
    m = re.search(r"fd': (\d+)", l)
    e = re.search(r"ev': '(\w+)'", l)
    if m and e:
        c[(e.group(1), m.group(1))] += 1
for k, v in c.most_common():
    print(k, v)
eps = sorted(set(re.findall(r"ep': '([\d.]+:\d+)'", txt)))
print('endpoints:')
for e in eps:
    print('  ', e)
