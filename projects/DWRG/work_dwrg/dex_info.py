import pathlib, struct, zipfile
p = pathlib.Path(r'D:\APK-Reverse\projects\DWRG\work_dwrg\raw\classes.dex')
d = p.read_bytes()
print('classes.dex len=%d magic=%r' % (len(d), d[:8]))
mid = struct.unpack_from('I', d, 56)[0]
cdf = struct.unpack_from('I', d, 96)[0]
print('method_ids=%d class_defs=%d' % (mid, cdf))
z = zipfile.ZipFile(r'D:\APK-Reverse\projects\DWRG\第五人格（测试版）.apk')
for n in ['assets/mpay-rocoofix.dex', 'assets/unisdk_base.dex']:
    print(n, z.getinfo(n).file_size)
