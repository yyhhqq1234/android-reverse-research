"""Check libil2cpp segment mapping + verify the W2S wrapper disassembly."""
import struct
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

P = r'D:\APK-Reverse\projects\SUBR\SUBR\lib\arm64-v8a\libil2cpp.so'
d = open(P, 'rb').read()
E = '<'
def u16(o): return struct.unpack(E+'H', d[o:o+2])[0]
def u32(o): return struct.unpack(E+'I', d[o:o+4])[0]
def u64(o): return struct.unpack(E+'Q', d[o:o+8])[0]

# --- program headers ---
phoff, phentsize, phnum = u64(0x20), u16(0x36), u16(0x38)
print('PT_LOAD segments:')
loads = []
for i in range(phnum):
    o = phoff + i*phentsize
    p_type, p_flags, p_offset, p_vaddr, p_paddr, p_filesz, p_memsz, p_align = struct.unpack(E+'IIQQQQQQ', d[o:o+56])
    if p_type == 1:
        loads.append((p_offset, p_vaddr, p_filesz, p_flags))
        print('  off=0x%-9x vaddr=0x%-9x filesz=0x%-9x flags=%d  same=%s' %
              (p_offset, p_vaddr, p_filesz, p_flags, p_offset == p_vaddr))

def va2off(va):
    for p_offset, p_vaddr, p_filesz, fl in loads:
        if fl & 1 and p_vaddr <= va < p_vaddr + p_filesz:
            return p_offset + (va - p_vaddr)
    for p_offset, p_vaddr, p_filesz, fl in loads:
        if p_vaddr <= va < p_vaddr + p_filesz:
            return p_offset + (va - p_vaddr)
    return None

md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
def show(va, n=22, label=''):
    off = va2off(va)
    print('--- %s VA=0x%x -> file 0x%x ---' % (label, va, off if off else -1))
    if off is None:
        print('   (not mapped)'); return
    for ins in md.disasm(d[off:off+n*4], va):
        print('   %8x: %-26s %s' % (ins.address, ins.mnemonic + ' ' + ins.op_str,
                                    '<== W2S_Injected' if ins.address == 0xcb4028 or (ins.mnemonic == 'b' and '0xcb4028' in ins.op_str) else ''))

show(0xcb3fac, 24, 'Camera.WorldToScreenPoint (managed)')
show(0x1762e68, 12, 'Transform.get_position (managed, proven working)')
show(0xcd6544, 8,  'GameController.Update (proven firing)')
