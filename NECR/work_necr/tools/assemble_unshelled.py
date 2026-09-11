#!/usr/bin/env python3
"""Assemble an unshelled NECR APK with static release gates."""
import hashlib
import os
import subprocess
import sys
import zipfile

JAVA = r'D:\安卓逆向\NECR\work_necr\toolchain\jdk-17.0.11+9\bin\java.exe'
APKTOOL = r'D:\安卓逆向\NECR\work_necr\tools\apktool.jar'
ZA = r'D:\安卓逆向\build-tools-win\android-14\zipalign.exe'
SIGNER = r'D:\安卓逆向\build-tools-win\android-14\apksigner.bat'
KS = r'D:\安卓逆向\NECR\work_necr\repack\necr.keystore'
KS_PASS = os.environ.get('NECR_KEYSTORE_PASS', 'CHANGE_ME')
DEC = r'D:\安卓逆向\NECR\work_necr\src'
TMP = r'C:\Users\Administrator\AppData\Local\Temp'
OUT = r'D:\安卓逆向\NECR\work_necr\repack\necr_unshelled.apk'
DROP = {'assets/.jgapp', 'assets/libjiagu.so', 'assets/libjiagu_x86.so'}


def run(cmd, env=None):
    print('+', ' '.join(cmd[:4]), '...')
    r = subprocess.run(cmd, capture_output=True, text=True, env=env)
    print((r.stdout or '')[-800:], (r.stderr or '')[-800:])
    if r.returncode:
        raise RuntimeError(f'command failed ({r.returncode}): {cmd[0]}')


def require_file(path):
    if not os.path.isfile(path):
        raise FileNotFoundError(path)


def sha256(data):
    return hashlib.sha256(data).hexdigest()


def main(dex_path):
    for path in (JAVA, APKTOOL, ZA, SIGNER, KS, dex_path):
        require_file(path)
    if KS_PASS == 'CHANGE_ME':
        raise RuntimeError('set NECR_KEYSTORE_PASS before signing')
    if os.path.exists(OUT) and '--force' not in sys.argv[2:]:
        raise FileExistsError(f'output exists; pass --force to overwrite: {OUT}')
    tmp_out = f'{OUT}.tmp-{os.getpid()}'
    if os.path.exists(tmp_out):
        os.unlink(tmp_out)
    with open(dex_path, 'rb') as f:
        real_dex = f.read()
    if not real_dex.startswith(b'dex\n'):
        raise ValueError('not a dex')
    print('real dex bytes:', len(real_dex))
    unsigned = f'{TMP}\\us_unsigned.apk'
    noshell = f'{TMP}\\us_noshell.apk'
    aligned = f'{TMP}\\us_aligned.apk'
    run([JAVA, '-jar', APKTOOL, 'b', DEC, '-o', unsigned])
    with zipfile.ZipFile(unsigned) as zin, zipfile.ZipFile(noshell, 'w') as zout:
        for item in zin.infolist():
            if item.filename in DROP:
                continue
            data = real_dex if item.filename == 'classes.dex' else zin.read(item.filename)
            zout.writestr(item, data, compress_type=item.compress_type)
    run([ZA, '-f', '4', noshell, aligned])
    env = dict(os.environ, JAVA_HOME=r'D:\安卓逆向\NECR\work_necr\toolchain\jdk-17.0.11+9')
    run([SIGNER, 'sign', '--ks', KS, '--ks-pass', f'pass:{KS_PASS}',
         '--key-pass', f'pass:{KS_PASS}', '--v1-signing-enabled', 'true',
         '--v2-signing-enabled', 'true', '--out', tmp_out, aligned], env)
    run([ZA, '-c', '-v', '4', tmp_out])
    run([SIGNER, 'verify', '--verbose', tmp_out], env)
    with zipfile.ZipFile(tmp_out) as z:
        if z.read('classes.dex') != real_dex:
            raise RuntimeError('APK classes.dex mismatch')
    os.replace(tmp_out, OUT)
    with open(OUT, 'rb') as f:
        print('WROTE', OUT, os.path.getsize(OUT), sha256(f.read()))


if __name__ == '__main__':
    if len(sys.argv) < 2:
        raise SystemExit('usage: assemble_unshelled.py <classes.dex> [--force]')
    main(sys.argv[1])
