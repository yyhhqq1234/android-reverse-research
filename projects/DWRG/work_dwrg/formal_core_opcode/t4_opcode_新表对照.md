# T4 opcode新表对照 (正式版直抓, 2026-09-26实测, 不套T3旧2.7映射)
- 对象: 自有正式包只读 `lib/arm64-v8a/libclient.so 175206232B CRC?见elf_head.txt` (T2哈希0683dd40沿用) + `Lib.npk 589 stdlib 3.11` (F3/T3沿用) ; 产物仅 `work_dwrg/formal_core_opcode/`; 测试版 `com.identityv.shrek156` ps空封存, 正式 `com.netease.dwrg pid4345`存活 (16384实测)

## 1 libclient arm64提ceval/PyEval (`t4_ceval_extract.py`流式单遍, 175206232/175206232 OK)
- ELF: `ELF64 LE arm64 EM183 entry?见elf_head.txt phoff/phnum/shoff/shnum` + `head64见文件` (复用formal_libclient_head.bin 4K判定)
- 锚点 (file-off, 十六进制):
  - `PyEval_EvalFrameDefault x1 @0x131e49a` / `_PyEval_EvalFrameDefault x1 @0x131e499` (相邻, 符号表双条)
  - `ceval.c x1 @0x143fabe` (编译单元锚点, opcode分发 قلب)
  - `PyImport_ExecCodeModuleWithPathnames x1 @0x1522db2` (script/redirect.nxs装载点, F3路由沿用)
  - `redirect.nxs x2 @0x14cb00f,@0x1534043` + `script/redirect x1 @0x153403c` (引导对照)
  - `3.11.6 x35` (前5 @0x1286cc3,@0x12bb08a,@0x12d482c,@0x13063a6,@0x13073a1) + strings.txt `3.11.6x35/marshalx31/Python-2.7x0`
  - `_opcode x11` (前5 @0x2d2c80,@0x2d2cc7,@0x2d5067,@0x2d5296,@0x2d52b0) + `IScriptFileSystem x1 @0x12d2e16`
  - `PyEval_EvalCode x0` (无该符号, 不编造) ; `NeoXPython` raw x0但strings `NeoX x763` (大小写/分词差异, 已记, 不硬套)
- 结论: 分发锚点 `ceval.c@0x143fabe + PyEval_EvalFrameDefault@0x131e49a` 落定, 下一步以其rodata交叉256-permutation候选 + §2对照闭环

## 2 NeoXPython对照Lib标准3.11 (`t4_opcode_map.py` 全589, 非50抽样)
- 全量: `first(0,0)x589/589` `last(3,0)x556 + (0,0)x32 + (157,1)x1` `hist 0:121314 129:11546 132:10942 151:8559 147:5243 122:4458(BINARY_OP) 61:3747 92:2511 135:2510 164:1580 3:688 85:651` `bigram (0,0)80771 (0,129)11485 (132,0)10924`
- 对照T3: 50抽样 `first0 50/50 hist0:7761/151:665` → 全量 `first0 589/589 hist0:121314/151:8559` 同向放大, 抽样无偏
- 锚点 (高置信, 落`opcode_newmap.json anchors`):
  - `NeoX0=STD151(RESUME)`: 首指令(0,0)全589 oparg0 == 模块RESUME0语义 (标准3.11首指令RESUME, 无CACHE前导)
  - `NeoX3=STD83(RETURN_VALUE)`: 尾(3,0)x556 == 函数RETURN语义 (标准RETURN_VALUE 83)
  - `NeoX0域含CACHE行为`: hist0 121314 + bigram(0,0)80771为填充跑长, STD CACHE0亦落NeoX0域 — 首指令+填充双源碰撞, 需ceval交叉确认 (已记, 不谎称单映射)
- 标准号写死STD311 (`CACHE0 RESUME151 RETURN83 BINARY_OP122 CALL171 COMPARE106 POP_JUMP_IF_FALSE114 JUMP_FORWARD110 LOAD_CONST100 LOAD_FAST124 STORE_FAST125 LOAD_GLOBAL116 IMPORT_NAME108`), 不依赖本地3.12 opcode漂移
- 作废: `opcode27.py / py27dis.py / denpk2 mapping::OPCODE_MAPPING` (T3旧2.7) 一律不用; 本地3.12 `dis(e588)`误读只作反证 (F3沿用)
- 新映射v1 (`opcode_newmap.json`): 只落双锚点 + freq_hint + todo (`余量经NeoXPython动态对照Lib同名标准3.11 pyc vs dump + ceval rodata 256-permutation交叉补全`), 不编造全256表

## 3 修hasjrel/linetable/exceptiontable (`fix_jumps.py`)
- 规则: 1:1重映射保每指令2B+CACHE数不变 → oparg字节偏移不变, 只做校验; 若新表引入CACHE数变化则按delta重算hasjrel目标 (函数已给)
- `HASJREL={110..143}` 3.11相对跳子集写死 (余量透传, 不全表谎称); `check_code(code,std_of)` 越界即报
- `passthrough_linetable / passthrough_exceptiontable`: 1:1下字节流不变只透传 (3.11 linetable/exceptiontable三元组, 非2.7 lnotab — 2.7链已作废)
- 路径记录: 全量589直跑无崩溃 (F3 `formal_lib_hist.py EXIT 0xC0000005`已由分块+顶层规避, 本轮全量通过); `NeoXPython raw0`→改`NeoX`763等价 (大小写); `PyEval_EvalCode 0`如实记0不编造; 256-permutation全so滑动窗口未跑 (175M×256代价) →改ceval邻域交叉路由 (等价, 已记)

## 4 产物 (仅formal_core_opcode, 8件)
`t4_ceval_extract.py` + `t4_opcode_map.py` + `fix_jumps.py` + `elf_head.txt` + `ceval_refs.txt` + `opcode_freq.txt` + `opcode_newmap.json` + 本文件
- 校验: 流扫数对 (175206232 OK) + 全589频率重跑一致 + 原包只读zip流 (未解包覆盖); 回滚删formal_core_opcode即回滚
- 下游: `ceval@0x143fabe/PyEval@0x131e49a`邻域rodata提256表 + 动态dump script1解密体 + Lib同名标准3.11对照可闭环全表

## 5 测试版封存
- 16384: 测试`ps | grep identityv`空 / 正式4345存活 — 测试版未卸载未启动封存未动

当前:opcode新表对照 / 结果:work_dwrg/formal_core_opcode(ceval双锚+全589对照+新映射v1+修表) / 下一步:rodata提256表+动态dump闭环全映射
