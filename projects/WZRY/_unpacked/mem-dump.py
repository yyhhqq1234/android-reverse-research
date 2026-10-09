#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""读游戏进程任意 VA 区间，hex+ascii 打印（定位结构用）
用法: python mem-dump.py 0xADDR 0xLEN
"""
import subprocess, sys

ADB = r"D:\APK-Reverse\tools\platform-tools\adb.exe"
DEV = "127.0.0.1:16384"

def pid():
    return subprocess.run([ADB, "-s", DEV, "shell", "pidof", "com.tencent.tmgp.sgameceg"],
                          capture_output=True, text=True).stdout.strip()

def read_mem(p, start, size):
    skip = start >> 12
    cnt = (size + 4095) >> 12
    r = subprocess.run([ADB, "-s", DEV, "exec-out",
                        f"dd if=/proc/{p}/mem bs=4096 skip={skip} count={cnt} 2>/dev/null"],
                       capture_output=True)
    return r.stdout

def main():
    addr = int(sys.argv[1], 16)
    ln = int(sys.argv[2], 16) if len(sys.argv) > 2 else 0x100
    p = pid()
    print(f"pid={p} addr={addr:#x} len={ln:#x}")
    off = addr & 0xFFF
    buf = read_mem(p, addr & ~0xFFF, ln + off)
    if not buf:
        print("READ-FAIL"); return
    buf = buf[off:off+ln]
    base = addr
    for i in range(0, len(buf), 16):
        chunk = buf[i:i+16]
        hexs = " ".join(f"{b:02x}" for b in chunk)
        asc = "".join(chr(b) if 32 <= b < 127 else "." for b in chunk)
        print(f"{base+i:#010x}  {hexs:<48}  {asc}")

main()
