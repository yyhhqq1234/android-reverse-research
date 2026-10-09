#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""logcat 时长判读：配对 BUFF:<id>:<actor> 与 RMV:<id>:<actor>，算 buff 实际存活时长
用法: python verify-dur.py <logcat文件> [关注ID...]
默认关注 225001 225002 225003
判据:
  225001/225003 存活 ≈2.0s → native 未用C#表（V9无效）
  225001/225003 存活 ≈0.0s → native 用了C#表（V9生效，眩晕消失）
  225002       存活 ≈25s  → native 未用C#表
  225002       存活 ≈0.0s → V9生效，傀儡禁锁消失
"""
import re, sys, datetime

TS = re.compile(r'^(\d{2}-\d{2} \d{2}:\d{2}:\d{2}\.\d{3})')
EV = re.compile(r'(BUFF|RMV|STUN-HIT|DUR|DURSHRINK|INITSHRINK|CONSUME|CHEAT5|GOD|STRIP):(\d+)?')

def parse_ts(s):
    return datetime.datetime.strptime(s, "%m-%d %H:%M:%S.%f")

def main():
    path = sys.argv[1]
    watch = [int(x) for x in sys.argv[2:]] or [225001, 225002, 225003]
    open_ev = {}     # (id, actor) -> ts
    pairs = []       # (id, actor, dur)
    logs = []
    for ln in open(path, encoding="utf-8", errors="ignore"):
        m = TS.match(ln)
        if not m: continue
        ts = parse_ts(m.group(1))
        # BUFF:225002:24  /  RMV:225002:24
        mm = re.search(r':\s*(BUFF|RMV):(\d+):(\d+)\s*$', ln.strip())
        if not mm:
            mm2 = re.search(r'(BUFF|RMV|STUN-HIT|DURSHRINK|INITSHRINK|CONSUME|CHEAT5|GOD|STRIP):(\d+)?', ln)
            if mm2:
                logs.append((ts, ln.strip()[-100:]))
            continue
        kind, bid, actor = mm.group(1), int(mm.group(2)), int(mm.group(3))
        key = (bid, actor)
        if kind == "BUFF":
            open_ev[key] = ts
        elif kind == "RMV" and key in open_ev:
            dur = (ts - open_ev.pop(key)).total_seconds()
            pairs.append((bid, actor, dur, ts))
    print("=== buff 存活时长 (BUFF→RMV) ===")
    seen = {}
    for bid, actor, dur, ts in pairs:
        if bid in watch:
            seen.setdefault(bid, []).append(dur)
            print(f"  {ts.strftime('%H:%M:%S')} id={bid} actor={actor} dur={dur:.3f}s")
    print("=== 汇总 ===")
    EXP = {225001: 2.0, 225002: 25.0, 225003: 2.0}
    for bid in watch:
        lst = seen.get(bid, [])
        if not lst:
            print(f"  id={bid}: 无 BUFF/RMV 配对")
            continue
        avg = sum(lst)/len(lst)
        exp = EXP.get(bid, 0)
        verdict = "V9生效(已压缩)" if avg < exp * 0.2 else ("native未用C#表(原时长)" if abs(avg-exp) < max(1.0, exp*0.3) else "部分生效?")
        print(f"  id={bid}: n={len(lst)} avg={avg:.3f}s (原{exp}s) → {verdict}")
    if logs:
        print("=== 关键日志尾段 ===")
        for ts, s in logs[-15:]:
            print(f"  {ts.strftime('%H:%M:%S')} {s}")

main()
