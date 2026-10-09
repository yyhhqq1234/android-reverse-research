#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""实时定位 225001/225002/225003 的 skillCombine 时长表项
严格校验：id@+0 == 目标ID 且 duration@+120 == 期望值
输出稳定 VA（含表项间隔推断 688B）
"""
import re, subprocess, struct

ADB = r"D:\APK-Reverse\tools\platform-tools\adb.exe"
DEV = "127.0.0.1:16384"
PKG = "com.tencent.tmgp.sgameceg"

def sh(cmd):
    return subprocess.run([ADB, "-s", DEV, "shell", cmd], capture_output=True, text=True).stdout.strip()

def xout(cmd):
    return subprocess.run([ADB, "-s", DEV, "exec-out", cmd], capture_output=True).stdout

def main():
    p = sh("pidof " + PKG)
    if not p:
        print("NO-PID"); return
    print("pid", p)
    maps = xout(f"cat /proc/{p}/maps").decode("utf-8", "ignore")
    segs = []
    for ln in maps.splitlines():
        m = re.match(r'([0-9a-f]+)-([0-9a-f]+) (\S{4}) (\S+) (\S+) (\S+)\s*(.*)', ln.strip())
        if not m: continue
        s, e = int(m.group(1),16), int(m.group(2),16)
        perm, name = m.group(3), m.group(7).strip()
        if not perm.startswith("rw"): continue
        if "jit-cache" in name or "dalvik" in name: continue
        segs.append((s,e,perm,name))
    print("rw segs", len(segs), "MB", round(sum(e-s for s,e,_,_ in segs)/1048576,1))

    def read_at(addr, ln):
        buf = xout(f"dd if=/proc/{p}/mem bs=4096 skip={addr>>12} count={((ln+(addr&0xFFF)+4095)>>12)} 2>/dev/null")
        off = addr & 0xFFF
        return buf[off:off+ln] if buf else b""

    TARGETS = {225001: 2000, 225002: 25000, 225003: 2000}
    results = []
    for s,e,perm,name in segs:
        size = e - s
        if size > 96*1024*1024 or size < 0x2000: continue
        buf = xout(f"dd if=/proc/{p}/mem bs=4096 skip={s>>12} count={size>>12} 2>/dev/null")
        if not buf or len(buf) < 0x1000: continue
        for tid, expect in TARGETS.items():
            pat = struct.pack("<I", tid)
            st = 0
            while True:
                i = buf.find(pat, st)
                if i < 0: break
                st = i + 1
                if i + 124 > len(buf): continue
                # 同段内校验 +120
                dur = struct.unpack_from("<i", buf, i+120)[0]
                if dur == expect:
                    results.append((tid, s+i, expect, name[:30]))
    print("=== STRICT HITS (id@0 & dur@+120) ===")
    for tid, va, dv, nm in results:
        print(f"  id={tid} entry={va:#010x} dur={dv} [{nm}]")
    # 推断表基址与间隔
    by = {}
    for tid, va, dv, nm in results:
        by.setdefault(tid, []).append(va)
    for tid, lst in sorted(by.items()):
        print(f"  id={tid} entries={[hex(x) for x in lst]}")
    return results

main()
