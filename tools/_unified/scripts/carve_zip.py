import pathlib, re, zipfile, io
d = pathlib.Path(r'dwrg3.pcap').read_bytes()
print('pcap=%d' % len(d))
out = pathlib.Path(r'crash_zips')
out.mkdir(exist_ok=True)
n = 0
for m in re.finditer(rb'PK\x03\x04', d):
    s = m.start()
    e = d.find(b'PK\x05\x06', s)
    if e < 0:
        continue
    blob = d[s:e + 22]
    try:
        z = zipfile.ZipFile(io.BytesIO(blob))
    except Exception:
        continue
    # identify from preceding filename="xxx.zip"
    pre = d[max(0, s - 600):s].decode('ascii', errors='ignore')
    mm = re.findall(r'filename="([0-9a-f]{32})\.zip"', pre)
    tag = mm[-1] if mm else ('pk%d' % s)
    print('== %s members=%s ==' % (tag, z.namelist()))
    (out / (tag + '.zip')).write_bytes(blob)
    for nm in z.namelist():
        try:
            t = z.read(nm).decode('utf-8', errors='ignore')
        except Exception as ex:
            print(' read-err %s %s' % (nm, ex))
            continue
        print('--- %s %dB ---' % (nm, len(t)))
        print(t[:3000])
    n += 1
print('carved=%d' % n)
