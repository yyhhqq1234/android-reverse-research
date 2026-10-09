"""Compare non-ASCII string constants between original and rebuilt classes4.dex."""
import struct, zipfile, sys

def strings_from(dex_bytes):
    d = dex_bytes
    def u32(o): return struct.unpack('<I', d[o:o+4])[0]
    ns, so = u32(0x38), u32(0x3C)
    out = []
    for i in range(ns):
        p = so + i*4
        off = u32(p)
        v, sh = 0, 0
        q = off
        while True:
            b = d[q]; q += 1
            v |= (b & 0x7f) << sh
            if not (b & 0x80): break
            sh += 7
        out.append(d[q:q+v])
    return out

orig = zipfile.ZipFile(r'D:\APK-Reverse\projects\SUBR\SUBR.apk').read('classes4.dex')
esp  = zipfile.ZipFile(r'D:\APK-Reverse\projects\SUBR\SUBR_esp.apk').read('classes4.dex')
so_ = strings_from(orig); se_ = strings_from(esp)
def nonascii(lst):
    return [b for b in lst if any(c >= 0x80 for c in b)]

import io
out = io.open(r'D:\APK-Reverse\projects\SUBR\dexstr_diff.txt', 'w', encoding='utf-8', errors='replace')
def P(*a):
    out.write(' '.join(str(x) for x in a) + '\n')

P('orig strings=%d  esp strings=%d' % (len(so_), len(se_)))
no, ne = nonascii(so_), nonascii(se_)
P('orig non-ascii=%d  esp non-ascii=%d' % (len(no), len(ne)))
def show(title, lst):
    P('--- ' + title + ' ---')
    for b in lst:
        try:
            s = b.decode('utf-8'); note = ''
        except Exception:
            s = b.decode('utf-8', 'replace'); note = ' <-- INVALID UTF-8'
        P('   bytes=%s' % b[:80].hex())
        P('   text =%r%s' % (s[:60], note))
show('ORIG non-ascii', no)
show('ESP  non-ascii', ne)

def find(lst, needle):
    return sorted(b for b in lst if needle in b)
for needle in ['HIDE', 'MINIMIZE', 'Failed to launch', 'GetFeatureList', 'ESP Box']:
    a = find(so_, needle.encode()); b = find(se_, needle.encode())
    P('needle %-16s orig=%d esp=%d same=%s' % (needle, len(a), len(b), a == b))
    if a != b:
        P('   orig: %r' % ([x[:40] for x in a],))
        P('   esp : %r' % ([x[:40] for x in b],))
out.close()
print('written')

