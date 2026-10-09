#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""libGameCore.so 交叉引用侦察：
1) OutOfControl / UseJointSkill / AddBuff 等字符串的完整内容
2) 这些字符串 VA 在 .text 字面量池里的 32 位引用（ARM ldr [pc,#imm]）
3) 相关 C++ 符号枚举（Skill/Buff/State/Actor/Joint）
VA == file offset（本 so 段映射同址）
"""
import struct
from elftools.elf.elffile import ELFFile

SO = r"D:\APK-Reverse\projects\WZRY\_unpacked\libGameCore.so"
data = open(SO, "rb").read()
TEXT_OFF, TEXT_SIZE = 0x90090, 0x25e61d8
TEXT_END = TEXT_OFF + TEXT_SIZE

def cstr(off, maxlen=96):
    j = off
    while j < len(data) and 32 <= data[j] < 127 and j - off < maxlen:
        j += 1
    return data[off:j].decode("latin1")

print("== 目标字符串完整内容 ==")
for kw in [b"OutOfControl", b"UseJointSkill", b"JointSkill", b"GodMode", b"AddBuff", b"RemoveBuff"]:
    p = 0
    while True:
        i = data.find(kw, p)
        if i < 0: break
        # 向前回退找串起点
        s = i
        while s > 0 and 32 <= data[s-1] < 127:
            s -= 1
        print(f"  [{kw.decode()}] VA={i:#010x} str={cstr(s,128)!r}")
        p = i + 1

print("\n== 字符串VA的32位引用（.text 字面量池） ==")
targets = []
for kw in [b"OutOfControl", b"UseJointSkill"]:
    p = 0
    while True:
        i = data.find(kw, p)
        if i < 0: break
        s = i
        while s > 0 and 32 <= data[s-1] < 127:
            s -= 1
        targets.append((kw.decode(), i, s))
        p = i + 1

for name, kw_va, strstart in targets:
    print(f"  --- {name} strVA={kw_va:#x} (start={strstart:#x}) ---")
    for va in {kw_va, strstart}:
        needle = struct.pack("<I", va)
        cnt = 0
        p = 0
        while cnt < 12:
            i = data.find(needle, p)
            if i < 0: break
            where = "TEXT" if TEXT_OFF <= i < TEXT_END else ("data.rel.ro" if 0x28c7408 <= i < 0x2911304 else "other")
            print(f"    refVA={va:#x} -> pool@{i:#010x} [{where}]")
            cnt += 1
            p = i + 1
        if cnt == 0:
            print(f"    refVA={va:#x} -> (no 32-bit ref)")

print("\n== 相关 C++ 符号 ==")
with open(SO, "rb") as f:
    e = ELFFile(f)
    dyn = e.get_section_by_name('.dynsym')
    for s in dyn.iter_symbols():
        n = s.name
        if not n: continue
        for kw in ("Skill", "Buff", "State", "Joint", "ActorRoot", "Ctl", "Control"):
            if kw in n:
                print(f"  {s['st_value']:#010x} sz={s['st_size']:#x} {n[:150]}")
                break
