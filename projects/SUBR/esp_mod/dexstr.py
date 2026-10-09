import struct, zipfile
z = zipfile.ZipFile(r'D:\APK-Reverse\projects\SUBR\SUBR_esp.apk')
dex = z.read('classes4.dex')
assert dex[:8] == b'dex\n035\x00', dex[:8]
def u32(o): return struct.unpack('<I', dex[o:o+4])[0]
ns = u32(0x38); so = u32(0x3C)
hits = []
for i in range(ns):
    so_i = u32(so + i*4)
    # uleb128 length
    v, sh, p = 0, 0, so_i
    while True:
        b = dex[p]; p += 1
        v |= (b & 0x7f) << sh
        if not (b & 0x80): break
        sh += 7
    s = dex[p:p+v].decode('utf-8', 'replace')
    if 'ModBridge' in s or 'SUBRESP' in s or 'concat' in s:
        hits.append(s)
print('string_ids:', ns)
for h in hits: print('  ', h)
