import pathlib, struct, zipfile
apk = pathlib.Path(r'D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）.apk')
z = zipfile.ZipFile(apk)
for n in sorted([i.filename for i in z.infolist() if i.filename.endswith('.dex')]):
    d = z.read(n)
    mid = struct.unpack_from('I', d, 56)[0]
    cdf = struct.unpack_from('I', d, 96)[0]
    print('%s len=%d magic=%r method_ids=%d class_defs=%d' % (n, len(d), d[:8], mid, cdf))
