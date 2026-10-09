#!/usr/bin/env python3
"""One-shot workspace cleanup. Only paths created by this modding work."""
import os, shutil

W = r'D:\安卓逆向\NECR\work_necr'
T = r'C:\Users\Administrator\AppData\Local\Temp'
freed = 0

def rm(path):
    global freed
    if os.path.isfile(path):
        freed += os.path.getsize(path)
        os.remove(path)
        print('del', path)
    elif os.path.isdir(path):
        for dp, _, fns in os.walk(path):
            for f in fns:
                freed += os.path.getsize(os.path.join(dp, f))
        shutil.rmtree(path)
        print('rmtree', path)

def glob_rm(directory, pred, keep=None):
    if not os.path.isdir(directory):
        return
    for fn in os.listdir(directory):
        if keep and fn in keep:
            continue
        if pred(fn):
            rm(os.path.join(directory, fn))

# --- work_necr/repack: shelled-line relics (keep unshelled + keystore) ---
glob_rm(f'{W}/repack', lambda n: n != 'necr_unshelled.apk' and n != 'necr.keystore')
# --- work_necr/tools: donor installer (re-downloadable, jars kept in deps/) ---
rm(f'{W}/tools/UnityAndroidSupport.exe')
# --- work_necr/prod: memdumps, maps, chunk bins (evidence, superseded) ---
for fn in os.listdir(f'{W}/prod'):
    p = os.path.join(f'{W}/prod', fn)
    if fn in ('nsis_files',):
        continue
    if os.path.isfile(p):
        rm(p)
for dn in ('descsan', 'descsan2', 'dexdump', 'dump_mem'):
    p = os.path.join(f'{W}/prod', dn)
    if os.path.isdir(p):
        rm(p)
glob_rm(f'{W}/prod/nsis_files', lambda n: not (n.startswith('UNITY_') or n.startswith('_')))
# --- work_necr: jadx leftovers ---
for dn in ('realdex', 'stub'):
    p = os.path.join(f'{W}/realdex' if dn == 'realdex' else f'{W}/stub')
    if os.path.isdir(p):
        rm(p)
# --- Temp: intermediates (only ours) ---
for fn in ('us_unsigned.apk', 'us_noshell.apk', 'us_aligned.apk', 'bt34.zip',
           'jdk17.zip', 'plat31.zip', 'platform-tools-latest-windows.zip',
           'billing.aar', 'uads.aar', 'pp.xml'):
    rm(os.path.join(T, fn))
for dn in ('bill', 'ads', 'repack_dec', 'repack_dec2'):
    p = os.path.join(T, dn)
    if os.path.isdir(p):
        rm(p)
rm(os.path.join(T, 'UnityAndroid', '[0]'))
print(f'FREED {freed / 1e9:.2f} GB')
