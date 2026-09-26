import re, pathlib
d = pathlib.Path(r'dwrg.pcap').read_bytes()
print('pcap_len=%d' % len(d))
# ascii strings: hosts, urls, dns names
txt = d.decode('ascii', errors='ignore')
hosts = sorted(set(re.findall(r'(?:[A-Za-z0-9\-]+\.)+(?:com|cn|net|org|io|top|win|163\.com)[A-Za-z0-9.\-]*', txt)))
print('HOST_COUNT=%d' % len(hosts))
for h in hosts[:60]:
    print('HOST=' + h)
for pat in ['drpf', 'unisdk', 'netease', 'identityv', 'dwrg', 'h55', 'Activation', 'LoginUI', 'Host:', 'GET ', 'POST ']:
    c = txt.count(pat)
    if c:
        print('PAT %s x%d' % (pat, c))
# SNI: search for server_name bytes context
for m in sorted(set(re.findall(r'[A-Za-z0-9.\-]*\.netease\.com[A-Za-z0-9.\-/:]*', txt)))[:30]:
    print('NETEASE=' + m)
