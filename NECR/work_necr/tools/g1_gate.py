"""G1 gate: validate脱壳交付物 (decrypted libil2cpp.so / metadata / dex).
Usage: python g1_gate.py <file-or-dir>
Checks: ELF header (32-bit ARM), PT_DYNAMIC present, Il2Cpp strings,
        metadata magic 0xFAB11BAF + version, dex header sanity.
Read-only: never modifies inputs.
"""
import os, struct, sys

def check_elf(path):
    r = {}
    with open(path, 'rb') as f:
        head = f.read(64)
    if head[:4] != b'\x7fELF':
        return {'ok': False, 'reason': 'not ELF'}
    r['class'] = 'ELF32' if head[4] == 1 else 'ELF64'
    r['machine'] = struct.unpack('<H', head[18:20])[0]
    r['is_arm32'] = (head[4] == 1 and r['machine'] == 40)
    # program headers
    e_phoff = struct.unpack('<I', head[28:32])[0]
    e_phentsize = struct.unpack('<H', head[42:44])[0]
    e_phnum = struct.unpack('<H', head[44:46])[0]
    with open(path, 'rb') as f:
        f.seek(e_phoff)
        phdrs = f.read(e_phentsize * e_phnum)
    types = set()
    has_rx = False
    for i in range(e_phnum):
        p = phdrs[i * e_phentsize:(i + 1) * e_phentsize]
        if len(p) < 32:
            break
        p_type, _, _, _, _, _, p_flags, _ = struct.unpack('<IIIIIIII', p[:32])
        types.add(p_type)
        if p_type == 1 and (p_flags & 5) == 5:
            has_rx = True
    r['has_pt_dynamic'] = (2 in types)
    r['has_rx_seg'] = has_rx
    r['phnum'] = e_phnum
    with open(path, 'rb') as f:
        blob = f.read()
    r['has_il2cpp_syms'] = (b'il2cpp' in blob.lower() and b'Il2Cpp' in blob)
    r['size'] = len(blob)
    r['ok'] = r['is_arm32'] and r['has_pt_dynamic'] and r['has_il2cpp_syms']
    if not r['ok']:
        r['reason'] = 'missing: ' + ','.join(
            [k for k in ('is_arm32', 'has_pt_dynamic', 'has_il2cpp_syms') if not r[k]])
    return r

def check_metadata(path):
    with open(path, 'rb') as f:
        head = f.read(16)
    magic, ver = struct.unpack('<Ii', head[:8])
    ok = (magic == 0xFAB11BAF)
    return {'ok': ok, 'magic': hex(magic), 'version': ver if ok else None,
            'size': os.path.getsize(path)}

def check_dex(path):
    with open(path, 'rb') as f:
        head = f.read(112)
    if len(head) < 112 or not head.startswith(b'dex\n'):
        return {'ok': False, 'reason': 'bad magic'}
    fsize = struct.unpack('<I', head[32:36])[0]
    real = os.path.getsize(path)
    return {'ok': fsize == real, 'dex_version': head[4:7].decode(errors='replace'),
            'header_size': fsize, 'real_size': real,
            'reason': None if fsize == real else f'header file_size {fsize} != real {real} (truncated/padded)'}

def main():
    if len(sys.argv) < 2:
        print('usage: python g1_gate.py <file-or-dir>'); return 2
    target = sys.argv[1]
    files = []
    if os.path.isdir(target):
        for dp, _, fn in os.walk(target):
            for x in fn:
                files.append(os.path.join(dp, x))
    else:
        files = [target]
    code = 0
    for p in sorted(files):
        n = os.path.basename(p).lower()
        with open(p, 'rb') as f:
            magic = f.read(4)
        if magic == b'\x7fELF':
            r = check_elf(p)
            print(f"[ELF] {p} -> {'PASS' if r['ok'] else 'FAIL'} {r}")
        elif n.endswith('.dat') or magic == b'\xaf\x1b\xb1\xfa':
            r = check_metadata(p)
            print(f"[META] {p} -> {'PASS' if r['ok'] else 'FAIL'} {r}")
        elif magic[:3] in (b'dex',) or n.endswith('.dex'):
            r = check_dex(p)
            print(f"[DEX] {p} -> {'PASS' if r.get('ok') else 'FAIL'} {r}")
        else:
            print(f"[SKIP] {p} (unknown type)")
            continue
        if not r.get('ok'):
            code = 1
    print('G1 RESULT:', 'ALL PASS' if code == 0 else 'HAS FAILURES (see above; do not proceed to Il2CppDumper)')
    return code

if __name__ == '__main__':
    sys.exit(main())
