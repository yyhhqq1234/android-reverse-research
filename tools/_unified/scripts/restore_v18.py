#!/usr/bin/env python3
"""V18: strip ALL trace/debug hooks, restore menu features, KEEP the fix.

ROOT CAUSE (2026-09-12, v17s verdict): menu P-gate bodies (0x1AABE2C,
'Max plus' idx2) + idx0-gate ('G grade') smash the purchase path return
(5 gate BLs in AddItem + B01/B02 wrappers). v17s (7 sites vanilla-direct)
purchases clean: CALL a1=49 -> A04 -> G1=19376 -> RET, unit lands 6/42, -10 '*'.
V18 = menu features + vanilla-direct purchase sites + zero trace hooks.

Restores (site -> word):
  trace hooks -> VANILLA: outer 0x1218548, A04 0x998B40, A05 0x998C94,
    B05 0x998F1C, B06 0x998F34, N17D x4, B2 0x12780B8, A06 0x998CB0.
  cave bodies -> original: B01-cave BL, B02-cave BL, flagreader head,
    A04 prio marker.
  menu feature -> MENU: G-GUARD 0x12185B4 -> 0xEB248D29 (Free gacha).
Keeps (the fix): 5 gate BLs + B01/B02 sites vanilla-direct; B03 site vanilla;
  E/M vanilla.
"""
import struct
import sys

SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'

VANILLA = {
    0x1218548: 0xEBDDFF9A,
    0x998B40: 0xEB000490,
    0x998C94: 0xEB00047B,
    0x998F1C: 0xEB3A3E19,
    0x998F34: 0xEB252278,
    0x99911C: 0xE12FFF33,
    0x9991AC: 0xE12FFF35,
    0x999224: 0xE12FFF36,
    0x99925C: 0xE12FFF33,
    0x12780B8: 0xE12FFF32,
    0x998CB0: 0xE2857058,
    0x1AAC18C: 0xEBDF7553,
    0x1AAC1CC: 0xEB023DD5,
    0x1B3B7F4: 0xE1A05000,
    0x1AAC124: 0xE3A00004,
}
WORD2 = {0x1B3B7F8: 0xE92D4070}   # flagreader 2nd word
MENU = {0x12185B4: 0xEB248D29}    # G-GUARD (Free gacha)
# preconditions: the fix (7 vanilla-direct) + O1-reverted + E/M vanilla
FIX = {
    0x998CAC: 0xEB23C28B, 0x998D0C: 0xEB23C273, 0x998D40: 0xEB23C266,
    0x998D74: 0xEB23C259, 0x998DA8: 0xEB23C24C, 0x999E20: 0xEB23BE2E,
    0x999E74: 0xE1A00005, 0x1AABE68: 0xEBDF761C,
    0x1AABE58: 0xE3A00000, 0x1AABE5C: 0xE3041E21,
    0x9986F0: 0xEBFA7F64, 0x998948: 0xE12FFF33,
}

d = bytearray(open(SO, 'rb').read())
for s, w in FIX.items():
    cur, = struct.unpack('<I', d[s:s + 4])
    assert cur == w, ('FIX broken at', hex(s), hex(cur))
print('preconditions OK (fix intact, O1 reverted, E/M vanilla)')
n = 0
for s, w in list(VANILLA.items()) + list(WORD2.items()) + list(MENU.items()):
    cur, = struct.unpack('<I', d[s:s + 4])
    if cur != w:
        d[s:s + 4] = struct.pack('<I', w)
        print('%s: %s -> %s' % (hex(s), hex(cur), hex(w)))
        n += 1
open(SO, 'wb').write(d)
print('V18 restored %d words (trace stripped, G-GUARD menu, fix kept)' % n)
