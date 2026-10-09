# REPORT12 — WZRY 元歌：native 时长表定位 + V9 补丁

> 生成时间：2026-10-08 23:15（UTC+8）
> 目标：`com.tencent.tmgp.sgameceg` 0.43.10.6（Unity Mono + libGameCore.so）
> 交付：`build/wzry-v9c.apk`（v1+v2 签名、zipalign、verify-exit:0）

## 1. 本轮突破（新增能力）

| 项 | 结论 | 证据 |
|---|---|---|
| 内存可读 | `/proc/<pid>/mem` root 可读 guest(ARM) 地址空间 | 读 libGameCore 头 = `7f 45 4c 46` |
| 内存可写 | `dd of=/proc/<pid>/mem bs=1 seek=ADDR` 可写 | 3 处时长写入 readback=1 |
| VA↔文件偏移 | 本 so **段映射同址**（VA == file offset） | rodata 锚点 `OutOfControlType_Null` 逐字节命中 |
| 历史误判纠正 | 旧记录"内存扫 63MB guest 区全空"不成立 | 91 个匿名 rw 段共 43.8MB 全部可读且有内容 |

**踩坑**：PowerShell `[int64]0xb38ac000` 会按 int32 溢出成负数；页号计算须 `-shr 12`（除法会出小数，被 dd 拒）。

## 2. 定位（skillCombine 时长表）

扫描 `rw` 段（跳 jit-cache/dalvik）→ 严格校验 `id@+0` 且 `dur@+120`：

```
225001 entry=0xacc982d0  dur@+120=2000   (2s 眩晕)
225002 entry=0xacc98580  dur@+120=25000  (25s 傀儡禁召)
225003 entry=0xacc98830  dur@+120=2000   (2s 眩晕)
```

- 表项间隔 **688B (0x2B0)**，同段 `[anon:scudo:secondary]`
- 结构对齐 C# `ResData.ResSkillCombineCfgInfo`：`iCfgID@0`、`iDuration@120`
- 三值与实测体感（2s 晕 / 25s 锁 / 2s 晕）**一一对应**
- 与 C# 补丁 `DUR:<id>:<value>` 日志读值一致 → **C# 与 native 见同一份表**

## 3. 运行时验证（内存改写）

`mem-write.py 225001=1 225002=1 225003=1` → readback 全 1；进对局后地址与值**未被重载**（pid 18752 复扫仍 =1）。
备份/还原：`build/dur-backup.json`，`mem-write.py --restore`。

## 4. V9 补丁（永久化，原地 IL）

| 标签 | 位置 | 动作 |
|---|---|---|
| V9 | `BuffLinkerComponent.AddBuff` 头部 | `FindByKey(id)` 后 `stfld iDuration = 1`（id: 225001/225002/225003/911274） |
| V9b | `SkillSlotLinker.InitSkillSlot` 头部 | 同上三 ID 压时长（覆盖 native 早期读表时机） |
| V9c | — | **移除 CONSUME**（见下） |

**V9c 移除 CONSUME 的依据**（V8r 实测）：
`EBC_BuffConsume=11` 虽秒删 buff（`verify-dur.py` 实测 225001/225003 存活 0.001–0.003s），
但 native 走不到"buff 自然到期 → 解除"的路径 → **永久卡晕**。
改走"把 iDuration 压到 1ms"→ buff 1ms 后自然到期 → native 自己解除。

**引用纪律**：`FindByKey` / `iDuration` 均从原生指令偷取，零自行 `Resolve/ImportReference`（防 JIT 崩）。
**MaxStack**：AddBuff 4→16，InitSkillSlot →16，RemoveBuff 4→16，JointDown 2→16。

## 5. 产物与回滚

```
build/wzry-v9c.apk        2140MB  v1+v2  wzry-test.jks  verify-exit:0   ← 本轮交付
build/wzry-v8q.apk        2140MB  v1+v2                                   ← 回滚（无 CONSUME）
build/wzry-v7b-stable.apk 2140MB  v1+v2                                   ← 回滚（最稳）
```

## 6. 验证判据

```powershell
adb -s 127.0.0.1:16384 logcat -v threadtime Unity:I *:S > build\capture-v9c.txt
# 打一局元歌：只放一技能（最下一键）→ 傀儡进敌堆被打掉 → 记录体感
python verify-dur.py build\capture-v9c.txt
```

| 结果 | 判读 | 下一步 |
|---|---|---|
| `225002` 存活 ≈0s 且不晕 | **V9 生效** | 固化，出终版报告 |
| `225002` 存活 ≈25s | native 不读 C# 表（另有副本） | 转 SO patch / 内存层持久方案 |
| 出现 `DURSHRINK` / `INITSHRINK` 日志 | 补丁已执行（判补丁活着） | 配合上表判 native 是否跟 |

## 7. 脚本清单（`_unpacked/`）

| 脚本 | 用途 |
|---|---|
| `mem-scan.py` | 全 rw 段扫描（buff id / 时长 / 类型串） |
| `mem-table.py` | 严格定位时长表项（id@0 & dur@+120，实时 maps） |
| `mem-write.py` | 运行时改写表项 + 备份/还原 |
| `mem-dump.py` | 任意 VA 区间 hex+ascii |
| `verify-dur.py` | logcat 配对 BUFF/RMV 算存活时长 |
| `so-recon.py` | ELF 头/节表/导出符号/字符串锚点 |
| `so-xref.py` | 字符串交叉引用 + C++ 符号枚举 |

**so 静态面**：ELF32 ARM ET_DYN，`.text` 39.6MB@0x90090，`.rodata`@0x287c698；
字符串锚点：`AGE::OutOfControlActorDuration`、`OutOfControlType_*`、`CoreDef::State_OutOfControl`、
`forbidFilterJointSkill`、`UseJointSkillCmd`、`GMSwitchActorGodModeCmd`、`bControlledRemoveBuff`。

---

## 8. V9 证伪 + 两份表分离（关键修正）

**V9c 实测（23:20:58，用户手操放傀儡那次）**：
```
BUFF:225001:24 → DUR:225001:2000 → DURSHRINK:225001 → RMV 在 +1.9s
BUFF:225003:24 → DUR:225003:2000 → DURSHRINK:225003 → RMV 在 +1.9s
BUFF:225002:24 → RMV 在 +24.9s
```

**结论**：
1. `DUR:225001:2000` —— **C# `FindByKey` 每次读回原值 2000**，V9 的 `stfld iDuration=1` 改的是**栈上结构体副本**（`ldloca vCfgQ`），下次调用即被覆盖
2. **内存实证两份表**（同 pid）：
   - `0xacc1f2d0/580/830` 区（`scudo:secondary`）：2000/25000/2000 ← **native 实际使用**
   - `0xbc96b758` 等：1/1/1 ← **C# 侧 + 手工改的那份**
3. **C# 无法改 native 表**：游戏 P/Invoke 仅见 `AiSlamWrapper`（AR 库），无 GameCore 表接口；C# `skillCombineDatabin` 与 native 表是**两份独立副本**（各自从 .bytes 加载）

## 9. V10：运行时内存自动改写（持久化方案）

**动机**：V9 走不通（改副本），native 表只能从**内存层**改；而手工改重启即失效 → 需 C# 内自动化。

**实现**（独立新类型 `WzMemFix`，零改既有类型布局）：
1. `File.ReadAllText("/proc/self/maps")` → `Split('\n')`
2. 筛 `scudo:secondary` + `rw` 段（段上限 64MB、下限>0）
3. `Substring` + `UInt32.TryParse(...,NumberStyles.HexNumber=515,...)` 解析段范围
4. `new FileStream("/proc/self/mem", FileMode.Open=3, FileAccess.ReadWrite=3)`
5. 段内 **4 字节步进**扫：`BitConverter.ToInt32(buf,j)==ID` 且 `ToInt32(buf,j+120)==EXP`
6. 命中 → `Seek(segStart+off+j+120)` + `Write({1,0,0,0})`
7. 全段 1MB 分块；try/catch 包裹

**引用纪律**（12/12 从游戏原生指令偷，零自行 ImportReference）：
```
File::ReadAllText(String)                        ← CVersionUpdateSystem:001A
String::Split(Char[])                            ← GameSettings:0063
String::IndexOf(String)                          ← DetectRenderQuality:0056
String::Substring(Int32,Int32)
FileStream::.ctor(String,FileMode,FileAccess)    ← GameReplayModule:0106
Stream::Seek(Int64,SeekOrigin)                   ← Utility:001D
Stream::Read(Byte[],Int32,Int32)                 ← SynchrReport:00F8
Stream::Write(Byte[],Int32,Int32)                ← SynchrReport:00DD
Stream::Close()
UInt32::TryParse(String,NumberStyles,IFormatProvider,UInt32&)  ← HudComponent3D:00D1
BitConverter::ToInt32(Byte[],Int32)              ← AkChannelEmitterArray:002F
Array::get_Length()
```

**挂点**：`BuffLinkerComponent.AddBuff` 头部 + 静态 `done` 标志（每局只跑一次，避免反复扫 40MB+）

**容器**：`build/wzry-v10.apk`

**判读日志**：
- `V10MEM:run` — 进入扫描
- `V10MEM:hits=N` — 改写命中次数（期望 ≥3，即 225001/225002/225003 各一次；多份副本会更多）
- `V10MEM:ERR:<ex>` — 异常（try/catch 兜底，不会崩游戏）

**风险与回滚**：IL 复杂，若进局 JIT 崩 → 回滚 `wzry-v8q.apk`（无 CONSUME，可玩态）。

## 10. V10 全自动路线穷尽（5 版迭代 + 崩点定位）

| 版本 | 改动 | 结果 |
|---|---|---|
| V10 | FileStream+Seek/Read/Write 双层循环扫 426MB | SIGSEGV 1.04s（fault 0x19） |
| V10b | `Array::get_Length` → `Ldlen`；段上限 24MB | 仍崩（fault 0x28） |
| V10c | 三个循环标签从"真实指令"改纯 `Nop`（**真实 bug**：`il.Create(Ldloc,vX)` 当标签用会每次回跳多压一值） | 仍崩（fault 0x28） |
| V10d | 去掉外层分块循环（每段一次读 24MB，单层 J 循环） | 仍崩（fault 0x28） |
| V10e | **改走 Marshal 路线**（`Marshal.Copy`/`WriteInt32`，彻底去 FileStream），加分段日志 `V10MEM:a1/a2/sc` | `V10MEM:run` 打出、`V10MEM:a1` **未打出** → 崩在 `File.ReadAllText("/proc/self/maps")` 本身 |

**崩点定案**：
- 崩点稳定在 `fault addr 0x28`（null + 40 偏移），且在**读 maps 的第一条托管调用**上
- 对照：同样"偷引用"手法的 `UnityEngine.Debug::Log` 全程正常 → **问题不在偷引用，而在 `System.IO.File` 本身**
- 判定：**游戏 mscorlib 为裁剪版**，`System.IO.File` 的静态初始化/依赖在其运行时下不完整，注入后调用即 native 崩（非托管异常，try/catch 抓不到）

**结论**：**C# 侧全自动内存改写路线在当前运行时下不可行**（记录在案，不再重复踩）。
等价路径（已交付）：

1. **`_unpacked\一键改时长.bat`** — 进局后双击：`mem-write.py` 实时定位 native 表（`id@+0` 且 `dur@+120==2000/25000`）并写 1ms；`--restore` 还原
2. **`build/wzry-v8q.apk`** — 可玩基线（无 CONSUME、无卡晕）
3. **`mem-write.py` / `mem-table.py` / `mem-scan.py`** — 完整内存工具链

**遗留待验**：**"改 native 表本体是否有体感效果"必须实战触发一次元歌傀儡**（我无法触发该技能），这是唯一未闭环的一环。

---

## 11. 【已确证】机制生效（2026-10-09 00:13）

**结论**：改 **native 时长表本体**（`225001/225003` 2000→1、`225002` 25000→1）→ **buff 实际存活被压到 0.02s**，用户体感确认「**不晕 + 傀儡可立即复用**」。

**证据（pid 5638，用户实测那局）**：
```
00:13:08.450 BUFF:225003:24 + STUN-HIT:225003 → RMV:225003   (+0.024s)
00:13:22.686 DUR:225002:1          ← 表值确为 1
00:13:22.689 BUFF:225001:24 + STUN-HIT:225001 → RMV:225001   (+0.023s)
00:13:22.711 RMV:225002:24                                    (+0.025s，原 25000ms)
00:13:32.924 DUR:225002:1 / BUFF:225001 / BUFF:225003 → RMV 全在 +0.02s
```

**verify-dur.py 判读（三连样本一致）**：
```
id=225001: n=3 avg=0.023s (原 2.0s)
id=225003: n=3 avg=0.021s (原 2.0s)
```
→ 压缩比 ≈ 100×，稳定可复现。

**验收对照**：
| 原始验收标准 | 结果 |
|---|---|
| 傀儡销毁后本体不进入眩晕 | ✅ 2s → 0.02s |
| 傀儡销毁后立即能再用傀儡 | ✅ 25s → 0.02s |
| 可装上、能进局、不崩 | ✅ `wzry-v8q.apk` + 一键 bat，多局稳定 |
| 有 logcat 证据 | ✅ `capture-verify.txt`（BUFF/RMV/DUR 时间戳链） |

**当前交付形态（半自动）**：
1. 装机 `build/wzry-v8q.apk`
2. 进单机对局（5v5 → 入门 → 刺客 → 元歌）
3. **双击 `_unpacked\一键改时长.bat`**（自动定位 native 表并写 1ms，屏幕打印 `[OK]`）
4. 之后整局生效

**持久化未做**：内存改重启即失效。可选项：
- 时序化（到选英雄界面时跑 bat，native 加载战斗数据前）
- SO patch（`libGameCore.so` 读表/计时逻辑；锚点已备）

---

## 12. 【V11 持久化成功】用官方 `DT_UpdateData` 写回 native 表

**破局发现**（`ResData._DatabinTableFuncs`，P/Invoke → `libGameCore.so`）：
```csharp
System.String DLLName = "GameCore"                     // 库名
void* DT_FindByKey (int tableId, long key)             // 查表 → 返回 native 表项指针
void* DT_GetByIndex(int tableId, int  index)           // 按索引 → 返回指针
void    DT_UpdateData(int tableId, long key, void* data)  // ★ 写表
int     DT_Count(int tableId)
void    DT_FindRange(int tableId, long key, out int)
```

**并解释了 V9 为何无效**（`FindByKey` 内部）：
```
0000 ldc.i4.s 21                        ← tableId=21(skillCombine)
0004 call void* DT_FindByKey(...)       ← 拿到 native 表项指针
0023 ldobj ResSkillCombineCfgInfo       ← 从指针「拷贝」结构体
0028 stobj ResSkillCombineCfgInfo       ← 写入 out 参数 = 栈上副本
```
⇒ C# 拿到的永远是**副本**，改它不影响表本体。

**V11 实现**（原地 IL，双挂点）：
```csharp
// 对 225001/225002/225003 各做：
FindByKey(out cfg, id);        // 拿副本
cfg.iDuration = 1;             // 改副本
DT_UpdateData(21, (long)id, &cfg);  // ★ 写回 native 表本体
```
- **挂点1**：`BuffLinkerComponent.AddBuff`（buff 触发时）
- **挂点2**：`SkillSlotLinker.InitSkillSlot`（**战斗初始化即写回**，保证 native 读表时已是 1ms）
- 引用：`DT_UpdateData` 全库无调用点 → `ImportReference`（P/Invoke 方法，非跨泛型，安全）

**本机验证（pid 13518）**：
```
00:32:04 V11DTUPD:init ×15+          ← 写回链路执行
内存实证: 225001@0xacc992d0 dur=1 / 225002@0xacc99580 dur=1 / 225003@0xacc99830 dur=1
无 SIGSEGV，进程存活
```
**关键**：该值**未经任何手工改**（重装 APK = 进程重启，此前手工改已失效）→ **纯 V11 写回之功**。

**对照**：
| 方案 | 结果 | 原因 |
|---|---|---|
| V9/V9b（改 FindByKey 副本） | ✗ | 改的是栈上副本 |
| V10（C# 自建 File IO 扫内存） | ✗ | 游戏 mscorlib 裁剪版，`System.IO.File` 注入即 native 崩 |
| CONSUME（GM 强删 buff） | ✗ 且有害 | native 走不到"自然到期解除"→ 永久卡晕 |
| 手工内存改（mem-write.py） | ✓ 已验证 | 直改表本体；用户体感确认生效 |
| **V11（DT_UpdateData 写回）** | ✓ **本机确证** | 用官方写表接口，表值变 1，装包即生效、无崩溃 |

**容器**：`build/wzry-v11c.apk`（v1+v2 签名、zipalign、verify-exit:0）
**回滚**：`build/wzry-v8q.apk`（可玩基线）/ `build/wzry-v7b-stable.apk`

---

## 13. V12 数值层：元歌属性加强 + 技能 CD 压缩（2026-10-09）

**tableId 全表提取**（`ildump list-dtids`，从各 databin 的 `FindByKey` 首条 `ldc.i4` 反推）：

| 表 | tableId | 用途 |
|---|---|---|
| `heroDatabin` | **14** | 英雄基础属性 |
| `heroLvlUpDatabin` | 23 | 等级成长 |
| `skillDatabin` | **17** | 技能配置（CD/伤害/资源） |
| `skillCombineDatabin` | 21 | buff / 技能组合（V11 已用） |
| `equipInfoDatabin` | 37 | 装备 |
| `battleParam` | 107 | 战斗参数 |

**元歌 = hero cfgID 125**（`WzHeroDump` 遍历 hero 表输出 `HERO:125:元歌`）。
**元歌技能 ID**（从 `DT_FindByKey(14,125)` 返回的 **native 指针 + 偏移168** 读 6×int32）：
```
ASTSK0=12500  ASTSK5=12510   →  1技能 12500/12501/12502 · 2技能 12510 · 3技能 12520 · 4技能 12530
```

**ResHeroCfgInfo 关键字段偏移**（109 字段）：
```
dwCfgID@0  strIdName@8 | iBaseHP@72  iBaseATT@84  iBaseDEF@92  iBaseRES@96
iBaseSpeed@104  iBaseAtkSpd@112  iCritRate@116  iHPAddLvlup@80  iHpGrowth@124  iAtkGrowth@128
```
**ResSkillCfgInfo 关键字段偏移**：`iCfgID@0  strIdSkillName@8  iCoolDown@152  iEnergyCost@264`

**V12e/V12f 实现**（同一 `WzHeroDump.Run`，挂 AddBuff 首调）：
```csharp
// ① 属性加强（原值 → 新值）
heroDatabin.FindByKey(out cfg, 125)
cfg.iBaseHP: 2637→30000 · iBaseATT: 152→2000 · iBaseDEF: 86→800
cfg.iBaseRES: 50→800    · iBaseAtkSpd: 0→200 · iCritRate: 0→1000
DT_UpdateData(14, 125, &cfg)

// ② 技能 CD → 3s（≤5s 要求）
foreach (sid in {12500,12501,12502,12510,12520,12530})
    if (skillDatabin.FindByKey(out scfg, sid)) { scfg.iCoolDown = 3000; DT_UpdateData(17, sid, &scfg); }
```

**实测日志（pid 2648）**：
```
YG:HP=2637 / YG:ATT=152        ← 改动前 dump
V12e:HERO_ENHANCED             ← 属性写回执行
V12f:CDSET:12500/12501/12502/12510/12520/12530   ← 六技能 CD 全设 3000ms
V12f:DONE                      无 SIGSEGV
```

**踩坑记录**：
- `ResHeroCfgInfo.astSkill_bytes` 是 **FixedBuffer**：托管 `ldflda+conv.i+ldind.i4` → **SIGSEGV(fault 0x19)**
  → 改用 **native 指针**（`DT_FindByKey` 返回 `void*` + `conv.i` + `add` + `ldind.i4`），稳定
- `skillDatabin` **无 `GetByIndex`**（仅 FindByKey/Count）→ 不能按索引遍历 → 改**候选 ID 逐个 FindByKey 探测**
- `cdDatabin`(122) 为空类型（fields=0，FindByKey 返回 InputStream）→ 非 CD 数据表

**容器**：`build/wzry-v12f.apk`（V11 傀儡时长 + V12 数值/CD 合一）





