#!/usr/bin/env python3
"""Final: rebuild all >=5-reg push gates as split-push4 (houdini-safe).

Root cause (v10 diamond): single LDM/STM with 8/11 regs faults under houdini
in some caller contexts (AddToDia). Proven: split-push4+call works (v10d),
push4+call works (R/U/G), pushless works (TIERED). Convert: G1/G2/GOLD/GOD/
MP2/MIX4/P to FARM2; DIA keeps proven split body; TIERED/R/U/G/TRAMP unchanged.
Run on canonical v10 tree (restores nothing; appends + retargets 11 sites).
"""
import struct
import pathlib

W = pathlib.Path(r'D:\安卓逆向\NECR\work_necr')
SRC = W / 'src/lib/armeabi-v7a/libil2cpp.so'
FARM2 = 0x1AABCE4
TRAMP = 0x1B3B7F4

PUSH8 = 0xE92D407F
POP8 = 0xE8BD407F
PUSH11 = 0xE92D4FF8
POPPC11 = 0xE8BD8FF8  # {r3-r8,sb,sl,fp,pc}

S8 = ([0xE92D000F, 0xE92D4070], [0xE8BD4070, 0xE8BD000F])  # split push8/pop8
S11PUSH = [0xE92D0078, 0xE92D0780, 0xE92D4800]  # {r3-r6},{r7,r8,sb,sl},{fp,lr}
S11POPLR = [0xE8BD0078, 0xE8BD0780, 0xE8BD4800]
S11POPPC = [0xE8BD0078, 0xE8BD0780, 0xE8BD8800]  # {fp,pc}

# (name, src_start, nwords, {word_index: replacement_list})
BODIES = [
    ('G1', 0x1B3B8A0, 10, {0: S8[0], 4: S8[1]}),
    ('G2', 0x1B3B8C8, 8, {0: S8[0], 4: S8[1]}),
    ('GOLD', 0x1B3B8E8, 8, {0: S8[0], 4: S8[1]}),
    ('GOD', 0x1B3B978, 12, {0: S8[0], 4: S8[1]}),
    ('MP2', 0x1B3B9E0, 11, {0: S8[0], 4: S8[1]}),
    ('MIX4', 0x1B3BA0C, 21, {0: S8[0], 4: S8[1]}),
    ('P', 0x1B3B944, 13, {0: S11PUSH, 6: S11POPPC, 12: S11POPPC}),
]
SITES = [(0x12184F0, 'G1'), (0x1218508, 'G2'), (0x9A4558, 'GOLD'),
         (0x122B858, 'GOD'), (0x13E2EE4, 'MP2'), (0x1224CD8, 'MIX4'),
         (0x998CAC, 'P'), (0x998D0C, 'P'), (0x998D40, 'P'),
         (0x998D74, 'P'), (0x998DA8, 'P')]

DIA_SPLIT = [0xE92D000F, 0xE92D4070, 0xE3A00008, None, 0xE3500000,
             0xE8BD4070, 0xE8BD000F, 0x00811008, 0x10811508, 0xE12FFF1E]
DIA_SPLIT_AT = 0x1B3BC64


def u32(a, buf):
    return struct.unpack('<I', buf[a:a + 4])[0]


def put(buf, a, v):
    struct.pack_into('<I', buf, a, v & 0xFFFFFFFF)


def is_branch(w):
    return (w & 0x0E000000) == 0x0A000000 or \
        ((w & 0x0F000000) == 0 and (w >> 28) != 0xF)


def br_target(addr, w):
    off = w & 0xFFFFFF
    if off & 0x800000:
        off -= 0x1000000
    return (addr + 8 + (off << 2)) & 0xFFFFFFFF


def enc_branch(addr, w, target):
    return (w & 0xFF000000) | (((target - (addr + 8)) // 4) & 0xFFFFFF)


d = bytearray(SRC.read_bytes())
van = (W / 'trial/libil2cpp.so').read_bytes()

# FARM2 freeness: zeros in vanilla AND current, no reloc possible (zeros)
probe_end = FARM2 + 420
assert all(b == 0 for b in van[FARM2:probe_end]), 'FARM2 not zero vanilla!'
assert all(b == 0 for b in d[FARM2:probe_end]), 'FARM2 dirty!'
print('FARM2 pristine OK')

layout = {}
off = FARM2
result_words = {}  # new_addr -> word (pre-branch-fixup), plus src-map
new_list = []  # (dst, [words], [(old_target_idx -> ...)])
for name, src, nw, subs in BODIES:
    # verify expected push/pop words present
    for idx, rep in subs.items():
        w = u32(src + idx * 4, d)
        if rep in (S8[0], S8[1]):
            assert w in (PUSH8, POP8), f'{name}[{idx}]={w:#x}'
        else:
            assert w in (PUSH11, POPPC11), f'{name}[{idx}]={w:#x}'
    # expand
    exp = []
    old_index_of_new = []  # for each new word: old word index (for internal targets)
    for k in range(nw):
        if k in subs:
            for rw in subs[k]:
                exp.append(rw)
                old_index_of_new.append(k)
        else:
            exp.append(u32(src + k * 4, d))
            old_index_of_new.append(k)
    # prefix map: old idx -> new idx
    pref = {}
    for ni, oi in enumerate(old_index_of_new):
        pref.setdefault(oi, ni)
    layout[name] = off
    for ni, w in enumerate(exp):
        na = off + ni * 4
        if is_branch(w):
            t = br_target(src + old_index_of_new[ni] * 4, w)
            if src <= t < src + nw * 4:
                nt = off + pref[(t - src) // 4] * 4
            else:
                nt = t
            put(d, na, enc_branch(na, w, nt))
        else:
            put(d, na, w)
    print(f'  {name:4s} {src:#x}({nw}w) -> {off:#x}({len(exp)}w)')
    off += len(exp) * 4
print('FARM2 end', hex(off))
assert off <= FARM2 + 1468

# DIA split body (proven v10d): re-emit at same spot
for k, w in enumerate(DIA_SPLIT):
    na = DIA_SPLIT_AT + k * 4
    if w is None:
        w0 = 0xEB000000 | (((TRAMP - (na + 8)) // 4) & 0xFFFFFF)
        put(d, na, w0)
    else:
        put(d, na, w)
print('DIA split re-emitted')

# retarget sites
for addr, body in SITES:
    w = u32(addr, d)
    assert (w & 0x0F000000) == 0x0B000000, f'site {addr:#x} not bl'
    put(d, addr, enc_branch(addr, w, layout[body]))
print('sites retargeted:', len(SITES))
SRC.write_bytes(d)
print('WROTE')
for name, a in layout.items():
    print(f'{name} {a:#x}')
print(f'DIA {DIA_SPLIT_AT:#x}')
