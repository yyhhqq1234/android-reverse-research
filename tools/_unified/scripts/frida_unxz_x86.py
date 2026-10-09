import lzma, pathlib, shutil
src = pathlib.Path(r'D:\APK-Reverse\projects\NECR\work_necr\tools\frida-server-x86.xz')
dst = pathlib.Path(r'D:\APK-Reverse\projects\DWRG\work_dwrg\frida-server-x86')
print('src=' + str(src.stat().st_size))
with lzma.open(src, 'rb') as f:
    with open(dst, 'wb') as o:
        shutil.copyfileobj(f, o)
print('dst=' + str(dst.stat().st_size))
