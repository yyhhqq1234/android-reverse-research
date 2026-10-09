#!/usr/bin/env python3
# t3_dump_gate.py — O3 dump解密体门 (静态已落核验 + 动态hook规格, 不启动模拟器)
# 输入(只读): bundle/script双版 + nxs/guide blobs + opcode ceval锚 + lib589索引(本目录) + offline_bypass路由
# 输出: dump_gate.json + dump_hook_spec.js (frida模板) + DUMP_GATE.txt
import json, pathlib, hashlib
WD = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg")
B = WD/"formal_offline-bundle"; NXS = WD/"formal_core_nxs"; OPC = WD/"formal_core_opcode"; OUT = WD/"formal_core_script"
def sha16(p): return hashlib.sha256(pathlib.Path(p).read_bytes()).hexdigest()[:16]
def main():
    OUT.mkdir(parents=True,exist_ok=True)
    checks={}
    # 1 script1双版定界 (bundle/script, 不动APK大包)
    checks["script1_apk"]= (B/"script"/"script1_apk.wpk").stat().st_size==201326608
    checks["script1_device"]= (B/"script"/"script1_device.wpk").stat().st_size==137363472
    checks["script_idx"]= (B/"script"/"script_device.idx").stat().st_size==252900
    apk_head=(B/"script"/"script1_apk.wpk").open('rb').read(4)==b'FKPW'
    dev_head=(B/"script"/"script1_device.wpk").open('rb').read(4)==b'FKPW'
    idx_head=(B/"script"/"script_device.idx").open('rb').read(4)==b'SKPW'
    checks["fkpw_magic"]= apk_head and dev_head and idx_head
    # second FKPW偏移 (apk版192703154, 1M步进已证, 此处只验首4K+文件大小, 重扫留给verify)
    # 2 NXS3 blobs (key112/e1倒挂)
    blobs=[NXS/f"guide_n4_e{i}.nxs3" for i in range(4)]
    checks["nxs_blobs"]= all(p.exists() for p in blobs) and [p.stat().st_size for p in blobs]==[294,791,295,295]
    e0=(NXS/"guide_n4_e0.nxs3").read_bytes()
    checks["nxs_magic"]= all(p.read_bytes()[:4]==b'NXS3' for p in blobs)
    checks["key112"]= len(e0)-20-struct_zi(e0)==112
    # 3 ceval双锚
    ceval=(OPC/"ceval_refs.txt").read_text(encoding="utf-8",errors="ignore")
    checks["ceval_pyframe"]= "PyEval_EvalFrameDefault: count=1" in ceval
    checks["ceval_c"]= "ceval.c: count=1" in ceval
    checks["ceval_redirect"]= "redirect.nxs: count=2" in ceval
    checks["ceval_execpath"]= "PyImport_ExecCodeModuleWithPathnames: count=1" in ceval
    # 4 lib589索引 (本目录, 需先跑t3_lib589_verify.py)
    libidx=OUT/"lib589_index.json"
    checks["lib589_index"]= libidx.exists() and json.loads(libidx.read_text(encoding="utf-8"))["n"]==589
    # 5 fullmap v2 (需先跑t3_fullmap_build.py)
    fm=OUT/"opcode_fullmap.json"
    checks["fullmap_v2"]= fm.exists() and json.loads(fm.read_text(encoding="utf-8"))["slots"]["0"]["std"]==151
    # 6 offline bypass路由可用 (t2产物, dump时同进程挂)
    checks["bypass_js"]= (WD/"offline_bypass"/"offline_bypass.js").exists()
    gate={k:bool(v) for k,v in checks.items()}
    gate["static_ready"]= all(gate.values())
    gate["dynamic_target"]="com.netease.dwrg @16384 (正式pid, 测试版com.identityv.shrek156封存不动)"
    gate["hook_points"]=["script/redirect.nxs装载","PyImport_ExecCodeModuleWithPathnames","IScriptFileSystem_1.3 FileLoader discrete优先/npk兜底","NXCloud script下发","PyEval_EvalFrameDefault落码对象"]
    gate["note"]="静态门全绿后, 动态一次落script1解密体+Lib同名对照即闭环全表; 本阶段不启动模拟器, 只给规格+模板"
    (OUT/"dump_gate.json").write_text(json.dumps(gate,ensure_ascii=False,indent=1),encoding="utf-8")
    hook=r'''// dump_hook_spec.js — O3 script1解密体落盘模板 (frida, 只读hook, 不改游戏逻辑)
// 目标: com.netease.dwrg (正式, 16384) ; 测试版不动
// 挂点 (libclient.so file-off, ASLR需+基址): PyEval_EvalFrameDefault@0x131e49a / ceval.c@0x143fabe邻域
//      + PyImport_ExecCodeModuleWithPathnames@0x1522db2 / redirect.nxs@0x14cb00f,0x1534043 / IScriptFileSystem@0x12d2e16
// 用法: frida -U -f com.netease.dwrg -l dump_hook_spec.js (先跑offline_bypass.js建离线链, 再挂本脚本)
'use strict';
// 1) Native层: 拦ExecCodeModule, 按pathname过滤script1/script, dump code对象内存
// const execAddr = Module.findExportByName('libclient.so','PyImport_ExecCodeModuleWithPathnames');
// 2) FileLoader层: IScriptFileSystem discrete优先/npk兜底处记命中路径+包名
// 3) Frame层: PyEval_EvalFrameDefault入口按co_filename过滤Lib同名文件, 落co_code字节 (NeoX域) 供对照
// 4) 落盘: /sdcard/Download/dwrg_dump/<filename>.neox.bin + .meta.json (pathname/package/opcode首字节/长度)
// 5) 离线对照: 主机端 Lib同名STD3.11 pyc vs .neox.bin 逐函数定映射, 回填opcode_fullmap.json UNKNOWN槽, 再走fix_jumps.check_code
console.log('[dump-spec] attach com.netease.dwrg, hook ExecCodeModule+EvalFrame+FileLoader, filter script1/Lib同名, dump到/sdcard/Download/dwrg_dump/');
'''
    (OUT/"dump_hook_spec.js").write_text(hook,encoding="utf-8")
    L=[f"{k}: {'PASS' if v else 'FAIL'}" for k,v in gate.items() if isinstance(v,bool)]
    L.append(f"OVERALL {'GREEN(static_ready)' if gate['static_ready'] else 'RED'}")
    L.append("next: 动态一次 (frida挂dump_hook_spec.js + offline_bypass.js) -> script1解密体 -> Lib同名对照 -> fullmap UNKNOWN->HIGH -> t4离线组装")
    (OUT/"DUMP_GATE.txt").write_text("\n".join(L)+"\n",encoding="utf-8")
    print("\n".join(L))
    assert gate["static_ready"], "dump static gate RED"
def struct_zi(blob):
    import struct; return struct.unpack('<I',blob[16:20])[0]
if __name__=="__main__": main()
