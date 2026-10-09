#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""游戏进程内存扫描：遍历 maps 的 rw 段，搜 buff ID / 时长 / 类型串
用法: python mem-scan.py [maps文件]
输出: 命中段+偏移（guest VA）+ 上下文
"""
import re, subprocess, sys, struct

ADB = r"D:\APK-Reverse\tools\platform-tools\adb.exe"
DEV = "127.0.0.1:16384"
MAPS = r"D:\APK-Reverse\projects\WZRY\_unpacked\build\maps-now.txt"

def pid():
    o = subprocess.run([ADB, "-s", DEV, "shell", "pidof", "com.tencent.tmgp.sgameceg"],
                       capture_output=True, text=True).stdout.strip()
    return o

def read_mem(p, start, size):
    """返回 bytes 或 None"""
    skip = start >> 12
    cnt = (size + 4095) >> 12
    r = subprocess.run([ADB, "-s", DEV, "exec-out",
                        f"dd if=/proc/{p}/mem bs=4096 skip={skip} count={cnt} 2>/dev/null"],
                       capture_output=True)
    return r.stdout if r.stdout else None

def main():
    p = pid()
    if not p:
        print("NO-PID"); return
    print("pid", p)
    rows = []
    for ln in open(MAPS, encoding="utf-8", errors="ignore"):
        m = re.match(r'([0-9a-f]+)-([0-9a-f]+) (\S{4}) (\S+) (\S+) (\S+)\s*(.*)', ln.strip())
        if not m: continue
        s, e = int(m.group(1), 16), int(m.group(2), 16)
        perm, name = m.group(3), m.group(7).strip()
        if not perm.startswith("rw"): continue
        if "jit-cache" in name: continue          # houdini/dalvik JIT 缓存
        if "dalvik" in name: continue             # Java 堆
        rows.append((s, e, perm, name))
    rows.sort(key=lambda r: r[0] - r[1])
    print("target segments", len(rows), "total MB", round(sum(e-s for s,e,_,_ in rows)/1048576, 1))

    PATS = {
        "BUFFID_225002": struct.pack("<I", 225002),
        "BUFFID_225001": struct.pack("<I", 225001),
        "BUFFID_911274": struct.pack("<I", 911274),
        "DUR_25000":     struct.pack("<i", 25000),
        "DUR_2000":      struct.pack("<i", 2000),
        "STR_SkillCombine": b"SkillCombine",
        "STR_ActorLinker":  b"ActorLinker",
        "STR_OutOfControl": b"OutOfControl",
        "STR_UseJointSkill": b"UseJointSkill",
    }
    hits = {k: [] for k in PATS}
    for s, e, perm, name in rows:
        size = e - s
        if size > 80*1024*1024: continue
        buf = read_mem(p, s, size)
        if not buf: continue
        if len(buf) < 16: continue
        for k, pat in PATS.items():
            st = 0
            c = 0
            while c < 6:
                i = buf.find(pat, st)
                if i < 0: break
                hits[k].append((s + i, name[:40]))
                c += 1
                st = i + 1
    print("=== HITS ===")
    for k in PATS:
        lst = hits[k]
        print(f"{k}: {len(lst)}")
        for va, nm in lst[:6]:
            print(f"   VA={va:#010x}  seg={nm}")
    return

main()
