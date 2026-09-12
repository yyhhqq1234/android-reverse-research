# NECR unshelled v1 — 补丁清单（release_v1）

构建：`tools/assemble_unshelled.py build/dex/classes.dex`
源树：`src/`（apktool 反编译，manifest 已去 StubApp）
dex：`build/dex/classes.dex` = UNITY_0285.jar + 手写 UnityPlayerActivity
（`tools/UnityPlayerActivity.java`） + billing + uads，经 d8 合成。
签名：`release_v1/necr.keystore`（pass necr1234）

## libil2cpp.so 补丁（相对 repack 源树内版本）

| # | 文件偏移 | 原字节 | 补丁 | 含义 |
|---|----------|--------|------|------|
| P1 | 0x9A4558 | `50 00 90 E5`（ldr r0,[r0,#0x50]） | `F2 07 02 E3`（movw r0,#9999） | AddGoldBonusText：oneChance 强制 9999 → totalBonus=99990002（显示＋到账） |
| P2 | 0x9A1820 | `08 10 81 E0`（add r1,r1,r8） | `88 1A 81 E0`（add r1,r1,r8,lsl#10） | AddToDia：钻石到账 ×1024 |
| P3 | 0xB42E80 起 132B | CodelessIAPStoreListener.InitiatePurchase 原函数体 | 见 `tools/patch_iap.py`（v3，全 PIC） | 支付绕过：按 productID 直调 Dia100/Dia1000/Dia4000/Dia20000/OneChance；`01_onechance` 无操作 |
| P4 | assets/bin/Data/level2 0x5825c | `EB A7 88 EB 82 98`（마나） | 法力 UTF-8（等长） | 文本（英文版不可见） |
| P5 | 0x1224CD8 | `5E 00 00 AA`（bge） | `5E 00 00 EA`（b） | MixtheUnits：合成必成功（`tools/patch_mix.py`） |
| P6 | 0x12184F0 / 0x1218508 / 0x121851C | `cmp r0,#10` / `mov r1,#10` / `ldr r5,[r4,#0x10]` | `cmp r0,#0` / `mov r1,#0` / `bl 0xB42F10` | 抽卡免费＋全池随机（`tools/patch_gacha.py`＋`tools/patch_pool_random.py`；cave 取 Random.Range(1,57)→r5，1~56 号段经静态奖池验证无断号；G3/G4/G5 旧试已还原；真流程 AddthisGambleItem→Inventory.AddItem） |
| P9 | 0x99C518 / cave2 0xB42F2C | `bx lr` | `bl 0xB42F2C`（`cmp r0,#0; moveq r0,#100; bx lr`） | 词条保底：CalculateAB 算出 0 的属性直接给 100（`tools/patch_affix.py`；只动零值，非零原样，5 条全亮） |
| P10 | 0x998CAC/0x998D0C/0x998D40/0x998D74/0x998DA8 | `bl Random.Range` ×5 | `mov r0,#0` ×5 | 发货 5 围 plus 恒顶格（`tools/patch_plus.py`；AddItem 尾部每围独立 roll Range(0,20001)→4 档 walk，roll 强制 0 全进顶档） |
| P11 | 0x12192DC / cave6 0xB42F38 | `mov r0,#1`（+原 1~20000 十档 walk 废弃） | `b cave6`（Range(0,100)：<20→10池；<55→6~9池； else→1~5池；cave 尾 replay `ldr r6,[r4,#0x10]` 后进 0x121936C；头插 cfg[1] 门控，关→回原生 walk） | 三档概率：高 20%/中 35%/低 45%（`tools/patch_tiered.py`；面板刷新＋发货同源，所见即所得；发货仍恒 G＋5 围顶；坑：落点 0x121935C 会踩 movle 交错区→只出 9/10，落 0x121936C 又跳过 ldr→空格， replay ldr 才齐） |
| M1 | P7 改 `bl 0xB43074`；P10×5 改 `bl 0xB43090`；READER 0xB42FC0 | 常开行为 | cfg 门控（`tools/patch_gates.py`；READER 以 svc 直调 open/read/close 读私有目录 `mod.cfg` 三字节，无文件默认全开；GATE_G 关→原生 grade，GATE_P 关→重摇原生 Range(0,20001)；坑1：`ldrb [sp,r5]`/`movw #0x4E21` 手工编码错被反汇编验出；坑2：菜单包曾带旧 SO 致开关无效，`build_menu.py` 强制同步已根治） |
| M2 | 0x1219B84 改 `bl 0x1219FFC`；0x1436C30 改 `bl 0x121A01C` | 直接扣费 | 免费刷新/免费升级门控（`tools/patch_gates2.py`；死区 RandomGrade 双胞胎＋BuyGambleUnit 零调用者，借尸还魂；ON→跳过 SubToDia/SubToGold，OFF→尾调原函数；只门控扣费不门控余额检查，巨富用户无感，破产用户开着也买不了） |
| MENU | dex 内 `NecrModMenu.smali`＋onCreate 挂钩 | 无 | 游戏内悬浮 MOD 按钮（`build/menuapk/smali/...` 为源，`tools/build_menu.py` 一键构建：同步门控 SO→ASCII 路径 apktool 回编→对齐签名→dex 回写；坑：aapt2 中文路径必死＋apktool 增量缓存掩盖 smali 未编译，都在脚本里绕掉；5 开关：G/概率/词条/刷新/升级，Save 写文件＋setenv，即时生效） |
| M3/M4/M5 | （已废弃，教训保留） | — | M3 内存标志桥（Java 写 `/proc/self/mem`）：疑似 SELinux 拒绝，改回文件桥。M4 把 READER 的裸 svc 换成 `bl PLT open/read/close`（`tools/elfplt.py`＋`elfplt2.py` 解析 `.rel.plt`＋PLT 三件套；open PLT=`0x1C2C1C` 等）。M5 对齐修复：READER 的 `push {r4-r7,lr}`（5 寄存器，奇数）调 libc 时栈失对齐→`push {r4-r8,lr}`＋双 pop，不闪了但仍全开——事后发现真正病根另有其人（见 M6）。教训：①手工编码 nibble 必错（`bxne`/`cmp r6`/`movne #5` 三连跪，反汇编逐条验是铁律）；②M3 把路径串 `/data` 盖成 `11111` 致 open 恒失败，fail-open 掩盖了一切 |
| M8 | GOD（0x122B858，`sub`→`bl 0xB430C4`，开＋player==1→跳过扣血（`ldrb [r4,#0x95]` 判，敌人不受保护），关→replay 原 sub）＋MP（`tools/patch_gates4.py` 门控体，`tools/patch_gates5.py` 落位；开→curMp=maxMp＋coolTime=0（`vldr/vstr`＋`str`，SummonManager 字段 0x10/0x14/0x18），关→直调原函数） | 常开行为 | HP/MP 双战斗开关（菜单 idx9/10，env 11 字节）；MP 钩位从函数入口改到调用点（见 M8b）；坑：`cmp r0` 误测血量（应 `cmp r1` 测 player 标志，差点给敌人也无敌）、`sub` 字多写个 5（assert 拦下，否则 OFF 秒死自己）、`push{r4-r8}` 抄成 r4-r7（assert 拦下，否则栈失衡） |
| M8b | MP 落位改调用点：siteA（0x13E2EE4，r0=manager 且调用方已判空，直调 `bl SetSummonMana`）改 `bl GATE_MP2`（0x121A080，11 字，尾跳 `b SetSummonMana`，入口一字不碰）；siteB（r0=NULL 的死路径）保持原生；入口 0x13E17D0 恢复原生 push（校验器加防回归字检查） | 常开行为 | 铁律：**永不钩函数入口（prologue）**——入口 `push` 改 `bl`（哪怕门控体只是 replay＋ret 的纯透明桩）必现启动 abort（`Il2CppExceptionWrapper`，`SetSummonMana+0x160` 的 resolve 守卫抛錯；reloc/对齐/寄存器全部排除，疑 houdini 按入口模式识别函数做翻译缓存，入口一变整函数 mistranslate）；中段钩（15 个在役）全部安全；教训：新钩位优先选调用点＋尾跳，入口只读 |
| M9 | GATE_MIX2（0x121A0B4，13 字，`tools/patch_gates6.py`；开＋`[fp,#0x14]==0` 才直跳 SUCC，否则 replay 原判；旧 0xB42FC0 门控 nop 退役） | 常开行为 | 墓碑召唤与合成共用 `MixBox.MixtheUnits`，强制 SUCC 会把合成槽垃圾喂给召唤发奖（`Inventory.ctor(this=3)` 必现 SIGSEGV，`fault 0x23`）；`[fp,#0x14]` 实为 `MixBox.UnableMix`（非模式位）；坑：`ldrb` 手工编码 Rn 误写 pc（`E5DF`，反汇编验出，应 `E5DB`=fp） |
| M10 | GATE_MIX3（同址覆盖，15 字，`tools/patch_gates7.py`；借 r1 读标志、每次都用 `ldr r1,[fp,#0x2c]`（同点位前序原指令）恢复，进出 r0–r3 与原生一字不差） | 常开行为 | 铁律补丁：**`bl` 点位之后不得借用 r2/r3 当草稿**——v2 借 r2 读标志未恢复，`r2` 实际携 `mov r2,#0` 旧值（`Random.Range` 不碰它），合成时标志恰为 0（原生一致，侥幸正常）、召唤时标志为 1（污染→必崩，且关路径同崩；纯净包正常；四次观察全对上才定罪） |
| P9x | P9（`patch_affix.py`，`CalculateAB` 出口 `bx lr`→`bl 0xB42F2C`）已 revert 回原生 `bx lr`（2026-09-11），`0xB42F2C` 恢复纯净一致（P9 写的 12 字节恰与原生钳位 helper 逐字相同，无残留） | 移除 | 墓碑召唤必现崩的真凶：`bl` 返回落到 `0x99C51C` 填充字，直掉进隔壁 `Inventory.ctor`（`this`=残留小整数→`fault 0x23`；崩溃栈 `#01 pc 0x99C518` 正中此字）；抽卡/主界面不调 `CalculateAB` 故潜伏至今；教训：**永不碰函数出口（`bx lr`），返回地址会落在填充区**；全文件 diff 审计法（19 处，18 认领＋1 抓获）列为门控纪律 |
| M12 | Affix 100（GATE_AF＋第 12 开关）已整组撤回（用户：没用）：8 点位从纯净版逐字恢复 `bl CalculateAB`（写入前逐个验算目标），门控体 nop，菜单回 11 开关 | 移除 | 无残留；教训：显示层 floor 用户无感，下次先问再做 |
| M11 | GATE_MIX4（同址，21 字，`tools/patch_gates8.py`；开＋slotsNum 非空＋Count>0（`_size@0xC`，由发奖 `get_Item` 越界检查实锤）＋slotAmount>=1（照抄发奖自带 guard）才直跳 SUCC，否则一律 replay 原生；仍只借 r1 且每出口重载） | 常开行为 | 诊断收敛：`b SUCC` 无绕行也崩→定罪强制本身（召唤与合成分 writhe 同一函数但槽为空）；发奖循环确读 slotsNum；两全或维持现状（不可能更糟） |
| P3f | 0xB42EAC 6 words | dead loader E59F204C/E08F2002/E5920000/E5900000/E590005C/E5900000 (wild deref via CS_TARGET, crash every buy) | E3540000/0A000010 + nop x4 (null-safe) | IAP fix v8 |
| D8x | 0xB43068 | 10811A88 (addne lsl#21 x2097152) | 10811508 (addne lsl#10 x1024) | DIA overflow fix v8 |
| M7 | 5 点位各 1 字改 `bl`＋死 READER 区写 5 门控（`tools/patch_gates3.py`；统一 8 寄存器模板；菜单 9 开关） | 常开行为 | 老常开补丁全部收编：P5 合成（0x1224CD8，关→replay 原 `cmp r1,r0`＋`bge` 真看脸，开→直跳成功）、G1/G2 免费抽卡（0x12184F0/508，同 idx6）、P1 金币（0x9A4558，`movw #10226`（旧注 9999 误）/原 `ldr`）、P2 钻石（0x9A1820，原 `add`/`lsl#21`（×200万，旧注×1024 误））；P3-IAP 原函数体已覆盖无备份、保持常开（皮肤随 IAP 免费）；坑：GOLD/DIA 的 `moveq/movne` 条件位漏写被反汇编验出；`const/4` 装不下 9（有符号 4 位）改 `const/16` |
| M6 | 5 处 `bl READER` 改 `bl 0x121A040`（等大换目标字）＋死孪生区写共享 TRAMP（52B）＋`NECR_MOD` 串 | 常开行为 | 环境变量桥（`tools/patch_envtramp.py`；TRAMP：`mov r5,r0` 存 idx→`push {r4-r6,lr}`→`bl PLT_getenv(0x1C2C04)`→空回关（默认开）→`ldrb r0,[r0,r5]`→对 `'1'` 回 1/0；与 READER 同调用约定，原门控尾（cmp/beq＋ON/OFF 动作）零改动；Java：onClick 写 `mod.cfg`（落盘）＋`Os.setenv`（即时），attach 开机从文件 syncEnv；native 零文件 IO、零 syscall；旧 READER/bisect2 的 nop-close 全成死代码，无害。原生考据：`mov r5,#0`（0x999E1C）是转盘起点，ranGrade 0=**E**（非 D），全 E＝真原生铁证） |
| P7 | 0x999E74 | `mov r0,r5` | `mov r0,#7` | 发货等级恒 7（`tools/patch_grade.py`；Inventory.RandomGrade 出口；0=最常见=D，7=最稀有=G，由 movle 链覆盖顺序＋存档标定共同确认） |

productID：`dia100`(6,`1`)→Dia100；`dia800`(6,`8`)→Dia1000；
`dia3000`(7)→Dia4000；`dia10000`(8)→Dia20000；`01_onechance`(12)→OneChance。
（catalog 见 `src/assets/...`？不，在 assets 源包 `661f04434c84041d1aa2d21477e142f4`）

## 已知行为

- 四档钻石：+102400 / +1024000 / +4096000 / +20480000，皮肤随 Dia1000/Dia4000 解锁
- Add Gold：+99990002/次，耗 100 钻
- Unity IAP 真支付已不走；模拟器无 Play 商店，属预期
- 存档：`release_v1/playerprefs_clean.xml`（gold 1000000001，dia 24117248）

## 从零复刻

1. 原包 `D:\安卓逆向\NECR\Necromancer.apk` → apktool 反编译 → manifest 去 StubApp → 得 `src/`
2. `deps/UNITY_0285.jar` + `tools/UnityPlayerActivity.java`（javac，cp UNITY+android.jar）
   + `deps/billing-classes.jar` + `deps/uads-classes.jar` → d8 → `build/dex/classes.dex`
3. 对 `src/lib/armeabi-v7a/libil2cpp.so` 施加 P1–P3（P3 运行 `tools/patch_iap.py`，
   注意脚本内 SO 路径指 src；P1/P2 单指令，见上表）
4. `assemble_unshelled.py` 组装（换 dex、删 `assets/.jgapp`+`libjiagu*`、zipalign、apksigner）
| M13 | 0xB42F94/0xB42FA0 | E8BD4010 x2 (pop {r4,lr} with no push, both exits) | E1A00000 x2 (nop, stack-neutral) | TIERED stack fix v9: root cause of all boot/shop crashes since v3 |
| M14 | 0xB43084 | 01A00005 (moveq r0,r5, r5 clobbered by TRAMP) | 059D0004 (ldreq r0,[sp,#4], saved r5) | GRADE-OFF replay fix v9 |
| M15 | FARM 0x1B3B7F4 (13 bodies TRAMP/TIERED/G1/G2/GOLD/DIA/G/P/GOD/R/U/MP2/MIX4) + C1/C2 restore + 16 sites retarget | caves-in-pool -> relocation | v10 整体搬迁，修钻石必崩+抽卡概率崩（tools/patch_relocate.py） |
| M16 | FARM2 0x1AABCE4 (G1/G2/GOLD/GOD/MP2/MIX4/P split-push) + DIA split @0x1B3BC64 | 8/11-reg LDM/STM houdini fault | v11 终版门控形态（tools/patch_splitpush.py） |
| M17 | GOD @0x1AABD64: ON=mov r0,#0, OFF=sub r0,r0,r5 (in-place) | -7 diverted bgt into 0x80000 deref | v12 战斗入口崩修复 |
| M18 | 全部门静态审计 + GRADE-OFF改为mov r0,r5 (@FARM1 1字) | OFF读栈槽是入口旧r5（错值grade） | v13 审计通过版（仅GOD/GRADE待测） |
| M19 | MIX4-ON @0x1AABDD0+: ldr+cmp-self+b SUCC (删手写fp检查+nop垫) | 手写检查读垃圾栈槽必崩 | v14 合成必成功修复 |
| M20 | GODs@0x1B3BA0C: 玩家(r4+95)才r5=0, 敌人走原生sub | v12把敌我血量全置零(死亡管线崩+墓碑崩) | v15 God只保玩家 |
| M21 | GODs: ldrh双标记, 仅==0x0100(非敌且玩家)免伤 | v15误伤敌人(敌prefab带player脏位) | v16 精确区分 |
