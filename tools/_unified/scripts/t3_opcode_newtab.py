#!/usr/bin/env python3
# t3_opcode_新表.py — G3 opcode新表 (3.11 shuffle实锤 + 新表骨架, 不套T3旧2.7映射)
# 输入(只读): APK内Lib.npk (589 stdlib pyc 3.11) + formal_libclient_strings.txt (3.11.6证据)
# 方法: Lib顶层50样本 first-byte/全字节直方图 vs CPython3.11标准 (opcode.opmap参照, 非语义dis)
# 输出: opcode_hist.txt + opcode_newtab.json (shuffle证据 + 新表路由, 待libclient ceval对照闭环)
import struct, zlib, marshal, collections, json, pathlib, zipfile, re
APK=r"D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）.apk"
STR=r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_libclient_strings.txt"
OUT=pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_nxs")
def ex(data,psz,rsz,c2):
    v3=rsz; v4=c2
    if psz<0x81: off,ln=0,psz
    else: off=(v3>>1)%(psz-0x80); ln=((v4<<1)&0xFFFFFFFF)%0x60+0x20
    key=(v3^v4)&0xFF
    b=bytearray(data)
    for i in range(off,min(off+ln,psz)): b[i]^=key; key=(key+1)&0xFF
    return bytes(b)
def main():
    OUT.mkdir(parents=True,exist_ok=True)
    L=[]
    z=zipfile.ZipFile(APK)
    d=z.read("assets/packages/python3/Lib.npk")
    magic,n,u1,eem,hm,eoff=struct.unpack('<6I',d[:24])
    L.append(f"Lib.npk n={n} eem={eem} hm={hm} (F3沿用, eem256/hm0新代系)")
    firsts=collections.Counter(); hist=collections.Counter(); files=[]
    for idx in range(min(n,50)):
        e=d[eoff+idx*28:eoff+(idx+1)*28]
        id_,off,psz,rsz,c1,c2,fl=struct.unpack('<7I',e)
        dec=zlib.decompress(ex(d[off:off+psz],psz,rsz,c2))
        assert dec[:4]==bytes.fromhex('a70d0d0a'), f"e{idx} not 3.11 pyc"
        co=marshal.loads(dec[16:])
        files.append(co.co_filename)
        code=co.co_code
        if len(code)>=2: firsts[code[0]]+=1
        for i in range(0,len(code),2): hist[code[i]]+=1
    L.append(f"sample50 files[0:5]={files[:5]}")
    L.append(f"first-byte top20={firsts.most_common(20)}")
    L.append(f"opcode-byte top30={hist.most_common(30)}")
    # 标准3.11参照: RESUME151 vs CACHE0 (本地3.12 opcode表, 仅作名->号参照, F3已验证本地compile首字节151)
    import opcode as O, py_compile
    L.append(f"local opcode RESUME={O.opmap.get('RESUME')} CACHE={O.opmap.get('CACHE')} BINARY_OP={O.opmap.get('BINARY_OP')} CALL={O.opmap.get('CALL')}")
    # shuffle判定: 顶层首字节系统性0 (F3: 0/50共? vs RESUME151) + 151仍出现665次(非整体偏移)
    top0=firsts.get(0,0); top151=hist.get(151,0)
    L.append(f"shuffle: first0={top0}/50 hist151={top151} hist0={hist.get(0,0)} -> {'SHUFFLE实锤(nxmod2洗牌, 非整体偏移)' if top0>30 and top151>0 else '待复核'}")
    # libclient 3.11.6证据 (只读strings文本, 不扫so二进制)
    t=open(STR,encoding='utf-8',errors='ignore').read()
    L.append(f"libclient python/3.11.6+nxmod2+h55mod10 hits={t.count('3.11.6')} marshal={t.count('marshal')} py2.7={t.count('Python-2.7')}")
    L.append("作废清单: opcode27.py(LOAD_CONST100/STORE125/...) / py27dis.py整条 / denpk2 mapping::OPCODE_MAPPING缺失文件 — 一律不用于正式版")
    L.append("新表路由: Lib标准3.11同名文件 vs 游戏script1 dump对照得映射; 经PyEval_EvalFrameDefault+ceval.c逆出(含伪opcode组合, 需修hasjrel/hasjabs+linetable/exceptiontable, 非2.7 lnotab) — 见报告§4")
    (OUT/"opcode_hist.txt").write_text("\n".join(L)+"\n",encoding="utf-8")
    tab={"gen":"formal_core_nxs","py":"3.11.6+nxmod2+h55mod10","old27":"ABANDONED","shuffle":{"first0_50":top0,"hist151":top151,"hist0":hist.get(0,0)},"route":"LibStdVsDump via PyEval_EvalFrameDefault+ceval.c","need":["libclient ceval逆","NeoXPython动态对照","script1 dump"] }
    (OUT/"opcode_newtab.json").write_text(json.dumps(tab,ensure_ascii=False,indent=2),encoding="utf-8")
    print("\n".join(L)); print("wrote opcode_newtab.json")
if __name__=="__main__": main()
