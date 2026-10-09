import zipfile, struct
z = zipfile.ZipFile('D:/APK-Reverse/projects/DWRG/work_dwrg/b_static/dwrg_B1_signed.apk')
d = z.read('classes10.dex')
ns, so = struct.unpack_from('<II', d, 0x38)
target = None
for i in range(ns):
    (sdo,) = struct.unpack_from('<I', d, so + 4 * i)
    ln, p = 0, sdo
    sh = 0
    while True:
        b = d[p]; p += 1; ln |= (b & 0x7f) << sh
        if not b & 0x80: break
        sh += 7
    s = d[p:p + ln]
    if b'ice.netease' in s:
        target = (i, s.decode(errors='replace'))
        break
print('target', target, 'nstr', ns)


def uleb(buf, p):
    r = sh = 0
    while True:
        b = buf[p]; p += 1; r |= (b & 0x7f) << sh
        if not b & 0x80: break
        sh += 7
    return r, p


idx = target[0]
for opc in (0x1a, 0x1b, 0x1c):
    enc = bytes([opc])
    hits = []
    i = 0
    while True:
        i = d.find(enc, i)
        if i < 0: break
        try:
            if opc == 0x1c:
                v = struct.unpack_from('<I', d, i + 1)[0]
            else:
                v, _ = uleb(d, i + 1)
            if v == idx:
                hits.append(hex(i))
        except Exception:
            pass
        i += 1
    print('opcode', hex(opc), 'hits', len(hits), hits[:20])
