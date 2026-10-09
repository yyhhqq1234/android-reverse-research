"""Disassemble one method from shipped classes4.dex (ground truth for VerifyError)."""
import struct, zipfile, sys

APK = r'D:\APK-Reverse\projects\SUBR\SUBR_esp.apk'
dex = zipfile.ZipFile(APK).read('classes4.dex')
def u16(o): return struct.unpack('<H', dex[o:o+2])[0]
def u32(o): return struct.unpack('<I', dex[o:o+4])[0]

def sstr(off):
    v, sh, p = 0, 0, off
    while True:
        b = dex[p]; p += 1
        v |= (b & 0x7f) << sh
        if not (b & 0x80): break
        sh += 7
    return dex[p:p+v].decode('utf-8', 'replace')

ns, so = u32(0x38), u32(0x3C)
strings = []
for i in range(ns):
    strings.append(sstr(u32(so + i*4)))
def tname(tid):
    return strings[u32(u32(0x44) + tid*4)]

# method_ids
nm, mo = u32(0x58), u32(0x5C)
methods = []
for i in range(nm):
    o = mo + i*8
    methods.append((u16(o), u16(o+2), u32(o+4)))  # class_idx, proto_idx, name_idx
# class_defs -> class_data
nc, co = u32(0x60), u32(0x64)
target = ('Lcom/android/support/Preferences;', 'changeFeatureLong')
found = None
for i in range(nc):
    o = co + i*32
    cname = tname(u32(o))
    if cname != target[0]: continue
    print('class found, def_off=%d' % o)
    cdo = u32(o+24)
    print('class_data_off=%d' % cdo)
    cdo = u32(o+24)
    # class_data_item: uleb128 sizes then lists
    p = cdo
    def uleb():
        global p
        v, sh = 0, 0
        while True:
            b = dex[p]; p += 1
            v |= (b & 0x7f) << sh
            if not (b & 0x80): break
            sh += 7
        return v
    nsf, nst, nsd, nsv = uleb(), uleb(), uleb(), uleb()
    for _ in range(nsf + nst):
        uleb(); uleb()
    last = 0
    for _ in range(nsd):
        last += uleb(); acc = uleb(); coff = uleb()
        if strings[methods[last][2]] == target[1]:
            found = coff
            break
assert found, 'method code not found'
regs = u16(found); ins = u16(found+2); outs = u16(found+4)
nunits = u32(found+12)
print('regs=%d ins=%d outs=%d units=%d' % (regs, ins, outs, nunits))
code = found + 16
# method_ids names for invoke targets
OPS = {0x1a:'const-string',0x12:'const/4',0x01:'move',0x04:'move-wide',0x07:'move-object',
       0x1c:'check-cast',0x0e:'return-void',0x54:'iget?',0x62:'sget-object',0x6e:'invoke-virtual',
       0x6f:'invoke-super',0x70:'invoke-direct',0x71:'invoke-static',0x72:'invoke-interface',
       0x74:'invoke-static/range',0x75:'invoke-virt/range',0x09:'move-wide/from16',0x1f:'check-cast2'}
p = code; end = code + nunits*2
while p < end:
    off = (p - code)//2
    op = dex[p]
    name = OPS.get(op, 'op_%02x' % op)
    if op in (0x71,0x6e,0x70,0x72,0x6f):  # 35c: B|A|op, meth_idx, regs
        a = dex[p+1]; n = a >> 4
        midx = u16(p+2)
        regs5 = [dex[p+4] & 0xf, dex[p+4] >> 4, dex[p+5] & 0xf, dex[p+5] >> 4]
        mn = strings[methods[midx][2]]; mc = tname(methods[midx][0])
        print('0x%02x: %s {%s}(n=%d) -> %s.%s' % (off, name, ','.join('v%d' % r for r in regs5[:n]), n, mc.split('/')[-1], mn))
        p += 6
    elif op in (0x74,0x75,0x76):  # 3rc: B|A|op, meth_idx, NNNN
        a = dex[p+1]; n = a >> 4
        midx = u16(p+2); base = u16(p+4)
        mn = strings[methods[midx][2]]; mc = tname(methods[midx][0])
        print('0x%02x: %s {v%d..v%d}(n=%d) -> %s.%s' % (off, name, base, base+n-1, n, mc.split('/')[-1], mn))
        p += 6
    elif op in (0x01,0x07,0x04):
        a = dex[p+1]
        print('0x%02x: %s v%d, v%d' % (off, name, a & 0xf, a >> 4)); p += 2
    elif op == 0x09:
        print('0x%02x: move-wide/from16 v%d, v%d' % (off, u16(p+2), u16(p+4))); p += 6
    elif op == 0x1a:
        print('0x%02x: const-string v%d, %s' % (off, dex[p+1], strings[u16(p+2)][:40])); p += 4
    elif op == 0x12:
        print('0x%02x: const/4 v%d, %d' % (off, dex[p+1] & 0xf, dex[p+1] >> 4)); p += 2
    elif op == 0x62:
        print('0x%02x: sget-object v%d, ...' % (off, dex[p+1])); p += 4
    elif op == 0x1c:
        print('0x%02x: check-cast v%d' % (off, dex[p+1])); p += 4
    elif op == 0x0e:
        print('0x%02x: return-void' % off); p += 2
    elif op == 0x00:
        print('0x%02x: nop' % off); p += 2
    else:
        print('0x%02x: UNKNOWN op %02x (b1=%02x)' % (off, op, dex[p+1])); p += 2
        if p > code + 0x60: break
