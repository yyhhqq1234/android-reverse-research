// dump_hook_spec.js — O3 script1解密体落盘模板 (frida, 只读hook, 不改游戏逻辑)
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
