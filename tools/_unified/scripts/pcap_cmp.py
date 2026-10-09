import re, pathlib
for fn in ['dwrg.pcap', 'dwrg2.pcap']:
    d = pathlib.Path(fn).read_bytes()
    txt = d.decode('ascii', errors='ignore')
    print('== %s len=%d ==' % (fn, len(d)))
    for pat in ['drpf', 'unisdk', 'h55', 'Activation', 'LoginUI', 'Identification', 'Avatar', 'ROOM', 'FACTION', 'token', 'Host:']:
        print(' %s x%d' % (pat, txt.count(pat)))
    hosts = sorted(set(re.findall(r'[a-z0-9\-]+\.(?:netease|easebar)\.com[a-z0-9.\-/:]*', txt, flags=re.I)))[:20]
    for h in hosts:
        print('  HOST=' + h)
