import re, pathlib
d = pathlib.Path(r'dwrg3.pcap').read_bytes()
txt = d.decode('ascii', errors='ignore')
print('len=%d' % len(d))
for m in sorted(set(re.findall(r'POST [^\s]+', txt))):
    print(m)
for m in sorted(set(re.findall(r'Host: [^\r\n]+', txt)))[:20]:
    print(m)
for m in sorted(set(re.findall(r'h55\.drpf[^\s"\']*', txt)))[:10]:
    print('DRPF=' + m)
# drpf json bodies: look for project h55 json
for m in sorted(set(re.findall(r'\{[^{}]*"project":\s*"h55"[^{}]*\}', txt)))[:5]:
    print('JSON=' + m[:600])
# upload boundary
for m in sorted(set(re.findall(r'Content-Disposition[^\r\n]+', txt)))[:10]:
    print('CD=' + m)
