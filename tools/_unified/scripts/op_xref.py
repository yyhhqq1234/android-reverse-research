import struct
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
p = 'D:/APK-Reverse/projects/DWRG/work_dwrg/op_libclient_runtime.so'
d = open(p, 'rb').read()
e_phoff, = struct.unpack('<Q', d[0x20:0x28])
e_phentsize, e_phnum = struct.unpack('<HH', d[0x36:0x3A])
segs = []
for i in range(e_phnum):
    o = e_phoff + i * e_phentsize
    p_type, p_flags, p_off, p_vaddr, p_paddr, p_filesz, p_memsz, p_align = struct.unpack('<IIQQQQQQ', d[o:o+56])
    if p_type == 1:
        segs.append((p_vaddr, p_off, p_filesz, p_flags))
rx = [s for s in segs if s[3] == 5][0]
base, foff, fsz = 0x3b3b000, 0x3b3b000, 0x5fb2624
print('text vaddr', hex(base), 'filesz', hex(fsz))
code = d[foff:foff+fsz]
targets = {'handle_reconnect_fail': 0x12e656e, 'active_disconnect': 0x132e137,
           'kcp_reconnect_enable': 0x1347f98, 'conn_disconnect_reason': None}
# find conn_disconnect_reason addr
t4 = d.find(b'conn_disconnect_reason')
targets['conn_disconnect_reason'] = t4
print(targets)
md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
md.detail = True
pages = {t & ~0xfff: t for t in targets.values() if t}
hits = []
insns = list(md.disasm(code, base))
print('disasm n', len(insns))
straddrs = sorted(targets.values())
for ins in insns:
    try:
        ops = ins.operands
        if ins.mnemonic in ('adrp', 'adr') and len(ops) == 2:
            imm = ops[1].value.imm
            if imm in pages:
                hits.append((ins.address, ins.mnemonic, ins.op_str, pages[imm]))
        elif ins.mnemonic == 'ldr' and len(ops) == 2:
            try:
                mem = ops[1].value.mem
                if mem.base == 0 and mem.index == 0:
                    tgt = ins.address + mem.disp
                    for s in straddrs:
                        if tgt <= s < tgt + 8:
                            hits.append((ins.address, 'ldr-lit', ins.op_str, s))
                            break
            except Exception:
                pass
    except Exception:
        continue
for h in hits[:40]:
    print(hex(h[0]), h[1], h[2], '->', hex(h[3]))
print('hits', len(hits))
open('D:/APK-Reverse/projects/DWRG/work_dwrg/op_xref.txt', 'w').write('\n'.join('%x %s %s -> %x' % h for h in hits))
