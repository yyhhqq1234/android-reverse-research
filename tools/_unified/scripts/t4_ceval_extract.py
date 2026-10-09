#!/usr/bin/env python3
# t4_ceval_extract.py — G4 libclient175M arm64提ceval/PyEval (只读流式, 不加载175M常驻)
# 输入: APK内 lib/arm64-v8a/libclient.so (175206232B) + formal_libclient_strings.txt (12M参照)
# 方法: ELF头解析(复用formal_libclient_head.bin 4K) + zip流式分块(4M)多模式单遍扫描, 只记count+前5偏移+上下文
# 输出: ceval_refs.txt + elf_head.txt
import struct, zipfile, pathlib
APK=r"D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）.apk"
OUT=pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_opcode")
PATS=[b'PyEval_EvalFrameDefault',b'_PyEval_EvalFrameDefault',b'ceval.c',b'NeoXPython',b'PyImport_ExecCodeModuleWithPathnames',b'redirect.nxs',b'script/redirect',b'3.11.6',b'_opcode',b'PyEval_EvalCode',b'IScriptFileSystem']
def elf_head():
    z=zipfile.ZipFile(APK); f=z.open('lib/arm64-v8a/libclient.so'); h=f.read(4096); f.close()
    assert h[:4]==b'\x7fELF' and h[4]==2 and h[18]==0xB7, "not arm64 ELF"
    e_phoff=struct.unpack('<Q',h[0x20:0x28])[0]; e_phentsize=struct.unpack('<H',h[0x36:0x38])[0]; e_phnum=struct.unpack('<H',h[0x38:0x3A])[0]
    e_shoff=struct.unpack('<Q',h[0x28:0x30])[0]; e_shentsize=struct.unpack('<H',h[0x3A:0x3C])[0]; e_shnum=struct.unpack('<H',h[0x3C:0x3E])[0]
    return h, [f"ELF64 LE arm64(aarch64 EM=183) entry={struct.unpack('<Q',h[0x18:0x20])[0]:#x} phoff={e_phoff} phentsize={e_phentsize} phnum={e_phnum} shoff={e_shoff} shentsize={e_shentsize} shnum={e_shnum}"]
def main():
    OUT.mkdir(parents=True,exist_ok=True)
    z=zipfile.ZipFile(APK); info=z.getinfo('lib/arm64-v8a/libclient.so')
    h,hl=elf_head()
    (OUT/"elf_head.txt").write_text("\n".join([f"libclient.so size={info.file_size} CRC={info.CRC:08x}"]+hl+[f"head64={h[:64].hex()}"])+"\n",encoding="utf-8")
    # 单遍流扫
    f=z.open('lib/arm64-v8a/libclient.so')
    CH=4<<20; overlap=4096; buf=b''; pos=0; total=0
    hits={p:[0,[]] for p in PATS}
    while True:
        b=f.read(CH)
        if not b: break
        total+=len(b)
        window=buf[-overlap:]+b if buf else b
        base=pos-(len(window)-len(b))
        for p in PATS:
            s=0
            while True:
                j=window.find(p,s)
                if j<0: break
                hits[p][0]+=1
                if len(hits[p][1])<5: hits[p][1].append(base+j)
                s=j+1
        buf=b; pos+=len(b)
    f.close()
    L=[f"streamed={total} expect={info.file_size} {'OK' if total==info.file_size else 'DRIFT'}"]
    for p in PATS:
        c,offs=hits[p]
        L.append(f"{p.decode(errors='replace')}: count={c} offs={[hex(o) for o in offs]}")
    # strings文本交叉 (12M, 快路)
    t=open(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_libclient_strings.txt",encoding="utf-8",errors="ignore").read()
    for kw in ["PyEval_EvalFrameDefault","ceval","NeoX","PyImport_ExecCodeModuleWithPathnames","redirect.nxs","3.11.6","_opcode"]:
        L.append(f"strings.txt '{kw}' substr={t.count(kw)}")
    L.append("路由: ceval.c+PyEval_EvalFrameDefault为opcode分发锚点, 下一步以其rodata交叉256-permutation候选 + §对照表闭环 (见t4_opcode_map.py + 报告§2)")
    (OUT/"ceval_refs.txt").write_text("\n".join(L)+"\n",encoding="utf-8")
    print("\n".join(L))
if __name__=="__main__": main()
