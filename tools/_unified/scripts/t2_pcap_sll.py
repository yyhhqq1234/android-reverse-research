import struct, collections, pathlib, re
pcap = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_动态\formal_T1_20260926.pcap")
out = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_wpk\t2_pcap_sll.txt")
f = open(pcap, "rb")
gh = f.read(24)
magic, ver_maj, ver_min, thiszone, sigfigs, snaplen, network = struct.unpack("<IHHIIII", gh)
fout_lines = []
fout_lines.append(f"global magic={hex(magic)} network={network} snaplen={snaplen} (113=LINUX_SLL, 1=ETHERNET)")
link_off = 16 if network == 113 else 14 if network == 1 else None
if link_off is None:
    fout_lines.append(f"unsupported network {network}")
    out.write_text("\n".join(fout_lines), encoding="utf-8")
    print("\n".join(fout_lines))
    raise SystemExit
npkt = 0
dports = collections.Counter()
snis = collections.Counter()
hosts = collections.Counter()
tls_ver = collections.Counter()
protos = collections.Counter()
# limit to first 300000 packets to bound time on 4.8G (sample + totals)
LIMIT = 300000
while True:
    h = f.read(16)
    if len(h) < 16:
        break
    ts_sec, ts_usec, incl, orig = struct.unpack("<IIII", h)
    data = f.read(incl)
    if len(data) < incl:
        break
    npkt += 1
    if npkt > LIMIT:
        # drain count only
        continue
    try:
        if len(data) < link_off + 20:
            continue
        ip = data[link_off:]
        if len(ip) < 20:
            continue
        ver = ip[0] >> 4
        if ver != 4:
            continue
        ihl = (ip[0] & 0x0F) * 4
        proto = ip[9]
        protos[proto] += 1
        if proto == 6 and len(ip) >= ihl + 20:
            tcp = ip[ihl:]
            dport = struct.unpack("!H", tcp[2:4])[0]
            if dport != 5555:
                dports[dport] += 1
            payload = tcp[20:]
            # TLS ClientHello SNI: search for readable hostnames ending netease/163/bytedance etc
            if dport == 443 and len(payload) > 40:
                # crude SNI hunt: find 0x00 0x00 (server_name) then len + name
                # fallback: regex hostnames
                for m in re.finditer(rb"[a-z0-9\-\.]{4,80}\.(netease\.com|easebar\.com|163\.com|126\.net|byte dance|bytedance\.com|oceanengine\.com|volces\.com|qq\.com|alipay\.com|taobao\.com|douyin\.com|snssdk\.com|cc\.163\.com|gm\.163\.com|mkey\.163\.com)", payload):
                    try:
                        s = m.group(0).decode()
                        if len(s) < 120:
                            snis[s] += 1
                    except Exception:
                        pass
                # TLS version hint: record header 0x16 0x03 0x0x
                if len(payload) >= 3 and payload[0] == 0x16 and payload[1] == 0x03:
                    tls_ver[f"3.{payload[2]}"] += 1
            if dport == 80 and len(payload) > 20:
                # HTTP Host:
                mm = re.search(rb"[Hh][Oo][Ss][Tt]:\s*([^\r\n]+)", payload)
                if mm:
                    try:
                        hosts[mm.group(1).decode().strip()] += 1
                    except Exception:
                        pass
    except Exception:
        continue
fout_lines.append(f"packets_total_file>=? sampled_first={min(npkt,LIMIT)} total_read={npkt}")
fout_lines.append("dport(non5555) top30: " + str(dports.most_common(30)))
fout_lines.append("tls_ver: " + str(dict(tls_ver)))
fout_lines.append(f"SNI unique={len(snis)}")
for k, v in snis.most_common(80):
    fout_lines.append(f"SNI {v}x {k}")
fout_lines.append(f"HTTP-Host unique={len(hosts)}")
for k, v in hosts.most_common(80):
    fout_lines.append(f"HOST {v}x {k}")
fout_lines.append("filter=dport!=5555 (adb noise excluded); link=SLL16B" if network==113 else "link=ETH14B")
fout_lines.append("note: 4.8G includes 2GB streaming-install adb bulk; game TLS is dport443/80 subset above")
out.write_text("\n".join(fout_lines), encoding="utf-8")
print("\n".join(fout_lines[:60]))
print("wrote", out)
