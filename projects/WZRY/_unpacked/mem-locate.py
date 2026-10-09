#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""定位 225002 表项：扫所有 rw 段找 0x36EEA，检查邻域偏移是否出现 25000(时长)
依据 C# ResSkillCombineCfgInfo: iCfgID@0, iDuration@120, 结构324B
"""
import re, subprocess, struct

ADB = r"D:\APK-Reverse\tools\platform-tools\adb.exe"
DEV = "127.0.0.1:16384"
MAPS = r"D:\APK-Reverse\projects\WZRY\_unpacked\build\maps-now.txt"

def pid():
    return subprocess.run([ADB, "-s", DEV, "shell", "pidof", "com.tencent.tmgp.sgameceg"],
                          capture_output=True, text=True).stdout.strip()

def read_mem(p, start, size):
    return subprocess.run([ADB, "-s", DEV, "exec-out",
                           f"dd if=/proc/{p}/mem bs=4096 skip={start>>12} count={(size+4095)>>12} 2>/dev/null"],
                          capture_output=True).stdout

def segs():
    out = []
    for ln in open(MAPS, encoding="utf-8", errors="ignore"):
        m = re.match(r'([0-9a-f]+)-([0-9a-f]+) (\S{4}) (\S+) (\S+) (\S+)\s*(.*)', ln.strip())
        if not m: continue
        s, e = int(m.group(1),16), int(m.group(2),16)
        perm, name = m.group(3), m.group(7).strip()
        if not perm.startswith("rw"): continue
        if "jit-cache" in name or "dalvik" in name: continue
        out.append((s,e,perm,name))
    return out

def main():
    p = pid()
    print("pid", p)
    PAT = struct.pack("<I", 225002)
    found = []
    for s,e,perm,name in segs():
        size = e-s
        if size > 80*1024*1024 or size < 0x1000: continue
        buf = read_mem(p, s, size)
        if not buf or len(buf) < 4: continue
        st = 0
        while True:
            i = buf.find(PAT, st)
            if i < 0: break
            found.append((s+i, name[:36]))
            st = i+1
    print("225002 hits:", len(found))
    for va, nm in found:
        win = read_mem(p, va-0x40, 0x300)
        if not win or len(win) < 0x200: continue
        base = va - 0x40
        # 在 ±0x300 内找 25000/2000
        hits = []
        for off in range(0, len(win)-4):
            v = struct.unpack_from("<i", win, off)[0]
            if v in (25000, 2000):
                hits.append((base+off-v/v if False else base+off, v))
        rel = [(o-(va), v) for o, v in [(off-base, v) for off, v in hits]] if hits else []
        # 重新算相对 va 的偏移
        rel2 = []
        for off in range(0, len(win)-4):
            v = struct.unpack_from("<i", win, off)[0]
            if v in (25000, 2000):
                rel2.append((base+off-va, v))
        print(f"  VA={va:#010x} [{nm}]  附近25000/2000: {rel2[:8]}")

main()
