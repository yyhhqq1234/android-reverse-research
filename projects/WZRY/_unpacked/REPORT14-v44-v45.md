# REPORT14 — v44 减痕版 + v45 攻速加强（元歌本体 100% / 傀儡 200%）

> 日期：2026-10-09 23:55 → 2026-10-10 00:01
> 目标包：`com.tencent.tmgp.sgameceg`（王者荣耀 离线测试版 0.43.10.6）
> 构建机：MuMu instance 0（`adb 127.0.0.1:16384`）

## 1. 交付物

| 版本 | 文件 | 大小 | SHA256 | 说明 |
|---|---|---|---|---|
| **v44** | `build/wzry-v44.apk` | 2,141,000,031 B | `75929168BD13EF51E265C0B20DA95E45E2545D65E626E24E94B5B07BCBA724E3` | 减痕版（行为零改动） |
| **v45** | `build/wzry-v45.apk` | 2,141,000,031 B | `2D84A81DBB025FE32BC6BB465DDEE9DCE5177254329942E9378541EAF5BFD66B` | 减痕 + 攻速加强 |

签名：`wzry-test.jks`（CN=WZRY-TEST），v1 + v2 + v3 均 verified；`zipalign -f -p 4` 通过。
**当前装机 = v45**（`lastUpdateTime=2026-10-10 00:00:32`，前版 v43 = 2026-10-09 21:08:12）。

## 2. v44 — 减痕（行为零改动）

新增补丁器开关 `static bool Verbose = false;`（`patcher/Program.cs`）。
关闭后下述诊断 IL **完全不生成**（不是"打了再丢"，是根本不插入）：

| 日志 | 原频率 | 处置 |
|---|---|---|
| `SETHp:<cur>:<total>` | 每次 `SetActorHp`（最高频） | 关 |
| `V30T:<id>:as=<v>` | 每次表扫（节流 1/64 帧） | 关 |
| `V35:PUPPET225` / `V35:SK<id>` | 每次 Apply | 关 |
| `V39:CNT14=<n>` | 表就绪探针 | 关（**就绪门逻辑保留**，只去日志） |
| `V22S:...`（8 字段取证） | 每次 Apply（原本仅一次） | 关 |
| `ACT:cfg=<id>:tot=<v>` | 每次 actor 上限增长 | 关 |
| `V15:REFILL:<v>` | host 上限增长时 | 关 |

保留：`V11DTUPD:init`（启动）、`V16O→V45:` 一次性字段 dump（每进程一次，用于 logcat 认构建）、各 `V2x/V4x hooked` 控制台输出。

**实测（装 v45、冷启动、logcat -c 后 80s）**：

```
pidof com.tencent.tmgp.sgameceg → 2535        （存活）
logcat -b crash  SIGSEGV/FATAL/SIGTRAP → 无
V45: 标记 → 有（V45:64=131843 / V45:72=2637 …）
SETHp:        0        V30T:       0
V35:PUPPET225 0        V39:CNT14   0
V22S:         0        ACT:cfg=    0
V15:REFILL:   0
logcat 总量：1744 行
```

## 3. v45 — 攻速加强

量纲（实测确认）：`ResHeroCfgInfo.iBaseAtkSpd`**@+112 是万分比** → 写 5000 面板显示 50%，故 **100% = 10000，200% = 20000**。

三处同时改，保证"表被读 / 钩子生效"两条路都给同一结果：

| 层 | 位置 | 值 |
|---|---|---|
| 表·本体（125 及其同名行横扫） | `WzFix.Apply` `writeAt(112, …)` | **10000**（原 5000） |
| 表·傀儡（225 行） | `WzFix.Apply` `writeAt(112, …)` | **20000**（原 5000） |
| 创建期·本体档 | `ActorStaticLobbyDataProvider::BuildActorData` (V28/V29) `fAspd28` | **10000** |
| 创建期·傀儡档 | 同上，新增 **cfgID==225 直跳入口 `lPuppet28`** | **20000** |
| 每帧·host 演员 | `ValueLinkerComponent::LateUpdate` (V41) `Type==18` | **按角色分档**：`get_handle().get_ConfigId()==225 → 20000`，否则 **10000** |

关键新增（V41 分档）：

```csharp
// 取 ActorHelper 里现成的两个方法引用
mHandle41 = get_handle()      // PoolObjHandle<ActorLinker>::get_handle
mCfgId41  = get_ConfigId()    // ActorLinker::get_ConfigId
// LateUpdate 内（IsHostCtrlActor 门之后）：
vCfg41 = this.actorPtr.get_handle().get_ConfigId();
vAs41  = (vCfg41 == 225) ? 20000 : 10000;     // 傀儡 200% / 本体 100%
… case41L(18) 用 vAs41 写 BaseValue
```

V28/V29 傀儡档分支原本条件是 `cfgID ∈ 1100..1400`（历史猜测，从未命中）。
本轮改为**显式 `cfgID == 225` 入口**，并把该档数值对齐表值（HP 40000 / AD 4000 / AP 4000 / DEF 1500 / RES 1500，PerLv 2000/500/500/200/200），
使"钩子生效/不生效"两条路输出一致（原 80000/8000 一组从未生效过）。

补丁器自检：`V41 refs … handle=True cfg=True` → 分档链路已接通；`V28/V29 hooked (one ret=1)`、`V43 hooked=2` 均正常。

## 4. 复现步骤

```powershell
# 1) 补丁器编译 + 生成 mod dll
cd D:\APK-Reverse\projects\WZRY\_unpacked\patcher
dotnet build -v q ; dotnet run --no-build
# 2) 换入 apktool 树
copy /Y ..\Assembly-CSharp.mod.dll ..\apktool\assets\bin\Data\Managed\Assembly-CSharp.dll
# 3) 回编 → 对齐 → 签名
java -jar D:\APK-Reverse\tools\_unified\jars\apktool.jar b ..\apktool -o ..\build\wzry-v45-unsigned.apk -f
tools\build-tools-win\android-14\zipalign.exe -f -p 4 <unsigned> <aligned>
#   口令走环境变量，不落盘：
$env:WZRY_KEYSTORE_PASS='<本机口令>'
tools\build-tools-win\android-14\apksigner.bat sign --ks ..\wzry-test.jks `
  --ks-pass env:WZRY_KEYSTORE_PASS --key-pass env:WZRY_KEYSTORE_PASS `
  --v1-signing-enabled true --v2-signing-enabled true --out ..\build\wzry-v45.apk <aligned>
# 4) 装机
tools\platform-tools\adb.exe install -r ..\build\wzry-v45.apk
```

回滚：`projects\WZRY\wzry.apk`（原始 vanilla 2.0 GB，直接装即回原版）；上一版成品 `build\wzry-v43.apk`。

## 5. 判据与用户确认

> **已确认（2026-10-10 00:19）：用户回执「没问题」** —— 面板攻速 本体 100% / 傀儡 200% 生效。
> 取证：`build/log-v45-confirm.txt`（pid 2535 存活 18+ 分钟、crash buffer 0 行、26,488 行 logcat 中诊断关键字仅 20 行且全为每进程一次的 `V45:` 字段 dump）。


1. 进对局后面板「**攻速加成**」= 本体 **100%**、傀儡 **200%**（其余项保持 攻击 3000 / 防御 1000 / 法抗 1000 / 生命 30000）。
2. logcat 首场应只见 `V45:` 一次性 dump，不再刷 `SETHp:` / `V30T:` / `ACT:cfg=` / `V35:`。
3. 首场即生效（沿用 v43 的 `BattleLogic/LevelLogicBase::Update` + `ValueLinkerComponent::LateUpdate` 双挂点）。

**状态：v45 = 当前稳定版（用户已确认）。** 回滚：`projects\WZRY\wzry.apk`（vanilla 原包）或 `build\wzry-v43.apk`。

## 6. 死路记录（勿重试）

- **计划外事故**：改补丁器时用 PowerShell 批量替换，`$pairs` 被展开成一维数组 → `$pr[0]` 取到的是字符串首字符 → 全文被逐字符替换污染。
  处置：`git checkout -- Program.cs` 回滚后，改用 **二维数组 + CRLF 归一化**（文件是 CRLF，here-string 是 LF，不归一化则多行模式全部不匹配）重做成功。
  教训：批量改源码必须先比对行数、再编译；`$t.Contains` 命中前先断言 pattern 长度 > 40。
- 攻速不要写 50/200 之类的"百分数直给"——该字段是万分比，写 50 等于 0.5%。
