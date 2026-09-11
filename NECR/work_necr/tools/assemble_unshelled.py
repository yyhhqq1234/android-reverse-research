#!/usr/bin/env python3
"""Assemble UNSHELLED NECR APK: apktool build (manifest already de-StubApp'd)
+ inject real classes.dex + drop 360 droppings + align + sign. No offsets matter (no shell)."""
import os, subprocess, sys, zipfile

JAVA = r'D:\安卓逆向\NECR\work_necr\toolchain\jdk-17.0.11+9\bin\java.exe'
APKTOOL = r'D:\安卓逆向\NECR\work_necr\tools\apktool.jar'
ZA = r'D:\安卓逆向\NECR\work_necr\toolchain\bt34\android-14\zipalign.exe'
SIGNER = r'D:\安卓逆向\NECR\work_necr\toolchain\bt34\android-14\apksigner.bat'
KS = r'D:\安卓逆向\NECR\work_necr\repack\necr.keystore'
# 公开仓库已移除硬编码口令：本地使用请设置环境变量 NECR_KEYSTORE_PASS，勿提交密钥。
KS_PASS = os.environ.get('NECR_KEYSTORE_PASS', 'CHANGE_ME')
DEC = r'D:\安卓逆向\NECR\work_necr\src'
TMP = r'C:\Users\Administrator\AppData\Local\Temp'
OUT = r'D:\安卓逆向\NECR\work_necr\repack\necr_unshelled.apk'
DROP = {'assets/.jgapp', 'assets/libjiagu.so', 'assets/libjiagu_x86.so'}

def run(cmd, env=None):
    print('+', ' '.join(cmd[:4]), '...')
    r = subprocess.run(cmd, capture_output=True, text=True, env=env)
    print(r.stdout[-800:] if r.stdout else '', r.stderr[-800:] if r.stderr else '')
    return r.returncode == 0

def main(dex_path):
    assert os.path.exists(dex_path), dex_path
    real_dex = open(dex_path, 'rb').read()
    assert real_dex[:4] == b'dex\n', 'not a dex'
    print('real dex bytes:', len(real_dex))
    assert run([JAVA, '-jar', APKTOOL, 'b', DEC, '-o', f'{TMP}\\us_unsigned.apk'])
    # swap dex + drop shell files
    zin = zipfile.ZipFile(f'{TMP}\\us_unsigned.apk')
    zout = zipfile.ZipFile(f'{TMP}\\us_noshell.apk', 'w')
    for i in zin.infolist():
        if i.filename in DROP:
            print('drop', i.filename); continue
        data = zin.read(i.filename)
        if i.filename == 'classes.dex':
            data = real_dex
        zout.writestr(i, data, compress_type=i.compress_type)
    zout.close()
    assert run([ZA, '-f', '4', f'{TMP}\\us_noshell.apk', f'{TMP}\\us_aligned.apk'])
    env = dict(os.environ, JAVA_HOME=r'D:\安卓逆向\NECR\work_necr\toolchain\jdk-17.0.11+9')
    assert run([SIGNER, 'sign', '--ks', KS, '--ks-pass', f'pass:{KS_PASS}',
                '--key-pass', f'pass:{KS_PASS}', '--out', OUT, f'{TMP}\\us_aligned.apk'], env)
    print('WROTE', OUT, os.path.getsize(OUT))

if __name__ == '__main__':
    main(sys.argv[1])
