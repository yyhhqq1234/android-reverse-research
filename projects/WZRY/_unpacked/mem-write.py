#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""运行时改写 skillCombine 时长表项（225001/225002/225003 的 iDuration）
用法: python mem-write.py 225002=5000 [225001=200 ...]
      python mem-write.py --restore           (从 .backup.json 还原)
流程: 实时定位 → 读原值 → 写入 → 读回校验 → 记录备份
"""
import re, subprocess, struct, json, sys, os

ADB = r"D:\APK-Reverse\tools\platform-tools\adb.exe"
DEV = "127.0.0.1:16384"
PKG = "com.tencent.tmgp.sgameceg"
BAK = r"D:\APK-Reverse\projects\WZRY\_unpacked\build\dur-backup.json"
EXPECT = {225001: 2000, 225002: 25000, 225003: 2000}

def sh(c):
    return subprocess.run([ADB,"-s",DEV,"shell",c],capture_output=True,text=True).stdout.strip()

def xout(c):
    return subprocess.run([ADB,"-s",DEV,"exec-out",c],capture_output=True).stdout

def locate(pid):
    maps = xout(f"cat /proc/{pid}/maps").decode("utf-8","ignore")
    segs=[]
    for ln in maps.splitlines():
        m=re.match(r'([0-9a-f]+)-([0-9a-f]+) (\S{4}) (\S+) (\S+) (\S+)\s*(.*)',ln.strip())
        if not m: continue
        s,e=int(m.group(1),16),int(m.group(2),16)
        perm,name=m.group(3),m.group(7).strip()
        if not perm.startswith("rw") or "jit-cache" in name or "dalvik" in name: continue
        segs.append((s,e,name))
    found={}
    for s,e,name in segs:
        size=e-s
        if size>96*1024*1024 or size<0x2000: continue
        buf=xout(f"dd if=/proc/{pid}/mem bs=4096 skip={s>>12} count={size>>12} 2>/dev/null")
        if not buf or len(buf)<0x1000: continue
        for tid,exp in EXPECT.items():
            if tid in found: continue
            pat=struct.pack("<I",tid); st=0
            while True:
                i=buf.find(pat,st)
                if i<0: break
                st=i+1
                if i+124>len(buf): continue
                if struct.unpack_from("<i",buf,i+120)[0]==exp:
                    found[tid]=(s+i, name[:30]); break
    return found

def read_at(pid,addr,ln=4):
    buf=xout(f"dd if=/proc/{pid}/mem bs=4096 skip={addr>>12} count=1 2>/dev/null")
    off=addr&0xFFF
    return buf[off:off+ln] if buf else b""

def write_at(pid,addr,data):
    hexs="".join(f"\\x{b:02x}" for b in data)
    cmd=f"printf '{hexs}' | dd of=/proc/{pid}/mem bs=1 seek={addr} conv=notrunc 2>&1"
    return sh(cmd)

def main():
    pid=sh("pidof "+PKG)
    if not pid: print("NO-PID"); return
    print("pid",pid)
    loc=locate(pid)
    print("=== located ===")
    for tid,(va,nm) in sorted(loc.items()):
        cur=read_at(pid,va+120,4)
        print(f"  {tid} entry={va:#x} dur={struct.unpack('<i',cur)[0] if len(cur)==4 else 'ERR'} [{nm}]")

    if "--restore" in sys.argv:
        if not os.path.exists(BAK): print("no backup"); return
        b=json.load(open(BAK))
        for k,v in b.items():
            tid=int(k); va=int(v["entry"],16); orig=int(v["orig"])
            r=write_at(pid,va+120,struct.pack("<i",orig))
            back=struct.unpack("<i",read_at(pid,va+120,4))[0]
            print(f"  restore {tid} @{va:#x} -> {orig}  readback={back}  {r[:60] if r else ''}")
        return

    sets={}
    for a in sys.argv[1:]:
        if "=" in a:
            k,v=a.split("="); sets[int(k)]=int(v)
    if not sets: print("no args"); return

    bak={}
    for tid,newv in sets.items():
        if tid not in loc: print(f"  MISS {tid}"); continue
        va,_=loc[tid]
        orig=struct.unpack("<i",read_at(pid,va+120,4))[0]
        bak[str(tid)]={"entry":hex(va),"orig":orig}
        r=write_at(pid,va+120,struct.pack("<i",newv))
        back=struct.unpack("<i",read_at(pid,va+120,4))[0]
        ok="OK" if back==newv else "FAIL"
        print(f"  write {tid} @{va+120:#x} {orig}->{newv} readback={back} [{ok}] {r[:80] if r else ''}")
    json.dump(bak,open(BAK,"w"),indent=1)
    print("backup ->",BAK)

main()
