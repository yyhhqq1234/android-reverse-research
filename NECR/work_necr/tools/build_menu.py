#!/usr/bin/env python3
"""Build the MENU apk: sync gated libil2cpp.so into menuapk tree, apktool b
from ASCII path (aapt2 chokes on Chinese paths), align+sign, sync dex back.
Usage: build_menu.py [out.apk]"""
import os
import shutil
import subprocess
import sys
import zipfile

W = 'D:/安卓逆向/NECR/work_necr'
J = f'{W}/toolchain/jdk-17.0.11+9/bin/java.exe'
APKTOOL = f'{W}/tools/apktool.jar'
ZA = f'{W}/toolchain/bt34/android-14/zipalign.exe'
SIGNER = 'D:/安卓逆向/build-tools-win/android-14/apksigner.bat'
KS = f'{W}/repack/necr.keystore'
# 公开仓库已移除硬编码口令：本地使用请设置环境变量 NECR_KEYSTORE_PASS，勿提交密钥。
KS_PASS = os.environ.get('NECR_KEYSTORE_PASS', 'CHANGE_ME')
TREE = f'{W}/build/menuapk'
TMP = 'D:/tmp/menuapk'
DEX = f'{W}/build/dex/classes.dex'
SO = f'{W}/src/lib/armeabi-v7a/libil2cpp.so'
TMPD = 'C:/Users/Administrator/AppData/Local/Temp'


def run(cmd, env=None):
    print('+', ' '.join(cmd[:3]), '...')
    r = subprocess.run(cmd, capture_output=True, text=True, env=env)
    tail = (r.stdout or '')[-300:] + (r.stderr or '')[-500:]
    print(tail)
    return r.returncode == 0


out = sys.argv[1] if len(sys.argv) > 1 else f'{W}/repack/necr_menu.apk'

# 1. sync gated .so (THE bug class this prevents: stale lib in menu tree)
for t in (TREE, TMP):
    dst = f'{t}/lib/armeabi-v7a/libil2cpp.so'
    if os.path.exists(dst):
        a = open(SO, 'rb').read()
        b = open(dst, 'rb').read()
        if a != b:
            shutil.copyfile(SO, dst)
            print('synced .so ->', t)
        else:
            print('.so already current in', t)

# 2. sync smali edits to ASCII tree (full refresh of the small smali dir is cheap)
shutil.rmtree(TMP, ignore_errors=True)
shutil.copytree(TREE, TMP, ignore=shutil.ignore_patterns('build', 'original'))
print('tree copied to ASCII path')

# 3. apktool build
assert run([J, '-jar', APKTOOL, 'b', TMP, '-o', f'{TMPD}/menu_unsigned.apk'])
# 4. align + sign
assert run([ZA, '-f', '4', f'{TMPD}/menu_unsigned.apk', f'{TMPD}/menu_aligned.apk'])
env = dict(os.environ, JAVA_HOME=f'{W}/toolchain/jdk-17.0.11+9')
assert run([SIGNER, 'sign', '--ks', KS, '--ks-pass', f'pass:{KS_PASS}',
            '--key-pass', f'pass:{KS_PASS}', '--out', out, f'{TMPD}/menu_aligned.apk'], env)
# 5. sync new dex back so assemble_unshelled.py keeps the menu
z = zipfile.ZipFile(out)
open(DEX, 'wb').write(z.read('classes.dex'))
print('dex synced back, size', os.path.getsize(DEX))
print('WROTE', out, os.path.getsize(out))
