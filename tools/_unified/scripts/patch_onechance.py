#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""P-guard v2 for CashShopManager.OneChance (v20cn/sc $6.99 no-crash fix).

Root cause (device-proven x3, identical backtrace trad/SC/pristine-v19):
  shop row '01_onechance' ($6.99 remove-ads/BlackWitch) has a persistent
  onClick -> CashShopManager.OneChance (RVA=Offset 0x9A479C, instance, no args)
  whose serialized int-arg is 1, so it runs with this==0x1 (NOT null).
  Entry `ldr r4,[r4,#0x14]` (this.oneChanceButton, field 0x14 per dump.cs)
  faults at 0x15. v1 guard (cmp r4,#0) missed it; crash moved +4 to 0x9a484c.

v2 (2 words changed, 1 restored; valid-call behavior identical):
  0x9a4848: cmp r4,#0          -> cmp r4,#1            (0xE3540001)
  0x9a484c: ldrne r4,[r4,#0x14]-> ldrhi r4,[r4,#0x14]  (0x85944014)
  0x9a4850: bne (original, kept)
  0x9a4854: popeq (v1)         -> bl throw (original 0xEBE5E40C, restored)
Paths: this==1 -> managed NRE via throw (logged, survives);
       this==0 -> managed NRE inside Selectable.set_interactable (0x13656c4);
       valid   -> byte-identical flow (field-null NREs one frame deeper).
No farm needed; no new side effects.

v3 (effect: skip UI-disable block so the stale listener grants):
  PlayerPrefs shows OneChance's SetInt/AddToDia NEVER ran (no keys, no
  diamond state) -> P3 dispatch misses (r4 len != 12) AND stale path died
  at the guard. Tail audit proves post-0x9a4868 is this-independent
  (r4 overwritten from static at 0x9a4890, own null-guards intact).
  0x9a4848: cmp r4,#1 -> b 0x9a4868 (0xEA000006, skip button UI block)
  0x9a484c: ldrhi     -> ldr r4,[r4,#0x14] (restore 0xE5944014, now dead)
  0x9a4850/54: already original (dead). Stale path now grants fully,
  zero exceptions; trampoline path (if dispatch ever hits) unchanged.
"""
import hashlib
import shutil
import struct
import sys

SO_DEFAULT = ('D:/安卓逆向/NECR/work_necr/build/menuapk/lib/armeabi-v7a/'
              'libil2cpp.so')
SO_SRC = ('D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/'
          'libil2cpp.so')
# build_menu.py syncs src/lib/... over the tree copy: patch SRC (argv[1]).
SO = sys.argv[1] if len(sys.argv) > 1 else SO_DEFAULT
BAK = ('D:/安卓逆向/NECR/work_necr/logs/'
       'libil2cpp_so_v2-onechance.bak')

PATCHES = {
    0x9a4848: (0xE3540001, 0xEA000006),  # cmp r4,#1 -> b 0x9a4868
    0x9a484c: (0x85944014, 0xE5944014),  # ldrhi -> ldr (restore, dead)
    0x9a4850: (0x1A000000, 0x1A000000),  # bne (assert unchanged, dead)
    0x9a4854: (0xEBE5E40C, 0xEBE5E40C),  # bl throw (assert unchanged, dead)
}


def main():
    with open(SO, 'rb') as f:
        data = bytearray(f.read())
    for off, (expect, _) in PATCHES.items():
        (got,) = struct.unpack('<I', bytes(data[off:off + 4]))
        assert got == expect, 'unexpected word at %s: got %08x want %08x' % (
            hex(off), got, expect)
    shutil.copyfile(SO, BAK)
    print('backup:', BAK, hashlib.sha256(open(BAK, 'rb').read()).hexdigest()[:12])
    for off, (_, new) in PATCHES.items():
        if new != struct.unpack('<I', bytes(data[off:off + 4]))[0]:
            struct.pack_into('<I', data, off, new)
    with open(SO, 'wb') as f:
        f.write(data)
    print('patched:', SO, hashlib.sha256(bytes(data)).hexdigest()[:12])


if __name__ == '__main__':
    sys.exit(main())
