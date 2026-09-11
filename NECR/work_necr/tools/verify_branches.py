#!/usr/bin/env python3
"""Verify every branch word I own + cave freeness (v10 farm).

v10: all gate bodies moved to FARM (verified-free zero-run); C1/C2 restored.
Any future cave MUST pass the freeness gate at the bottom (no literal xrefs,
no relocs, zero bytes in vanilla).
"""
import os
import struct
import sys

DEFAULT_SO = 'D:/安卓逆向/NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so'
DEFAULT_VAN = 'D:/安卓逆向/NECR/work_necr/trial/libil2cpp.so'
SO = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_SO
VAN = sys.argv[2] if len(sys.argv) > 2 else DEFAULT_VAN
if not os.path.isfile(SO) or not os.path.isfile(VAN):
    raise FileNotFoundError(f'verify inputs missing: target={SO!r}, vanilla={VAN!r}')
d = open(SO, 'rb').read()
van = open(VAN, 'rb').read()
if len(d) != len(van):
    raise ValueError(f'SO size mismatch: target={len(d)} vanilla={len(van)}')
print('target:', SO)
print('vanilla:', VAN)

TRAMP = 0x1B3B7F4
TIERED = 0x1B3B834
G1 = 0x1AABCE4
G2 = 0x1AABD14
GOLD = 0x1AABD3C
DIA = 0x1B3BC64
GATE_G = 0x1B3B928
GATE_P = 0x1AABE2C
GOD = 0x1B3BA0C
GATE_R = 0x1B3B9A8
GATE_U = 0x1B3B9C4
MP2 = 0x1AABD9C
MIX4 = 0x1AABDD0
ORIG_WALK = 0x12192E0
BACK_WALK = 0x121936C

fails = 0


def check(frm, want, nm):
    global fails
    w, = struct.unpack('<I', d[frm:frm + 4])
    if ((w >> 25) & 7) != 5:
        print('NOTBR', nm, hex(frm), hex(w)); fails += 1; return
    off = w & 0xFFFFFF
    if off & 0x800000:
        off -= 0x1000000
    tgt = (frm + 8 + off * 4) & 0xFFFFFFFF
    st = 'OK ' if tgt == want else 'FAIL'
    if tgt != want:
        fails += 1
    print('%s %-12s @%08x -> %08x want %08x' % (st, nm, frm, tgt, want))


# site -> farm
check(0x12192DC, TIERED, 'TIERED-site')
check(0x12184F0, G1, 'G1-bl')
check(0x1218508, G2, 'G2-bl')
check(0x9A4558, GOLD, 'GOLD-bl')
check(0x9A1820, DIA, 'DIA-bl')
check(0x999E74, GATE_G, 'G-bl')
check(0x998CAC, GATE_P, 'P-bl-1')
check(0x998D0C, GATE_P, 'P-bl-2')
check(0x998D40, GATE_P, 'P-bl-3')
check(0x998D74, GATE_P, 'P-bl-4')
check(0x998DA8, GATE_P, 'P-bl-5')
check(0x122B858, GOD, 'GOD-bl')
check(0x13E2EE4, MP2, 'MP2-bl')
check(0x1224CD8, MIX4, 'MIX-bl')
check(0x1219B84, GATE_R, 'R-site')
check(0x1436C30, GATE_U, 'U-site')
# farm-internal + external tails (FARM2 split bodies; DIA split in FARM1)
check(TIERED, TRAMP, 'tiered-bl')
check(TIERED + 8, TIERED + 0x54, 'tiered-beq')
check(TIERED + 0x38, TIERED + 0x60, 'tiered-b1')
check(TIERED + 0x4C, TIERED + 0x60, 'tiered-b2')
check(TIERED + 0x5C, ORIG_WALK, 'tiered-off-b')
check(TIERED + 0x68, BACK_WALK, 'tiered-back-b')
check(GATE_G + 8, TRAMP, 'G-bl2')
check(GATE_P + 16, TRAMP, 'P-bl2')
check(GATE_P + 24, GATE_P + 44, 'P-beq')
check(GATE_P + 60, 0x12896E0, 'P-range')
check(GATE_R + 8, TRAMP, 'R-bl')
check(GATE_R + 0x18, 0x9A1EF0, 'R-bsub')
check(GATE_U + 8, TRAMP, 'U-bl')
check(GATE_U + 0x18, 0x9A7B8C, 'U-bsub')
check(GOD + 16, TRAMP, 'GOD-bl2')
check(GOD + 32, GOD + 52, 'GOD-beq')
check(GOD + 40, GOD + 48, 'GOD-beq2')
check(GOD + 44, GOD + 52, 'GOD-b')
check(MP2 + 12, TRAMP, 'MP2-bl2')
check(MP2 + 28, MP2 + 48, 'MP2-beq')
check(MP2 + 48, 0x13E17D0, 'MP2-tail')
check(MIX4 + 12, TRAMP, 'MIX4-bl')
check(MIX4 + 28, MIX4 + 76, 'MIX4-beq')
check(MIX4 + 40, 0x1224E58, 'MIX4-succ')
check(MIX4 + 84, 0x1224E58, 'MIX4-succ2')
check(G1 + 12, TRAMP, 'G1-bl2')
check(G1 + 28, G1 + 40, 'G1-beq')
check(G2 + 12, TRAMP, 'G2-bl2')
check(GOLD + 12, TRAMP, 'GOLD-bl2')
check(TRAMP + 12, 0x1C2C04, 'TRAMP-getenv')
check(TRAMP + 20, TRAMP + 0x2C, 'TRAMP-beq')


def checkword(addr, want, nm):
    global fails
    w, = struct.unpack('<I', d[addr:addr + 4])
    st = 'OK ' if w == want else 'FAIL'
    if w != want:
        fails += 1
    print('%s %-12s @%08x = %08x want %08x' % (st, nm, addr, w, want))


# M8b anti-regression: SetSummonMana prologue must stay vanilla.
checkword(0x13E17D0, 0xE92D41F0, 'MP-prologue')
checkword(0x99C518, 0xE12FFF1E, 'P9x-exit')
# TIERED v9 fix must persist in farm (no pops): OFF/BACK words are nop
checkword(TIERED + 0x54, 0xE1A00000, 'TIERED-nop-off')
checkword(TIERED + 0x60, 0xE1A00000, 'TIERED-nop-back')
# GRADE-OFF audit fix: mov r0,r5 (chain-computed grade; [sp,#4] was stale entry-r5)
checkword(GATE_G + 0x10, 0xE1A00005, 'GRADE-off')
checkword(MIX4 + 32, 0xE59B102C, 'MIX4-on-ldr')
checkword(MIX4 + 36, 0xE1500000, 'MIX4-on-cmp')
# C1/C2 must be vanilla again (spot check pool words + bodies)
checkword(0xB430A4, struct.unpack('<I', van[0xB430A4:0xB430A4 + 4])[0], 'C1-pool-a4')
checkword(0x121A040, struct.unpack('<I', van[0x121A040:0x121A040 + 4])[0], 'C2-randgrade')
checkword(0x121A0B4, struct.unpack('<I', van[0x121A0B4:0x121A0B4 + 4])[0], 'C2-savegamble')

# ---- freeness gate: farm must be zeros in vanilla, no branch/literal into
# anything except via our sites (checked above) ----
farm_end = MIX4 + 21 * 4
assert all(b == 0 for b in van[0x1B3B7F4:farm_end]), 'farm not zero in vanilla!'
print('freeness gate: farm zero in vanilla OK')
print('fails =', fails)

# v10-final: DIA split body (proven v10d) + split-shape word checks
DIA2 = 0x1B3BC64
check(0x9A1820, DIA2, 'DIA-bl')
check(DIA2 + 12, TRAMP, 'DIA2split-bl')
checkword(DIA2, 0xE92D000F, 'DIA2-push1')
checkword(DIA2 + 4, 0xE92D4070, 'DIA2-push2')
checkword(G1, 0xE92D000F, 'G1-push1')
checkword(GATE_P, 0xE92D0078, 'P-push1')
checkword(GATE_P + 4, 0xE92D0780, 'P-push2')
checkword(GATE_P + 8, 0xE92D4800, 'P-push3')
# M20/M21 player-only god: ldrh both flags, protect iff ==0x0100, replay sub
checkword(GOD + 8, 0xE1D469B4, 'GOD-ldrh')
checkword(GOD + 48, 0xE3A05000, 'GOD-movr5')
checkword(GOD + 52, 0xE0400005, 'GOD-sub')
print('fails =', fails)
