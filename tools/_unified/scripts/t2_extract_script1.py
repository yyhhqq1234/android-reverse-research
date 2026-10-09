import zipfile, hashlib, pathlib
apk = r"D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）.apk"
out = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_wpk\script1_apk.wpk")
z = zipfile.ZipFile(apk)
data = z.read("assets/res/script1.wpk")
out.write_bytes(data)
print("wrote", out, len(data))
h = hashlib.sha256(data).hexdigest()
print("sha256", h)
# also dump apk-side preload/pkgmapping/cloud/neox for chain compare
for n in ["assets/preload.json","assets/pkgmapping.json","assets/cloud.json","assets/neox3.xml"]:
    d = z.read(n)
    p = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_wpk") / ("apk_"+pathlib.Path(n).name)
    p.write_bytes(d)
    print(n, len(d))
