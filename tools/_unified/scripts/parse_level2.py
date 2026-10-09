#!/usr/bin/env python3
"""Parse level2 serialized asset -> GambleManager pools + grade thresholds."""
import struct

F = 'D:/安卓逆向/NECR/work_necr/src/assets/bin/Data/level2'
d = open(F, 'rb').read()


class R:
    def __init__(self, d, o=0):
        self.d, self.o = d, o

    def u8(self):
        v = self.d[self.o]
        self.o += 1
        return v

    def u32(self):
        v = struct.unpack_from('<I', self.d, self.o)[0]
        self.o += 4
        return v

    def s32(self):
        v = struct.unpack_from('<i', self.d, self.o)[0]
        self.o += 4
        return v

    def s64(self):
        v = struct.unpack_from('<q', self.d, self.o)[0]
        self.o += 8
        return v

    def align(self, n=4):
        self.o = (self.o + n - 1) & ~(n - 1)

    def blob(self, n):
        v = self.d[self.o:self.o + n]
        self.o += n
        return v

    def string(self):
        n = self.u32()
        s = self.blob(n).decode('utf-8', errors='replace')
        self.align()
        return s

    def pptr(self):
        f = self.s32()
        p = self.s64()
        return (f, p)


r = R(d)
meta_size, file_size, version, data_off = r.u32(), r.u32(), r.u32(), r.u32()
print(f'version={version} data_off={hex(data_off)} meta={meta_size}')
r.u8()
r.blob(3)
u我国 = r.string()
print('unity:', u我国)
r.u32()  # platform
tte = r.u8()
r.align()
print('typetree:', bool(tte))
if tte:
    # skip typetree: num types + nodes (each node fixed 26? + strings)
    ntypes = r.u32()
    for _ in range(ntypes):
        r.s32()  # class id
        r.u8()   # stripped
        r.u8()   # script type index? (v22: scriptTypeIndex u16?)
        # NOTE: format varies; attempt generic skip via node count
        nnodes = r.u32()
        r.s32()  # script hash? / old size?
        for _ in range(nnodes):
            r.u16()  # version
            r.u8()   # level
            r.u8()   # typeflags
            r.u32()  # typestr offset
            r.u32()  # namestr offset
            r.u32()  # bytesize
            r.u32()  # index
            r.u32()  # metaflag
    # string buffer
    sb = r.u32()
    r.blob(sb)
    r.align()
nobj = r.u32()
print('objects:', nobj)
objs = []
for _ in range(nobj):
    r.align(8)
    pid = r.s64()
    start = r.u32()
    size = r.u32()
    tidx = r.s32()
    cls = r.u16()
    r.u16()  # destroyed/flags
    objs.append((pid, start, size, tidx, cls))
print('sample:', objs[:3])

# find MonoScript GambleManager
gm_pid = None
for pid, start, size, tidx, cls in objs:
    if cls == 115:
        rr = R(d, data_off + start)
        rr.pptr()
        rr.u8()
        rr.align()
        try:
            name = rr.string()
        except Exception:
            continue
        if name == 'GambleManager':
            gm_pid = pid
            print('GambleManager script pid:', pid)
            break
assert gm_pid

for pid, start, size, tidx, cls in objs:
    if cls != 114:
        continue
    rr = R(d, data_off + start)
    rr.pptr()          # gameobject
    rr.u8()            # enabled
    rr.align()
    f, p = rr.pptr()   # script
    if p != gm_pid:
        continue
    print('FOUND GambleManager instance, size', size)
    nm = rr.string()   # m_Name
    print('obj name:', nm)

    def arr_int():
        n = rr.s32()
        return [rr.s32() for _ in range(n)]

    # 1. gambleItemClass[]
    n = rr.s32()
    print('gambleItemClass n =', n)
    for _ in range(n):
        tier = rr.s32()
        ids = arr_int()
        print(f'  tier={tier} ids={ids}')
    # 2. gambleItemClass_T[]
    n = rr.s32()
    print('gambleItemClass_T n =', n)
    for _ in range(n):
        tier = rr.s32()
        ids = arr_int()
        print(f'  tier={tier} n_units={len(ids)} ids={ids}')
    # 3-6. pptr x4
    for _ in range(4):
        rr.pptr()
    slot_amt = rr.s32()
    print('slot amount:', slot_amt)
    # 8. Gambles pptr array
    n = rr.s32()
    for _ in range(n):
        rr.pptr()
    # 9. Gambleslots pptr array
    n = rr.s32()
    for _ in range(n):
        rr.pptr()
    cool_max = rr.s32()
    rr.pptr()
    rr.pptr()  # noqa
    rest = [rr.s32() for _ in range(11)]
    print('cool_max:', cool_max)
    print('cool,allbuy,g10..g01:', rest)
    break
