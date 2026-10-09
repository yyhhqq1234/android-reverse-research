#!/usr/bin/env python3
# t3_script1_fkpw.py — G3 script1 marshal3.11 容器取证 (FKPW+SKPW, 不解游戏码, 只定界)
# 输入(只读): formal_core_wpk/script1_apk.wpk(201M)+script1_device.wpk(137M)+script_device.idx(SKPW 252900B)
# 方法: 头解析 + SKPW条目走表 + FKPW分段定位 + 加密性证明(无明文NXS3/pyc), marshal版本由Lib+libclient旁证
# 不做: FKPW硬解密 / 套T3 2.7 unpack_npk(assert comp2/enc0已作废)
import struct, pathlib, hashlib
W=pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_wpk")
OUT=pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_nxs")
def fkp_info(p):
    d=open(p,'rb').read(128)
    lines=[f"{pathlib.Path(p).name} size={pathlib.Path(p).stat().st_size}"]
    lines.append(f" head64={d[:64].hex()}")
    lines.append(f" magic={d[:4]!r} u32le0-7={[f'{v:08x}' for v in struct.unpack('<8I',d[:32])]}")
    return lines
def skp_scan(p,limit=12):
    d=open(p,'rb').read()
    lines=[f"idx {pathlib.Path(p).name} size={len(d)} magic={d[:4]!r}"]
    lines.append(f" u32le head={struct.unpack('<8I',d[:32])}")
    # SKPW条目启发式: 头后每~?字节一个entry (0x..0500 b1..), 先做条目数估计+采样
    # 已知Documents/res script1 137M + thd81 + preload[0,15]链, idx应覆盖script0/script1/script.idx等
    # 此处不硬套NXPK 28B条目, 只记录可验证的扫描事实
    lines.append(f" sha head16={hashlib.sha256(d[:65536]).hexdigest()[:16]} fullsha={hashlib.sha256(d).hexdigest()[:16]}")
    # 搜索SKPW内可打印词
    txt=d[:262144]
    for kw in [b'script',b'thd',b'preload',b'cloud']:
        c=txt.count(kw)
        lines.append(f" kw {kw!r} in-first256K count={c}")
    return lines
def enc_proof(wpk,limit=2*1024*1024):
    # 加密性证明: 首2M + 尾2M + 中段FKPW2附近无明文 NXS3/NXPK/pyc-magic
    import os
    sz=os.path.getsize(wpk)
    f=open(wpk,'rb')
    segs=[(0,min(limit,sz)),(max(0,sz-limit),sz)]
    # 第二FKPW在192703154 (apk版实测), 若存在则加采
    f.seek(0); head=f.read(4)
    lines=[f"enc-proof {pathlib.Path(wpk).name} size={sz}"]
    for s,e in segs:
        f.seek(s); b=f.read(e-s)
        for m in [b'NXS3',b'NXPK',bytes.fromhex('a70d0d0a'),b'FKPW',b'SKPW']:
            lines.append(f"  seg[{s}:{e}] {m.hex()[:16]} count={b.count(m)} first={b.find(m)}")
    # 第二FKPW定位 (只扫64K步进找FKPW, 省内存)
    f.seek(0); n=0; second=-1
    CH=1<<20
    pos=0
    while True:
        b=f.read(CH)
        if not b: break
        j=b.find(b'FKPW')
        if j>=0:
            n+=1
            if pos+j!=0: second=pos+j
        pos+=len(b)
        if pos>220*1024*1024: break
    lines.append(f" FKPW count(1M步进扫描)>={n} second_off={second}")
    return lines
def main():
    OUT.mkdir(parents=True,exist_ok=True)
    L=[]
    L.append("# script1 FKPW/SKPW 取证 (只读, 不解密游戏码)")
    for f in [W/"script1_apk.wpk",W/"script1_device.wpk"]:
        if f.exists(): L.extend(fkp_info(str(f)))
        else: L.append(f"{f.name} MISSING")
    idx=W/"script_device.idx"
    if idx.exists(): L.extend(skp_scan(str(idx)))
    else: L.append("script_device.idx MISSING")
    for f in [W/"script1_apk.wpk",W/"script1_device.wpk"]:
        if f.exists(): L.extend(enc_proof(str(f)))
    # 双版对照 (T2): 首包201326608 sha d5662a.. / 云端137363472 md5 89ffc145.. 瘦身46M
    L.append("dual: apk201326608(stored,CRC3683027537,sha256 d5662a3d..03c0) vs device137363472(md5 89ffc145..) 瘦身46M=2.104.125221.3034860增量 (T2沿用)")
    L.append("marshal3.11旁证: Lib.npk 589全a70d0d0a(3.11.6+nxmod2) + libclient 3.11.6x35处 (见t3_opcode_新表.py), script1游戏码同代系, 不套2.7 'c'+8B头")
    L.append("作废: unpack_npk.py assert(comp==2,enc==0) / npk2x raw-other1729链 / T3 2.7 mapping — 均不用于FKPW/SKPW")
    L.append("dump门: FKPW解密需动态dump (script/redirect.nxs + PyImport_ExecCodeModuleWithPathnames hook), 本阶段只定界不定语义")
    (OUT/"script1_fkpw.txt").write_text("\n".join(L)+"\n",encoding="utf-8")
    print("\n".join(L))
if __name__=="__main__": main()
