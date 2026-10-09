#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""libGameCore.so 侦察：架构/节表/导出符号/关键字符串定位
用途：判定 native 可攻面（符号是否保留、DT_ 表形态、战斗相关字符串锚点）
"""
import sys, struct
from elftools.elf.elffile import ELFFile

SO = r"D:\APK-Reverse\projects\WZRY\_unpacked\libGameCore.so"

def main():
    with open(SO, "rb") as f:
        data = f.read()
        f.seek(0)
        e = ELFFile(f)
        print("== ELF ==")
        print("class", e.elfclass, "endian", e.little_endian, "machine", e.header.e_machine,
              "type", e.header.e_type, "entry", hex(e.header.e_entry))
        print("sections", e.num_sections())
        print("== SECTIONS ==")
        for s in e.iter_sections():
            fl = s['sh_flags']
            perm = ("R" if fl & 0x2 else "-") + ("W" if fl & 0x1 else "-") + ("X" if fl & 0x4 else "-")
            print(f"  {s.name:24s} addr={s['sh_addr']:#010x} off={s['sh_offset']:#010x} size={s['sh_size']:#x} {perm}")
        print("== DYNSYM ==")
        dyn = e.get_section_by_name('.dynsym')
        if dyn:
            syms = list(dyn.iter_symbols())
            print("count", len(syms))
            named = [s for s in syms if s.name]
            print("named", len(named))
            for s in named[:60]:
                print(f"  {s['st_value']:#010x} sz={s['st_size']:#x} {s.name}")
        else:
            print("no .dynsym")
        # DT_ 字符串锚点
        print("== DT_ anchors ==")
        pos = 0
        while True:
            i = data.find(b"DT_", pos)
            if i < 0: break
            j = i
            while j < len(data) and 32 <= data[j] < 127: j += 1
            print(f"  fileoff={i:#x} str={data[i:j][:64].decode('latin1')}")
            pos = i + 1
        # 关键业务字符串
        print("== biz strings ==")
        for kw in [b"UseJointSkill", b"JointSkill", b"GodMode", b"OutOfControl",
                   b"AddBuff", b"RemoveBuff", b"SkillCombine", b"heroBuff", b"225002"]:
            c = data.count(kw)
            locs = []
            p = 0
            while len(locs) < 4:
                i = data.find(kw, p)
                if i < 0: break
                locs.append(hex(i))
                p = i + 1
            print(f"  {kw.decode():16s} count={c} first={locs}")

main()
