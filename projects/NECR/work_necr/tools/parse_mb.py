#!/usr/bin/env python3
import struct

d = open('D:/tmp/gamble_mb.bin', 'rb').read()
print('len', len(d))


class R:
    def __init__(self, d):
        self.d, self.o = d, 0

    def s32(self):
        v = struct.unpack_from('<i', self.d, self.o)[0]
        self.o += 4
        return v

    def u8(self):
        v = self.d[self.o]
        self.o += 1
        return v

    def align(self, n=4):
        self.o = (self.o + n - 1) & ~(n - 1)


r = R(d)
r.o += 12  # gameobject pptr
r.u8()  # enabled
r.align()
print('script pptr:', r.s32(), r.o)
r.o += 8
nm_len = r.s32()
print('name:', d[r.o:r.o + nm_len])
r.o += nm_len
r.align()

# 1. gambleItemClass[]
n = r.s32()
print('gambleItemClass n =', n)
for _ in range(n):
    tier = r.s32()
    m = r.s32()
    ids = [r.s32() for _ in range(m)]
    print(f'  tier={tier} ids={ids}')
# 2. gambleItemClass_T[]
n = r.s32()
print('gambleItemClass_T n =', n)
for _ in range(n):
    tier = r.s32()
    m = r.s32()
    ids = [r.s32() for _ in range(m)]
    print(f'  tier={tier} ids={ids}')
print('off after pools:', hex(r.o))
# skip 4 pptrs
r.o += 48
print('slot amount:', r.s32())
# Gambles array
n = r.s32()
print('gambles n =', n)
r.o += 12 * n
n = r.s32()
print('gambleslots n =', n)
r.o += 12 * n
print('cool_max:', r.s32())
r.o += 24  # 2 pptrs
rest = [r.s32() for _ in range(11)]
print('cool,allbuy,g10..g01:', rest)
print('final off:', hex(r.o))
