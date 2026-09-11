#!/usr/bin/env python3
"""v10: relocate all gate bodies from literal-pool-colliding caves (C1/C2)
to a verified-free farm; restore vanilla over C1/C2; retarget sites.

C1 0xB42F40-0xB430F4 sits inside CodelessIAPStoreListener.InitiatePurchase
body+literal pool (18 pool words destroyed -> diamond tap SEGV at 0xB42E18).
C2 0x1219FFC-0x121A10C sits inside GambleManager.RandomGrade body+pool,
SaveGamble prologue, ResetItem pool (-> probabilistic gacha crashes).
FARM 0x1B3B7F4: 1568B zero-run, no literal xrefs, no relocs (verified).
Usage: python tools/patch_relocate.py   (operates on src SO in place)
"""
import struct
import pathlib

W = pathlib.Path(r'D:\安卓逆向\NECR\work_necr')
VAN = W / 'trial/libil2cpp.so'
SRC = W / 'src/lib/armeabi-v7a/libil2cpp.so'
FARM = 0x1B3B7F4

van = bytearray(VAN.read_bytes())
cur = bytearray(SRC.read_bytes())
assert len(van) == len(cur) == 30543200


def u32(a, buf):
    return struct.unpack('<I', buf[a:a + 4])[0]


def put(buf, a, v):
    struct.pack_into('<I', buf, a, v & 0xFFFFFFFF)


def is_b_bl(w):
    return (w & 0x0E000000) == 0x0A000000  # B or BL (any cond)


def is_bcc(w):
    return (w & 0x0F000000) == 0x00000000 and (w >> 28) != 0xF


def is_branch(w):
    return is_b_bl(w) or is_bcc(w)


def br_target(addr, w):
    off = w & 0xFFFFFF
    if off & 0x800000:
        off -= 0x1000000
    return (addr + 8 + (off << 2)) & 0xFFFFFFFF


def encode_branch(addr, w, target):
    off = ((target - (addr + 8)) // 4) & 0xFFFFFF
    return (w & 0xFF000000) | off


def is_ldrlit(w):
    # LDR (immediate), Rn == PC
    return ((w >> 26) & 3) == 1 and ((w >> 25) & 1) == 0 and ((w >> 20) & 1) == 1 \
        and ((w >> 16) & 15) == 15 and ((w >> 24) & 1) == 1


def is_add_pc_imm(w):
    # ADD Rd, PC, #imm  (TRAMP env-string trick)
    # ADD Rd, PC, #imm (bit25=1, opcode 0100, Rn==PC; S ignored)
    return (w & 0x0FEF0000) == 0x028F0000 and ((w >> 16) & 15) == 15


# (name, src_start, nwords)
BODIES = [
    ('TRAMP', 0x121A040, 13),
    ('TIERED', 0xB42F40, 27),
    ('G1', 0xB42FE8, 10),
    ('G2', 0xB43010, 8),
    ('GOLD', 0xB43030, 8),
    ('DIA', 0xB43050, 8),
    ('G', 0xB43074, 7),
    ('P', 0xB43090, 13),
    ('GOD', 0xB430C4, 12),
    ('R', 0x1219FFC, 7),
    ('U', 0x121A01C, 7),
    ('MP2', 0x121A080, 11),
    ('MIX4', 0x121A0B4, 21),
]
# sites: (addr, kind, body_name)
SITES = [
    (0x12192DC, 'b', 'TIERED'),
    (0x12184F0, 'bl', 'G1'),
    (0x1218508, 'bl', 'G2'),
    (0x9A4558, 'bl', 'GOLD'),
    (0x9A1820, 'bl', 'DIA'),
    (0x999E74, 'bl', 'G'),
    (0x998CAC, 'bl', 'P'),
    (0x998D0C, 'bl', 'P'),
    (0x998D40, 'bl', 'P'),
    (0x998D74, 'bl', 'P'),
    (0x998DA8, 'bl', 'P'),
    (0x122B858, 'bl', 'GOD'),
    (0x13E2EE4, 'bl', 'MP2'),
    (0x1224CD8, 'bl', 'MIX4'),
    (0x1219B84, 'bl', 'R'),
    (0x1436C30, 'bl', 'U'),
]

new = bytearray(cur)

# 0. assert farm is pristine zeros in vanilla AND in current (untouched so far)
farm_probe = 0x1B3B7F4 + 616
assert all(b == 0 for b in van[FARM:farm_probe]), 'farm not zero in vanilla!'
assert all(b == 0 for b in cur[FARM:farm_probe]), 'farm already used in current!'
print('farm pristine OK')

# TRAMP env string lives right after its 13 words (12B verbatim)
TRAMP_STR = bytes(cur[0x121A074:0x121A080])
assert TRAMP_STR.startswith(b'NECR_MOD\x00'), TRAMP_STR

# 1. lay out bodies
layout = {}
off = FARM
for name, src, nw in BODIES:
    layout[name] = (off, src, nw)
    off += nw * 4 + (len(TRAMP_STR) if name == 'TRAMP' else 0)
assert off <= 0x1B3B7F4 + 1568, hex(off)
print('farm layout:')
for name, (dst, src, nw) in layout.items():
    print(f'  {name:6s} {src:#x} -> {dst:#x} ({nw * 4}B)')


def in_body(addr):
    for name, (dst, src, nw) in layout.items():
        if src <= addr < src + nw * 4:
            return name, dst + (addr - src)
    return None, None


# 2. copy + fixup
for name, (dst, src, nw) in layout.items():
    for k in range(nw):
        a, na = src + k * 4, dst + k * 4
        w = u32(a, cur)
        if is_branch(w):
            t = br_target(a, w)
            bn, bt = in_body(t)
            nt = bt if bn else t  # internal -> farm mirror; external -> same target
            put(new, na, encode_branch(na, w, nt))
        elif is_ldrlit(w):
            raise SystemExit(f'FATAL: ldrlit in body {name} @{a:#x} (needs pool!)')
        elif is_add_pc_imm(w):
            # TRAMP: add r0,pc,#imm -> string right after code
            t = (a + 8 + (w & 0xFFF)) & 0xFFFFFFFF
            assert t == src + nw * 4, f'{name}: add-pc target {t:#x} not trailing string!'
            nt = dst + nw * 4
            put(new, na, (w & 0xFFFFF000) | ((nt - (na + 8)) & 0xFFF))
        else:
            put(new, na, w)
    if name == 'TRAMP':
        new[dst + nw * 4:dst + nw * 4 + len(TRAMP_STR)] = TRAMP_STR

# 3. restore vanilla over C1/C2 (bodies' old homes)
for s, e in [(0xB42F40, 0xB430F4), (0x1219FFC, 0x121A10C)]:
    new[s:e] = van[s:e]
print('C1/C2 restored to vanilla')

# 4. retarget sites
for addr, kind, body in SITES:
    w = u32(addr, cur)
    assert is_branch(w), f'site {addr:#x} not a branch: {w:#x}'
    if kind == 'b':
        assert (w & 0x0F000000) == 0x0A000000 and (w >> 28) == 0xE, f'site {addr:#x} not plain b'
    else:
        assert (w & 0x0F000000) == 0x0B000000, f'site {addr:#x} not bl: {w:#x}'
    put(new, addr, encode_branch(addr, w, layout[body][0]))
print('sites retargeted:', len(SITES))

SRC.write_bytes(new)
print('WROTE', SRC)
print('--- verify table (for verify_branches.py) ---')
for name, (dst, src, nw) in layout.items():
    print(f'{name} {dst:#x}')
