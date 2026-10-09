# T3 NXS3新变体解 (正式版直抓, 2026-09-26实测, 不套T3旧2.7映射)
- 对象: 自有正式包 `projects/DWRG/第五人格（官服正式版）.apk` 只读 (T2哈希0683dd40沿用, 未重算大包) → `assets/script.npk`1952B引导n4 + `assets/packages/python3/Lib.npk`3982804B + `assets/res/script1.wpk`201326608B首包 + 云端137363472B (T2双版沿用)
- 产物仅 `work_dwrg/formal_core_nxs/` (本文件 + 3脚本 + 3txt + 1json + 4nxs3 + dump/6件); 测试版 `com.identityv.shrek156` 包在pid空封存未动 (16384实测ps空, 见§6)

## 1 引导n4 NXS3新变体 (到NXS3层止步, 不硬解)
- 头: `NXPK 4B50584E n4 u1_0 eem256 hm0 eoff1752 size1952` — 与测试代系(eem0/hm1)不同代系, 与F3 Lib(eem256/hm0)同代系
- 条目全 `fl00040001 comp1(zlib)/enc4(SimpleCryptEx)`: 公式复用denpk2_npk.rs:115-136数学 (`psz<0x81全片 else off=(rsz>>1)%(psz-0x80) len=((c2<<1)&0xFFFFFFFF)%0x60+0x20 key=(rsz^c2)&0xFF`逐字节^key,key+1), 仅复用数学, 不复用映射
- 解后全 `4e58533303000001=NXS_MAGIC(denpk2_nxs.rs:9)` 4/4命中 (`t3_guide_n4.py` + `guide_n4.txt`):
  - e0 `56096644 psz305 rsz294→NXS3 up162 pa278 zi162 keylen112 keyhead02e38741cc432a20 sha c07640f4..`
  - e1 `8125584f psz802 rsz791→up932 pa775 zi932 keylen-161 INV=YES keyheadbcf2025d3abccd63 sha 0b53a0c5..`
  - e2 `960688fe psz306 rsz295→163/279/163 keylen112 keyheadb4ee3d8c4b18bf42 sha 50ce9ea4..`
  - e3 `c1349519 psz306 rsz295→163/279/163 keylen112 keyheaddca5736ea588b641 sha 3fff42f6..`
- 新变体判定: e0/e2/e3 `total-20-zipped=112 != denpk2 KEY.size()=128(1024-bit)`; e1 `791-20=771 < zi932`倒挂, 三元组语义已变
- 旧RSA直解作废: `denpk2_nxs.rs MIGJAoGBAOZA..1024-bit公钥解密+xor+ror19(0xE6546B64)+lz4_flex` — key尺寸/语义双不合, 硬解必错, 本阶段不执行
- 等价路径: `libclient.so(arm64 175206232B)`内RSA/NXS路由重找 (`script/redirect.nxs`+`PyImport_ExecCodeModuleWithPathnames`+`PyEval_*`字符串仍在, 见F3) + 动态dump落定前不硬解; 外层blobs已落 `guide_n4_e*.nxs3` (294/791/295/295B)

## 2 script1 marshal3.11 容器取证 (FKPW+SKPW, 只定界不定语义)
- 双版 (T2沿用, `t3_script1_fkpw.py` + `script1_fkpw.txt`):
  - 首包 `script1_apk.wpk 201326608 stored CRC3683027537 sha256 d5662a3d..03c0` 头 `FKPW 02010100 00000010 .. 57504431`
  - 云端 `script1_device.wpk 137363472 md5 89ffc145..` 瘦身46M 头 `FKPW 0a010100 00000400..` (2.104.125221.3034860增量)
  - 索引 `script_device.idx 252900 magic SKPW` (非NXPK 28B条目, 不硬套)
- 分段: apk版 `FKPW count>=2 second_off192703154` (首+192M处); device版 `FKPW count>=1` (仅首); 首2M/尾2M/中段全无明文 `NXS3/NXPK/a70d0d0a` — 全加密, 与Lib明文pyc形成对照
- marshal3.11旁证 (游戏码同代系, 不直接读加密体): Lib589全 `a70d0d0a=3.11` (`dump/lib_e*.pyc` 4413/2111/131B: asyncio/protocols, encodings/gbk, email/mime) + libclient `3.11.6+nxmod2+h55mod10 x35` + `marshal x31` + `Python-2.7 x0` (见§3); 2.7 `'c'+8B头(ac/nl/ss/fl+code/consts..)` 不套
- 作废: `unpack_npk.py assert(comp==2,enc==0)` / `npk2x raw-other1729` / T3 2.7整链 — 均不用于FKPW/SKPW
- dump门: FKPW解密需动态 (`script/redirect.nxs` + `IScriptFileSystem_1.3` + `PyImport_ExecCodeModuleWithPathnames` hook, F3/F4路由), 本阶段只定界

## 3 opcode新表 (shuffle实锤, 旧27表作废)
- 样本: Lib顶层50 (`t3_opcode_newtab.py` + `opcode_hist.txt` + `opcode_newtab.json`):
  - `first-byte top=[(0,50)]` — 系统性0 vs 本地`compile('x=1')首字节151=RESUME`
  - `opcode-byte top=0:7761 151:665 129:442 147:414 122:338(BINARY_OP 3.11) 171:27(CALL 3.11) 124:22 125:1` — 151仍出现665次, 非整体偏移
  - 本地参照 `RESUME151 CACHE0 BINARY_OP122 CALL171` (仅名→号参照, 非语义dis; `dis(e588)` CACHE/INTERPRETER_EXIT误读已记为反证, 不作语义结论)
- 结论: `SHUFFLE实锤(nxmod2洗牌)` — 首字节系统性0(CACHE) vs 151(RESUME), 旧表操作码仍出现说明非简单整体偏移
- 作废清单: `opcode27.py(LOAD_CONST100/STORE_FAST125/LOAD_FAST124/RETURN83/CALL_FUNCTION131/COMPARE107/JUMP_ABSOLUTE113)` / `py27dis.py`整条 / `denpk2 mapping::OPCODE_MAPPING`缺失文件 — 一律不用于正式版
- 新表路由 (骨架已落`opcode_newtab.json`): `Lib标准3.11同名文件 vs 游戏script1 dump对照得映射; 经PyEval_EvalFrameDefault+ceval.c逆出(含伪opcode组合, 需修hasjrel/hasjabs+linetable/exceptiontable, 非2.7 lnotab)`; 本任务到shuffle实锤+旧表作废为止, 不谎称已还原

## 4 dump (静态已落 + 动态门)
- 已落: `guide_n4_e*.nxs3` 4件 (外层解密NXS3 blobs) + `dump/lib_e{0,1,588}.pyc` 3件+`.info.txt` 3件 (3.11标准参照: 文件名/行号/codelen/names/code0)
- 动态门 (下游): 16384在线, 正式`com.netease.dwrg pid4345`存活 (T1同pid) 可挂 `script/redirect.nxs + PyImport_ExecCodeModuleWithPathnames + FileLoader discrete优先/npk兜底 + NXCloud script` 落script1解密体, 再走§3新表路由闭环; 测试版不动
- 路径记录: `formal_lib_hist.py`全量walk EXIT 0xC0000005→改顶层50样本等价 (F3沿用); `head`非pwsh→改原生python直调; `Select-String`扫frida二进制超时→改python分块读+zipfile直读 (本轮); `aapt中文坑`→沿用T2工作区ASCII复制等价 (未触发, 记沿用)

## 5 产物 (仅formal_core_nxs, 15件)
`t3_guide_n4.py`/`t3_script1_fkpw.py`/`t3_opcode_newtab.py` + `guide_n4.txt` + `guide_n4_e0.nxs3`294 + `e1.nxs3`791 + `e2.nxs3`295 + `e3.nxs3`295 + `script1_fkpw.txt` + `opcode_hist.txt` + `opcode_newtab.json` + `dump/lib_e0.pyc`4413 + `dump/lib_e0.info.txt` + `dump/lib_e1.pyc`2111 + `dump/lib_e1.info.txt` + `dump/lib_e588.pyc`131 + `dump/lib_e588.info.txt` + 本文件
- 校验: 三脚本重跑一致 (guide 4/4 NXS3, fkp w双版+加密性0明文, opcode first0 50/50); 原包只读 (zipfile.read未解包覆盖); 回滚删formal_core_nxs即回滚
- 下游可用: NXS3 blobs(key112/e1倒挂) + FKPW定界(second192703154) + Lib 3.11参照 + shuffle证据 + 新表路由可直入动态dump+ceval对照

## 6 测试版封存
- 16384 `pm list`: `com.netease.dwrg` + `com.identityv.shrek156` 双包共存; `ps`: 正式4345存活 (+僵尸4679) / 测试pid空 — 测试版未卸载未启动, 封存未动

当前:NXS3新变体解 / 结果:work_dwrg/formal_core_nxs(引导n4 key112/e1倒挂+script1双版定界+opcode shuffle+dump静态6件) / 下一步:动态dump script1解密体+libclient ceval逆出新表对照闭环
