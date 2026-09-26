#!/usr/bin/env python3
"""Build the MENU apk: sync gated libil2cpp.so into menuapk tree, apktool b
from ASCII path (aapt2 chokes on Chinese paths), align+sign, sync dex back.
Usage: build_menu.py [out.apk]"""
import hashlib
import os
import shutil
import subprocess
import sys
import zipfile

W = 'D:/安卓逆向/NECR/work_necr'
J = f'{W}/toolchain/jdk-17.0.11+9/bin/java.exe'
APKTOOL = f'{W}/tools/apktool.jar'
ZA = 'D:/安卓逆向/build-tools-win/android-14/zipalign.exe'
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
    if r.returncode:
        raise RuntimeError(f'command failed ({r.returncode}): {cmd[0]}')
    return r


def digest(path):
    h = hashlib.sha256()
    with open(path, 'rb') as f:
        for block in iter(lambda: f.read(1024 * 1024), b''):
            h.update(block)
    return h.hexdigest()


def require_file(path):
    if not os.path.isfile(path):
        raise FileNotFoundError(path)


def require_dir(path):
    if not os.path.isdir(path):
        raise FileNotFoundError(path)


force = '--force' in sys.argv[1:]
out = next((x for x in sys.argv[1:] if x != '--force'), f'{W}/repack/necr_menu.apk')
# Keep the destination untouched until every build/sign/payload gate passes.
tmp_out = f'{out}.tmp-{os.getpid()}'
require_file(J); require_file(APKTOOL); require_file(ZA); require_file(SIGNER); require_file(KS)
require_file(SO); require_dir(TREE); require_file(DEX)
if not force and os.path.exists(out):
    raise FileExistsError(f'output exists; choose a new path or pass --force: {out}')
if os.path.exists(tmp_out):
    os.unlink(tmp_out)
if KS_PASS == 'CHANGE_ME':
    raise RuntimeError('set NECR_KEYSTORE_PASS before signing')

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
unsigned = f'{TMPD}/menu_unsigned.apk'
aligned = f'{TMPD}/menu_aligned.apk'
run([J, '-jar', APKTOOL, 'b', TMP, '-o', unsigned])
run([ZA, '-f', '4', unsigned, aligned])
env = dict(os.environ, JAVA_HOME=f'{W}/toolchain/jdk-17.0.11+9')
run([SIGNER, 'sign', '--ks', KS, '--ks-pass', f'pass:{KS_PASS}',
     '--key-pass', f'pass:{KS_PASS}', '--v1-signing-enabled', 'true',
     '--v2-signing-enabled', 'true', '--out', tmp_out, aligned], env)
run([ZA, '-c', '-v', '4', tmp_out])
run([SIGNER, 'verify', '--verbose', tmp_out], env)
# 5. verify APK payload before atomically promoting it
with zipfile.ZipFile(tmp_out) as z:
    embedded_so = z.read('lib/armeabi-v7a/libil2cpp.so')
    embedded_dex = z.read('classes.dex')
with open(SO, 'rb') as f:
    source_so = f.read()
with open(DEX, 'rb') as f:
    source_dex = f.read()
if embedded_so != source_so:
    raise RuntimeError('APK libil2cpp.so does not match source SO')
if embedded_dex != source_dex:
    raise RuntimeError('APK classes.dex does not match input dex')
print('payload verified: SO', len(embedded_so), 'DEX', len(embedded_dex))
os.replace(tmp_out, out)
print('WROTE', out, os.path.getsize(out), digest(out))
