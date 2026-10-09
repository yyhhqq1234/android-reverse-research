# F3 正式版Lib.npk Python3还原（2026-09-26实测，不混用T3/denpk2旧链）

- 对象: `projects/DWRG/第五人格（官服正式版）.apk` 自有正式包只读未动（T2哈希 `0683dd40…71a5c`沿用）；目标 `assets/packages/python3/Lib.npk` 3982804B + 引导 `assets/script.npk` 1952B
- 产物仅`work_dwrg/`：本文件 `F3_Lib_Restore.md` / `formal_lib_scan.py` / `formal_lib_opcode.py` / `formal_lib_hist2.py` / `formal_guide_nxs.py` / `formal_lib_files.txt` 589行 / `formal_lib_tail_names.txt` 12012B；原包+`raw/jadx_out`未动

## 1 NXPK头对照（T3 2.7链 vs F3 3.11链）

| 包 | magic | n | u1 | eem | hm | eoff | size | tail |
|---|---|---|---|---|---|---|---|---|
| 测试script.npk | 0x4B50584E | 1730 | 0 | 0 | 1 | 7324808 | 7373248 | 0 |
| 测试doc/script | 0x4B50584E | 212 | 0 | 0 | 1 | 4713832 | 4719768 | 0 |
| 测试res.npk | 0x4B50584E | 12422 | 0 | 0 | 1 | 551737964 | 552085780 | — |
| 正式Lib.npk | 0x4B50584E | 589 | 0 | 256 | 0 | 3962920 | 3982804 | 3392 NXFN |
| 正式引导script.npk | 0x4B50584E | 4 | 0 | 256 | 0 | 1752 | 1952 | 0 |

- 结论：正式代系 `eem=256 hm=0` 与测试 `eem=0 hm=1` 不同代系；`denpk2_npk.rs:67-74 hash_mode()` 两者均落 `2→murmur3`，但entry加密/压缩分布完全不同，不可混用解包器默认假设
- Lib条目 `fl=0x00040001` 全589统一：`comp=1(zlib) enc=4(SimpleCryptEx)`；测试script为 `(0,0)=1729 (1,0)=1`、res为 `(1,0)=11998 (0,0)=424`混合+`NXEncodeHook`层（T3已记）；正式无`stored+Hook`分叉
- `min off=24 max end=3962920=eoff`连续无空洞；`n=589`与tail名表590切分（末空）一致

## 2 SimpleCryptEx+zlib（公式沿用，映射不沿用）

- `denpk2_npk.rs:115-136` SimpleCryptEx公式在正式仍有效：`psz<0x81→全片 else off=(rsz>>1)%(psz-0x80) len=((c_raw<<1)&0xFFFFFFFF)%0x60+0x20 key=(rsz^c_raw)&0xFF`逐字节`^key,key+1`
- 实测：Lib e0/e1/e2/e587直接zlib全FAIL，`Ex+zlib`全OK；e588 `psz=96<0x81`存储头`bd5a…`经Ex变`789c…`再zlib→131B，证实小包全片加密、大包仅中段（头`789c`留明文是假象）
- 全量 `formal_lib_scan.py`：`589/589 decrypt+zlib OK fail=0`；与T3 `npk2x.py raw-other=1729 marshal-c=1`高熵stored不可解形成对照
- 不混用点：仅复用加解密数学公式；`OPCODE_MAPPING/mapping`文件缺失的2.7旧映射、以及`unpack_npk.py:50-51 assert(comp==2,enc==0)`旧断言一律不用

## 3 NXS3：Lib零命中，引导4/4全命中（新变体）

- Lib：`NXS3=0/589`，`magics={'a70d0d0a'}`唯一；引导：`4/4`解密后全 `4e58533303000001=NXS_MAGIC(denpk2_nxs.rs:9)`：
  - e0 `56096644 psz305 rsz294→NXS3 unpacked162 packed278 zipped162`
  - e1 `8125584f psz802 rsz791→unpacked932 packed775 zipped932`
  - e2 `960688fe psz306 rsz295→163/279/163`；e3 `c1349519`同尺寸不同key/data
- 新变体证据（不可套denpk2旧RSA直解）：
  - e0/e2/e3 `total-20-zipped=112`，非denpk2 `KEY.size()=128(1024-bit)`；e1 `791-20=771`与`zipped932`倒挂，尺寸三元组语义已变
  - 旧key `MIGJAoGBAOZA…`为1024-bit公钥解密+`xor+ror19(0xE6546B64)+lz4_flex`；正式需按112B新key重找`libclient.so`中RSA/NXS路由（`script/redirect.nxs`+`PyImport_ExecCodeModuleWithPathnames`字符串仍在，见§5），动态dump落定前不硬解
- 对照T3：测试唯一明文`e_fb54f059 marshal 'c' redirect rotor`是裸marshal；正式引导是`zlib(NXS3(RSA?+ror?+lz4?))`双层，游戏码在远端`script1.wpk 201326608B`+`cloud pkgname=script`（neox3.xml），Lib仅stdlib

## 4 marshal 3.x（非2.7）

- Lib解密体头 `a7 0d 0d 0a 00 00 00 00 00 00 00 00 00 00 00 00`：`magic=0x0A0D0DA7=168627623=CPython 3.11`（本地3.12为`cb0d0d0a`），`bitfield=0 mtime/hash=0/0`，16B头后`marshal.loads`直通
- 抽检（本地3.12做loads仅验结构，不做dis语义）：
  - e0 `asyncio/protocols.py <module> firstlineno1 codelen156 names(__all__/BaseProtocol/Protocol/BufferedProtocol…)` 
  - e1 `encodings/gbk.py` / e2 `zoneinfo/_tzpath.py` / e588 `email/mime/__init__.py codelen6`
- 全量589全部`marshal.loads(dec[16:])→code`成功，`co_filename`589唯一，已落`formal_lib_files.txt`（`__future__.py/__hello__/_aix_support.py/_bootsubprocess.py…`纯stdlib，无游戏业务码）
- 对照T3 2.7：`63 00…=TYPE_CODE 'c'`+`ac/nl/ss/fl+code/consts/names/varnames/freevars/cellvars/filename/name/fln/lnotab` 8B头（`py27dis.py:45-58`）；正式为3.11 `argcount/posonly/kwonly/stacksize/flags/code/consts/names/localsplus/kinds/filename/name/qualname/firstlineno/linetable/exceptiontable`（恰为`denpk2_opcode.rs:7-25`结构体，证实denpk2是3.11骨架、非2.7）
- `denpk2_main.rs:68-71` `NXS?→nxs::unpack+RSA : PYC[0:4]?→(unpacked[16:],header[0:16])` 16B切分在正式Lib完全命中；在测试仅`fb54f059`1件命中，其余1729走`blobs/`明文/hook路

## 5 opcode新表（ shuffle实锤，2.7表作废）

- libclient证据：`formal_libclient_strings.txt` 零`Python-2.7`，`D:/conan/data/python/3.11.6+nxmod2+h55mod10/NeoXEngine/stable/source/…`（bytes/dict/array/memory/class/import/ceval/getargs…）+`3.11.6`+`ceval.c`，`boost::python3api`全栈，`_opcode`残留；测试为`Python-2.7.3×20+neox/python27`（T3§marshal）
- 本地对照：`compile('x=1')→97 00…`首字节`151=RESUME`；正式Lib前50顶层`first-byte全0`（`formal_lib_hist2.py`），`opcode-byte top 0:7761 151:665 129:442 147:414 122:338(BINARY_OP 3.11) 171:27(CALL 3.11)`——首字节系统性`0(CACHE)` vs `151(RESUME)`，证实nxmod2洗牌；`151`仍作操作码出现665次说明非简单整体偏移，需按`neox_readme.md:124-146`走`NeoXPython vs原版pyc对照得映射+PyEval_EvalFrameEx逆新opcode（含旧opcode组合，需修hasjrel/hasjabs跳转+linetable/exceptiontable，非2.7 lnotab）`
- 作废清单：`opcode27.py`（`LOAD_CONST100/STORE_FAST125/LOAD_FAST124/RETURN83/CALL_FUNCTION131/COMPARE107/JUMP_ABSOLUTE113`）、`py27dis.py`整条、`denpk2 mapping::OPCODE_MAPPING`缺失文件——三者一律不用于正式；正式新表待`libclient.so`中`PyEval_EvalFrameDefault/_PyEval_EvalFrameDefault`+`ceval.c`逆出+动态`NeoXPython`对照闭环
- 路径记录：`formal_lib_hist.py`全量递归walk触发`EXIT -1073741819(0xC0000005)`→改`formal_lib_hist2.py`仅顶层50样本等价替代，已删崩溃版；`dis(e588)`用3.12解释3.11字节码得`CACHE/INTERPRETER_EXIT`错解→仅作shuffle反证，不作语义结论；`head`非PowerShell命令→改原生`python`直调

## 6 尾表NXFN（hash闭环，无需generate_filelist）

- `tail=NXFN 00 00 01 00 2f0d0000 ec2e0000 + zlib→12012B`，解压头 `asyncio\protocols.pyc\x00encodings\gbk.pyc\x00…`，590切分=589名+末空
- `murmur3 seed=0x9747B28C(denpk2_hash.rs:15)`验证：`murmur("asyncio\\protocols.pyc")==0x0009c112==Lib e0 id`，`/`版`fdc07a94`不对齐，证实id为`\`全小写相对路径哈希，与T3 `script/doc fb54f059不对齐需重建strings.list`对照闭环
- `formal_lib_tail_names.txt`为原样12012B blob；`formal_lib_files.txt`为`marshal co_filename` 589行（`/`+`.py`），两者一一对应（`asyncio\protocols.pyc ↔ asyncio/protocols.py`），下游反查用tail为准

## 7 下游

- F4动态可用：`script/redirect.nxs`+`IScriptFileSystem_1.3`+`PyImport_ExecCodeModuleWithPathnames/PyEval_*`+`FileLoader discrete优先/npk兜底`做hook点；游戏逻辑不在Lib，在`script1.wpk+cloud script`远端，需抓包补齐（T6 wpk远端任务）
- opcode新表待闭环：需从`libclient.so(175206232B arm64)`提`ceval.c/PyEval_EvalFrameDefault`+编`NeoXPython`对照`Lib`标准3.11同名文件得映射；本任务到`shuffle实锤+旧表作废`为止，不谎称已还原
- 回滚：删本节6产物即回滚；`第五人格（官服正式版）/`仅读对照未写入

当前:正式版Lib.npk / 结果:projects/DWRG/work_dwrg/F3_Lib_Restore.md+formal_lib_*6件 / 下一步:wpk远端抓包+opcode新表对照闭环
