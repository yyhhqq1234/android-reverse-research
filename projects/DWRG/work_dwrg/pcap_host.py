import re, pathlib
d = pathlib.Path(r'dwrg.pcap').read_bytes()
txt = d.decode('ascii', errors='ignore')
for m in sorted(set(re.findall(r'Host: [^\r\n]+', txt)))[:20]:
    print(m)
for m in sorted(set(re.findall(r'GET [^\s]+', txt)))[:20]:
    print(m)
for m in sorted(set(re.findall(r'POST [^\s]+', txt)))[:20]:
    print(m)
# dns names: printable labels before .com/.cn
dns = sorted(set(re.findall(r'([a-z0-9\-]+\.(?:netease|163|easebar)\.com[a-z0-9.\-]*)', txt, flags=re.I)))[:40]
for h in dns:
    print('DNSCAND=' + h)
