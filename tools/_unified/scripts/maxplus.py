#!/usr/bin/env python3
"""L1: max all plus stats (affixes) to 9 via save edit. Usage: maxplus.py [pull|push]."""
import re
import subprocess
import sys

A = 'D:/安卓逆向/platform-tools/adb.exe'
D = '127.0.0.1:16384'
XML = '/data/data/com.PrismaThunder.Necromancer/shared_prefs/com.PrismaThunder.Necromancer.v2.playerprefs.xml'
TMP = 'D:/tmp/ppmax.xml'
FIELDS = ('Item_attPlus', 'Item_attSpeed', 'Item_hpPlus', 'Item_hpRe', 'Item_moveSpeed')
MAXV = '9'


def run(*args):
    subprocess.run([A, '-s', D, *args], check=True)


mode = sys.argv[1] if len(sys.argv) > 1 else 'pull'
if mode == 'pull':
    run('shell', f"su -c 'cp {XML} /sdcard/ppmax.xml'")
    run('pull', '/sdcard/ppmax.xml', TMP)
    print('pulled', TMP)
elif mode == 'push':
    b = open(TMP, encoding='utf-8', errors='replace').read()
    inv = re.findall(r'"(Inventory\d+)" value="(\d+)"', b)
    used = [k.replace('Inventory', '') for k, v in inv if v != '0']
    print('used slots:', len(used))

    def sub(name, val):
        global b
        b, n = re.subn(f'"{name}" value="\\d+"', f'"{name}" value="{val}"', b)
        return n

    for idx in used:
        for f in FIELDS:
            sub(f'{f}{idx}', MAXV)
    open(TMP, 'w', encoding='utf-8').write(b)
    run('push', TMP, '/sdcard/ppmax.xml')
    run('shell', "su -c 'cp /sdcard/ppmax.xml " + XML + "'")
    run('shell', 'am force-stop com.PrismaThunder.Necromancer')
    run('shell', 'am start -n com.PrismaThunder.Necromancer/com.unity3d.player.UnityPlayerActivity')
    print('pushed, rebooted')
