#!/usr/bin/env python3
# t3_fullmap_build.py — O3 opcode新表v1 -> 全映射框架v2 (诚实分级, 不编造全256)
# 输入(只读): formal_core_opcode/opcode_newmap.json(v1双锚) + APK内Lib.npk频率(重算, 不复用旧直方图)
# 输出: opcode_fullmap.json (256槽: HIGH2 + UNKNOWN254 + freq/rank证据) + fullmap_verify.txt
# 规则: NeoX->STD311 1:1保步长; HIGH仅0->151(RESUME)/3->83(RETURN); 其余UNKNOWN待动态(Lib同名dump+ceval rodata交叉)
import struct, zlib, marshal, json, pathlib, zipfile, collections
APK = r"D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）.apk"
OP = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_opcode")
OUT = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg\formal_core_script")
STD311={"CACHE":0,"RESUME":151,"RETURN_VALUE":83,"BINARY_OP":122,"CALL":171,"COMPARE_OP":106,"POP_JUMP_IF_FALSE":114,"JUMP_FORWARD":110,"LOAD_CONST":100,"LOAD_FAST":124,"STORE_FAST":125,"LOAD_GLOBAL":116,"IMPORT_NAME":108}
HASJREL={110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,140,141,142,143}
def ex(b,psz,rsz,c2):
    off,ln=(0,psz) if psz<0x81 else ((rsz>>1)%(psz-0x80), ((c2<<1)&0xFFFFFFFF)%0x60+0x20)
    key=(rsz^c2)&0xFF; bb=bytearray(b)
    for i in range(off,min(off+ln,psz)): bb[i]^=key; key=(key+1)&0xFF
    return bytes(bb)
def main():
    OUT.mkdir(parents=True,exist_ok=True)
    v1=json.loads((OP/"opcode_newmap.json").read_text(encoding="utf-8"))
    assert v1["anchors"]=={"0":151,"3":83}, f"v1 anchor drift {v1['anchors']}"
    z=zipfile.ZipFile(APK); d=z.read("assets/packages/python3/Lib.npk")
    magic,n,u1,eem,hm,eoff=struct.unpack('<6I',d[:24]); assert n==589
    hist=collections.Counter(); ncode=0
    for i in range(n):
        e=d[eoff+i*28:eoff+(i+1)*28]; id_,off,psz,rsz,c1,c2,fl=struct.unpack('<7I',e)
        dec=zlib.decompress(ex(d[off:off+psz],psz,rsz,c2)); co=marshal.loads(dec[16:]); code=co.co_code; ncode+=len(code)//2
        for k in range(0,len(code),2): hist[code[k]]+=1
    rank=hist.most_common()
    # 全256槽: 仅2 HIGH, 其余UNKNOWN(带freq_rank证据, 不指派STD)
    slots={}
    for neo in range(256):
        f=hist.get(neo,0)
        r=next((k for k,(v,c) in enumerate(rank) if v==neo), -1)
        if neo==0: slots[str(neo)]={"std":151,"std_name":"RESUME","conf":"HIGH","freq":f,"rank":r,"why":"首指令(0,0)x589==模块RESUME0语义"}
        elif neo==3: slots[str(neo)]={"std":83,"std_name":"RETURN_VALUE","conf":"HIGH","freq":f,"rank":r,"why":"尾(3,0)x556==函数RETURN语义"}
        else: slots[str(neo)]={"std":None,"std_name":None,"conf":"UNKNOWN","freq":f,"rank":r,"why":"待动态:Lib同名标准3.11 pyc vs dump + ceval@0x143fabe rodata 256-permutation交叉"}
    fm={"_gen":"formal_core_script fullmap v2","_py":"3.11.6+nxmod2","_rule":"NeoX->STD311 1:1保步长, HIGH2+UNKNOWN254","_v1_anchors":v1["anchors"],"std311":STD311,"slots":slots,
        "close_loop":["1) frida dump script1解密体 (见t3_dump_gate.py)","2) Lib同名STD3.11 vs dump同函数对照逐opcode定映射","3) ceval邻域rodata提256-permutation交叉确认","4) fix_jumps.check_code全量校验+linetable/exceptiontable透传"]}
    (OUT/"opcode_fullmap.json").write_text(json.dumps(fm,ensure_ascii=False,indent=1),encoding="utf-8")
    # 验证: 1:1保步长下hasjrel越界检查(用HIGH部分映射, UNKNOWN透传)
    std_of={0:151,3:83}
    errs=0; checked=0
    for i in range(n):
        e=d[eoff+i*28:eoff+(i+1)*28]; id_,off,psz,rsz,c1,c2,fl=struct.unpack('<7I',e)
        dec=zlib.decompress(ex(d[off:off+psz],psz,rsz,c2)); co=marshal.loads(dec[16:]); code=co.co_code
        for k in range(0,len(code),2):
            std=std_of.get(code[k],code[k])
            if std in HASJREL:
                checked+=1; tgt=k+2+code[k+1]*2
                if not (0<=tgt<=len(code)): errs+=1
    L=[f"v1_anchors HIGH2: 0->151 3->83 (v1一致 OK)",
       f"slots_total=256 HIGH={(sum(1 for v in slots.values() if v['conf']=='HIGH'))} UNKNOWN={(sum(1 for v in slots.values() if v['conf']=='UNKNOWN'))}",
       f"hist_cross: NeoX0={hist.get(0,0)} NeoX151={hist.get(151,0)} (T4 121314/8559) {'OK' if hist.get(0,0)==121314 and hist.get(151,0)==8559 else 'DRIFT'}",
       f"ncode_instructions={ncode} hasjrel_checked={checked} out_of_range={errs}",
       f"rule: 1:1重映射保2B+CACHE数不变 -> oparg字节偏移不变, linetable/exceptiontable透传 (见formal_core_opcode/fix_jumps.py)",
       f"honesty: 未编造全256指派, 254槽UNKNOWN+动态闭环4步 (见json.close_loop)"]
    (OUT/"fullmap_verify.txt").write_text("\n".join(L)+"\n",encoding="utf-8")
    print("\n".join(L)); print("wrote opcode_fullmap.json 256 slots")
    assert sum(1 for v in slots.values() if v['conf']=='HIGH')==2
    assert hist.get(0,0)==121314
if __name__=="__main__": main()
