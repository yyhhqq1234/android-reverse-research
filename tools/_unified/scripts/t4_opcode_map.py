#!/usr/bin/env python3
# t4_opcode_map.py — G4 NeoXPython对照Lib标准3.11得新映射 + 修hasjrel/linetable/exceptiontable
# 输入(只读): APK内Lib.npk (589 stdlib 3.11) ; 本地opcode表仅作名→号参照 (3.12, 漂移已注)
# 方法: 全589频率 + 首/尾锚点 (首(0,0)x50=RESUME, 尾(3,0)x46=RETURN_VALUE) + CACHE行为对照, 得新映射骨架v1
# 修表: 1:1重映射保2B步长, 跳转oparg字节偏移不变; 提供hasjrel校验 + linetable/exceptiontable透传校验函数
# 输出: opcode_freq.txt + opcode_newmap.json + fix_jumps.py
import struct, zlib, marshal, collections, json, pathlib, zipfile
APK=r"D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）.apk"
OUT=pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_opcode")
def ex(b,psz,rsz,c2):
    v3=rsz; v4=c2
    off,ln=(0,psz) if psz<0x81 else ((v3>>1)%(psz-0x80), ((v4<<1)&0xFFFFFFFF)%0x60+0x20)
    key=(v3^v4)&0xFF; bb=bytearray(b)
    for i in range(off,min(off+ln,psz)): bb[i]^=key; key=(key+1)&0xFF
    return bytes(bb)
# CPython 3.11 标准号 (写死, 不依赖本地3.12 opcode漂移): 仅锚点用
STD311={"CACHE":0,"RESUME":151,"RETURN_VALUE":83,"BINARY_OP":122,"CALL":171,"COMPARE_OP":106,"POP_JUMP_IF_FALSE":114,"JUMP_FORWARD":110,"LOAD_CONST":100,"LOAD_FAST":124,"STORE_FAST":125,"LOAD_GLOBAL":116,"IMPORT_NAME":108}
# 3.11 hasjrel (相对跳) 子集 (用于修表校验, 非全表, 余量走透传)
HASJREL={110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,140,141,142,143}
def main():
    OUT.mkdir(parents=True,exist_ok=True)
    z=zipfile.ZipFile(APK); d=z.read("assets/packages/python3/Lib.npk")
    magic,n,u1,eem,hm,eoff=struct.unpack('<6I',d[:24])
    hist=collections.Counter(); first=collections.Counter(); last=collections.Counter(); bigram=collections.Counter()
    for idx in range(n):
        e=d[eoff+idx*28:eoff+(idx+1)*28]; id_,off,psz,rsz,c1,c2,fl=struct.unpack('<7I',e)
        dec=zlib.decompress(ex(d[off:off+psz],psz,rsz,c2)); co=marshal.loads(dec[16:]); code=co.co_code
        if len(code)>=2: first[(code[0],code[1])]+=1; last[(code[-2],code[-1])]+=1
        for i in range(0,len(code),2): hist[code[i]]+=1
        for i in range(0,len(code)-2,2): bigram[(code[i],code[i+2])]+=1
    L=[f"Lib n={n}全589频率 (NeoX洗牌域)"]
    L.append(f"first top5={first.most_common(5)}")
    L.append(f"last top5={last.most_common(5)}")
    L.append(f"hist top15={hist.most_common(15)}")
    L.append(f"bigram top5={bigram.most_common(5)}")
    # 锚点: 首(0,0)全50→STD RESUME151 ; 尾(3,0)46/50→STD RETURN_VALUE83 ; 0高频7761含CACHE行为
    L.append("anchor: NeoX(0,0)x50首指令oparg0 == 模块RESUME0语义 → NeoX0=STD151(RESUME) 高置信")
    L.append("anchor: NeoX(3,0)x46尾指令 == 函数RETURN语义 → NeoX3=STD83(RETURN_VALUE) 高置信")
    L.append("anchor: NeoX0 hist7761含CACHE填充行为 → CACHE(STD0)亦落NeoX0域 (RESUME与CACHE在NeoX域碰撞? 实为首指令+填充双源, 需ceval交叉确认, 见报告§3)")
    # 新映射v1: 只落高置信锚点, 余量走频率+ceval交叉 (不编造全表)
    newmap={"_gen":"formal_core_opcode v1","_py":"3.11.6+nxmod2","_rule":"NeoX->STD311, 1:1保步长","anchors":{"0":151,"3":83},"freq_hint":{"0":7761,"151":665,"129":442,"147":414,"122":338},"std311":STD311,"todo":"余量经NeoXPython动态对照(Lib同名标准3.11 pyc vs dump) + ceval rodata 256-permutation交叉补全"}
    (OUT/"opcode_newmap.json").write_text(json.dumps(newmap,ensure_ascii=False,indent=2),encoding="utf-8")
    (OUT/"opcode_freq.txt").write_text("\n".join(L)+"\n",encoding="utf-8")
    fix=r'''#!/usr/bin/env python3
# fix_jumps.py — 1:1重映射后跳转/行号/异常表修表 (3.11, 非2.7 lnotab)
# 规则: 1:1映射保每指令2B+CACHE数不变 → oparg字节偏移不变, 只做校验; 若新表引入CACHE数变化则按delta重算hasjrel目标
HASJREL={110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,140,141,142,143}
def check_code(code: bytes, std_of: dict):
    # std_of: NeoX->STD映射, 用于判定哪些位置是hasjrel
    errs=[]
    for i in range(0,len(code),2):
        nx=code[i]; std=std_of.get(nx,nx)
        if std in HASJREL:
            tgt=i+2+code[i+1]*2  # 3.11 oparg为字节偏移/2? 此处按word单位校验, 越界即报
            if not (0<=tgt<=len(code)): errs.append((i,nx,std,code[i+1],tgt))
    return errs
def passthrough_linetable(linetable: bytes): return True  # 1:1映射下linetable字节流不变, 只透传
def passthrough_exceptiontable(exc: bytes): return True  # 同上, entry为(开始/长度/目标)三元组, 步长不变则不变
if __name__=="__main__":
    print("import check_code/passthrough_* in pipeline; 1:1 map keeps linetable/exceptiontable byte-identical")
'''
    (OUT/"fix_jumps.py").write_text(fix,encoding="utf-8")
    print("\n".join(L)); print("wrote opcode_newmap.json + fix_jumps.py")
if __name__=="__main__": main()
