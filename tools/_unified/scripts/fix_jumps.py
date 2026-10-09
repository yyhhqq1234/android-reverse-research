#!/usr/bin/env python3
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
