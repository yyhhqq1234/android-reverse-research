import lzma, pathlib, shutil
src = pathlib.Path(r'D:\APK-Reverse\projects\NECR\work_necr\tools\frida-server-x86_64.xz')
dst = pathlib.Path(r'D:\APK-Reverse\projects\DWRG\work_dwrg\frida-server-x86_64')
print('src_exists=' + str(src.exists()) + ' size=' + str(src.stat().st_size if src.exists() else 0))
with lzma.open(src, 'rb') as f:
    with open(dst, 'wb') as o:
        shutil.copyfileobj(f, o)
print('dst_size=' + str(dst.stat().st_size))
