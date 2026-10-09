# TASKPOINT — 项目级任务断点

> 保存时间：2026-10-08 19:15（UTC+8）
> 项目根目录：D:\APK-Reverse
> 分支/版本：main @ 2fefd48（2026-09-26 14:25 chore: .gitignore增补DWRG大体积生成物与完整客户端）

## 1. 任务目标
- 一句话目标：WZRY（王者荣耀离线测试版 0.43.10.6 / `com.tencent.tmgp.sgameceg`）——把英雄「元歌」做成**傀儡被销毁后不吃眩晕、且能立刻再用傀儡**。
- 验收标准：
  - [ ] 元歌释放傀儡 → 傀儡被击杀/销毁 → 本体**不进入眩晕状态**（无短腿/无法操作）
  - [ ] 傀儡销毁后**傀儡键立即可再按**（无「一段时间内无法再使用傀儡」的锁）
  - [ ] 改包只动 `Assembly-CSharp.dll`（原地 IL 改，不新增字段/方法/线程），APK 可装上、能进局、能正常打完一局不崩
  - [ ] 有 logcat 证据（`BUFF:` / `CHEAT:`）+ 截图/墓碑归档

## 2. 背景与现状
- 本目录是安卓逆向项目集（BREM/NECR 已完结封存只做复现/验证，DWRG 待动态，CE 链路已通，详见 §6 历史条目）。
- **当前活跃任务**：WZRY 元歌改包，工作区 `projects/WZRY/_unpacked/`。当前装机 `build/wzry-v8n.apk`（门250+摧毁排他集，待真摧毁体感验证）。
- 目标样本：`projects/WZRY/王者荣耀离线测试版_0.43.10.6.apk` / `projects/WZRY/wzry.apk`（同尺寸 2140869415 B，**只读，未动**）。
- 技术形态：Unity **Mono** C#（`Assembly-CSharp.dll` 10113024 B）+ 原生 `libGameCore.so`（ARM 43MB，`DT_*` P/Invoke 表 API，`.bytes` 表加密，战斗逻辑 native 权威）。
- 关键结论（已实测，2026-10-08 全天 10+ 对局验证）：
  - 一技能=秘术·影=**最下一键**（自下而上1/2/3；bot曾长期按成三技能白打多局）；**没有所谓的傀儡键**（JointSkillButton系列实战不存在，P12/P12c从未执行）。
  - 傀儡没了=**特殊debuff，与技能CD无关**；禁召是native直写（C#开火链`SendUseJointSkill`无`m_JointSkillLimited`检查）。
  - 摧毁排他集（hero-actor，三杀全中零误触）：`225001`(2s)+`225003`(2s)=晕对，`225002`(25s)=禁锁，`911274`=摧毁脉冲(0s)；`911273`=在场标记(召唤→摧毁)；`911380`=召唤侧（误触会翻转免控，已剔除）；`225002`三杀时间±1s全中（00:53/02:22/04:43→19:16:12/19:17:41/19:20:02）。
  - `ToggleInvincible(5)`只挡伤害**不挡控**（两局手操体感照晕照锁）；`SendCommand`静态链运行时可用（`CHEAT5:auto`多次打出零崩）。
  - 引用铁律：自行`Resolve/ImportReference`曾致JIT崩（tomb18/19/20，`fault 0x2ab/0x19`），一律从原生指令**偷操作数**（ZeroCD→作弊链，UpAndClick→句柄链，GodMode→真神帧）；`MaxStack`必须手动≥16（Cecil不重算，原值AddBuff=4/JointDown=2）。
  - 日志带归属（`BUFF:<id>:<actor>`，actorPtr→get_handle→get_objID全偷原生，进局存活已验）；`60080`=开局标记；设备钟快约5分钟，一律用**比赛时钟mm:ss**框窗口。
  - 表索引：heroBuff=235 / skill=17 / skillCombine=21 / hero=14；`ResHeroBuff`=32B、`ResSkillCfgInfo`=324B。
- 环境事实：测试机重装过（旧实例dd闷死98%超时+VERR_LAUNCH_HEADLESS_CRASH，已删；MuMuManager create/launch建新实例，测试口仍 `127.0.0.1:16384`）。包内只有 `lib/armeabi-v7a`（houdini 转译）；frida x86_64 server看不到转译后lib；`libGameCore` 战斗态只有 r--p/rw-p（无 r-x）。
- 变更记录：2026-09-26 12:09 断点目标为「BREM/NECR 双完结封存 + DWRG 待动态 + 结构迁移」；2026-10-07 起活跃目标切换为上述 WZRY 元歌任务（旧目标与迁移历史全部保留于 §6/§10，未删除）。
- 更新历史：
  - 2026-09-26 12:09：/fullcheck 推倒重建 + projects/tools 结构迁移完成。
  - 2026-10-07 23:37：接入 WZRY 元歌傀儡任务，合并本会话增量（V7b 装机态、patch 清单、雷区新增）。
  - 2026-10-08 19:15：V8全线攻关定案（V7b→V8n十余版）：MaxStack/偷引用定因、摧毁六件套排他定案（225001/225003=2s晕，225002=25s锁）、V8n装机待真摧毁验证；MuMu重装；清57.8+12+17.9GB。

## 3. 总体计划
1. 静态定位元歌傀儡/眩晕相关的 C# 门链与 native 权威点（已做，见 §6）。
2. 原地 IL 补丁（新逻辑只进独立新类型WzGate/WzTableDump）→ 构建签名装机（V1→V8n 迭代中）。
3. 用户手操复现「傀儡销毁 → 晕 + 傀儡不可用」，持续 dump logcat（`BUFF:/RMV:/STUN:/CHEAT:`带归属）+ 截图 + 墓碑 → 定出**眩晕/禁锁 buff ID**（已定，见 §2）。
4. V8n（摧毁排他集+门250+偷引用免控）手操验证：晕否+键锁几秒（比赛中）。
5. 若免控仍防不住晕 → V8o=单ID摘除225002（AddBuff头插直返）或GodMode真神帧（操作数已备齐）；回归完整一局判「不晕 + 傀儡可复用 + 不崩」。
6. 收尾：出报告（改动点位/原字节→补丁字节/签名/对齐/装机验证/回滚路径）。

## 4. 团队模式
- 是否采用团队模式：否
- 单 Agent 执行 + 用户手操游戏（工具侧为 adb / apktool / dotnet+Cecil patcher / logcat）。

## 5. 步骤规划
| # | 步骤 | 负责人 | 状态 | 备注 |
|---|------|--------|------|------|
| 1 | WZRY 解包+静态画像（Mono/native/表） | 石井 | 已完成 | `_unpacked/`，DUMP-REPORT.md |
| 2 | V1→V2 技能门链补丁（P1-P6） | 石井 | 已完成 | V1 只改兜底无效，V2 补全 |
| 3 | V3 AddBuff 全禁验证 native 权威 | 石井 | 已完成 | 崩 + 只去名不去效，回滚 |
| 4 | V5/V6 BuffID 日志通 | 石井 | 已完成 | 60080/90015/90005 |
| 5 | V7→V7b 傀儡键作弊触发（P12b） | 石井 | 已完成 | V7 开局崩；后证实联合键实战不存在，P12 dormant |
| 6 | 用户手操复现：定眩晕/禁锁 buff ID | 用户+石井 | **已完成** | 225001/225003=2s晕，225002=25s锁，911274=脉冲（三杀排他） |
| 7 | V8 精准版（摧毁排他集+门+偷引用） | 石井 | **进行中** | V8n已装机，待真摧毁体感验证 |
| 8 | 回归验证 + 报告收口 | 石井 | 待办 | 判据：不晕+傀儡可复用+不崩 |
| 9 | DWRG 动态抓包（旧待办） | 用户+Agent | 待办 | 需开机+进主界面 |
| 10 | BREM 抽查 + 公开仓库发布检查（旧待办） | 待接 | 待办 | git 检查 |
| 11 | PC 版 CE 连 `127.0.0.1:52734` 首扫（旧待办） | 石井 | 待办 | 拿 DWRG 做两轮 dword 验证 |

## 6. 已完成步骤（已验证事实）

WZRY 任务（本活跃线）：
- [x] 解包与清单：`apktool` 树 + `jadx-dex` + `unity-out`；`dump-inventory.py` → `dump-full/{inventory.txt,sha256.txt,so-inventory.txt,bytes-catalog.txt}`；`DUMP-REPORT.md` = 374 条目、SHA256 `57848e691c5…8c56f`、50 个 ARM `.so`、528 个 `.bytes` 表（熵 3.46–7.92，`ResourcePackerInfoSet.bytes` 1.8MB/熵 3.46）。
- [x] C# 补丁器建成：`_unpacked/patcher/Program.cs`（dotnet + Mono.Cecil），产出 `Assembly-CSharp.mod.dll`；`build-mod` 回编链（apktool→zipalign→apksigner v1+v2 `wzry-test.jks`（口令走环境变量 `WZRY_KEYSTORE_PASS`）→install）；P1-P6/CD-noop/V5-BUFF/V5b-RMV归属/WzGate计数门/MaxStack16/P14排他集。
- [x] V1→V7b 迭代：V2b=P1-P6 装机可进局；V3 全禁AddBuff崩（`tombstone_11` UnityMain SIGSEGV）判native权威；V7 Init发帧崩（tomb15）；V7b按键发cheat稳定多局。
- [x] V8 崩因三连破：tomb18/19/20（`fault 0x2ab/0x19`）→ MaxStack爆（AddBuff原值4，SendCommand序列需5）→ 自行Resolve毒（改偷ZeroCD/UpAndClick/GodMode原生操作数）；`brute-tables.py`证XOR无解；WzTableDump游戏内dump因databin包装崩（tomb17）封存；ildump曾吞泛型`<T>`显示，已修FullName。
- [x] IL级真相（`ildump/`：原文/字段/调用扫描）：`SendUseJointSkill`无`m_JointSkillLimited`检查；`JointSkillButtonDown`原体仅护栏；`AddBuff` cfgData=`skillCombineDatabin.FindByKey`；`m_JointSkillLimited` C#唯一写入是OnUse初始化；`GodMode()`走`SwitchActorSwitchGodMode`帧；`ZeroCD()=SendCommand(2)`，缺口吻合5=免控；CD另有`SGC.NtfSynchSkillCD`同步写入口。
- [x] 手操定案（2026-10-08）：一技能=最下一键（bot曾按成三技能）；无傀儡键；傀儡没=特殊debuff与CD无关；只用一技能专局三杀（00:53/02:22/04:43）排他定案摧毁集；`ToggleInvincible`两局体感防不住晕；归属列存活已验（`BUFF:90005:24`）。
- [x] V8n装机：`build/wzry-v8n.apk`（2140995935 B，v1+v2同签），{225001,225002,225003,911274}+门250+偷引用SendCommand(5)+归属+P12c dormant；进局+整局零崩已验。
- [x] 存储清理：build旧包57.8GB→3包、问题版12GB、V8迭代17.9GB（现仅留v7b-a/v7b-stable/v8n）；`D:\tmp`中转包随手清；MuMu旧实例dd闷死（adbd失联→98%超时），MuMuManager重建新实例，测试口仍16384。
- [x] 设备在线复核（2026-10-08 19:15）：`adb connect 127.0.0.1:16384` → `device`；V8n在装，捕获流活。

全局（历史，全部保留）：
- [x] 根确定：`D:\APK-Reverse`（`.git`，`main @ 2fefd48`；验证：`pwd` + `git log`）
- [x] 断点清除：已删除旧 `D:\APK-Reverse\TASKPOINT.md`（验证：`Test-Path` False）
- [x] 全量读取：通读 AGENTS/CLAUDE/README/.gitignore + BREM/NECR/DWRG 核心 md；实测 adb 1.0.41/apktool 3.0.3/py_compile 0/三原包哈希一致（验证：见 docs/06）
- [x] 结构搬迁 7 处闭环通过（验证：compile 0 + adb/apktool 版本 + Test-Path 全 True）
- [x] docs 重建 6 个≤6通过（验证：`Get-ChildItem docs/*.md` 计数 6）
- [x] 根约束修正：AGENTS 6处/CLAUDE 5处（验证：`Select-String D:\安卓逆向` 零残留于两文件主体）
- [x] 结构迁移 8 目录闭环全绿（验证：adb 1.0.41 + apktool 3.0.3 + py_compile 0×3 + Test-Path 新根全 True + `Test-Path data` False；`git mv` 保历史 BREM/NECR，`Move-Item` 搬 DWRG/tools 四件套/installers；脚本 12 个 + 文档 14 个 + `.gitignore` 全量跟随新根）
- [x] 测试机在线：`tools/MuMu Player 12/`，固定 `adb connect 127.0.0.1:16384`（device），ABI `x86_64`，`adb root` 后 `uid=0(root)` 实测通过；雷区：`su -c` 非交互静默失败（exit 1 无回显），提权一律走 `adb root`；AGENTS §3/CLAUDE §2 已固化端口与提权链
- [x] 接法A联调通过：脚本 v3 已搬 `tools/connect-ceserver.ps1` 全局化（不归属 NECR）+ `tools/installers/ceserver75/`（CE7.5 全套，`ceserver_x86_64` ELF 魔数 `7F454C46` 已验，扩展/Mono .so 已同推 `/data/local/tmp/`），[1/6]→[6/6] 全绿，PC 连 `127.0.0.1:52734` 即用；雷区×2：adb 成功信息走 stderr，`$ErrorActionPreference=Stop` 下会误杀（v3 函数内降级只认退出码）；push 回显红字为妆饰性噪音

## 7. 进行中 / 下一步（新对话先干这个）
- **★ 入库完成（本轮）—— 全量分批推送 `origin/main`**
  - 提交链：`da50cf9` 批次1（DWRG/NECR 产物归位）→ `f45152c` 批次2（SUBR 脚本+报告 102 件、WZRY manifest）→ `13a63c77` 批次3（SUBR jadx 反编译树 15533 `.java`）→ `c4242a82` 批次4（签名口令改 env 占位）。
  - 结果：`HEAD == origin/main`，工作树 clean；HEAD 树 27257 文件，**无 >2MB 文件**，无 `apk/so/dex/jks/keystore/zip/dat/bin` 等禁型（仅 3 个 ≤2MB 的 DWRG `pcap` 属历史留档）。
  - 本轮修的入库缺陷：① 嵌套仓库 `work_dwrg/idv-mimic-direct` 已 `git rm --cached -f` + gitignore；② 硬编码口令全部改环境变量占位（SUBR 三脚本 → `SUBR_KEYSTORE_PASS`；本文件 → `WZRY_KEYSTORE_PASS`）；③ `.gitignore` 增补 `*.class/*.o/*.obj`；④ `t1_evidence.json` 口令字面已改 `(env)`。
  - 重要发现：`TASKPOINT.md` 原被标记 `skip-worktree`（本地 653 行 vs HEAD 192 行，`git status` 长期假 clean）。本轮已 `update-index --no-skip-worktree` 恢复跟踪，当前版本首次入库。
- **★★ 已达成（2026-10-09 21:0x）—— v43 用户确认：首场即生效**
  - 用户确认：「**是**」= **第一场**进局后面板即为 攻击 3000 / 防御 1000 / 法抗 1000 / 攻速 50% / 生命 30000。
  - **最终生效配置（v43）**：
    | 层 | 内容 |
    |---|---|
    | 表·元歌(125) | HP 30000 · AD 3000 · AP 3000 · DEF 1000 · RES 1000 · 攻速 5000(万分比=50%) |
    | 表·傀儡(225) | HP 40000 · AD 4000 · AP 4000 · DEF 1500 · RES 1500 · 攻速 5000 |
    | 表·技能 | 本体 125xx 与傀儡 **225xx** 全部 iCoolDown=2000 · iEnergyCost=0；iCoolDownGrowth/iEnergyCostGrowth=0 |
    | 表·傀儡时长 | skillCombine 225001/225002/225003 → iDuration=1ms（不晕 + 傀儡可立即复用） |
    | actor 后置覆盖 | `ValueLinkerComponent::LateUpdate` → host 演员 `stValueDataInfo.BaseValue`：AD3000/AP3000/DEF1000/RES1000/攻速5000 |
    | actor 血量 | `SetActorHp` host 上限增长时强推 30000 并补满（受伤不补 → 不是无敌） |
  - **关键挂钩点（全部已验证，勿乱动）**：
    1. `WzFix.Apply` → 同时挂 **`BattleLogic::Update`** + **`LevelLogicBase::Update`**（战斗装载期，抢首场）
       + `SkillLinkerComponent::LateUpdate`（兜底）；Apply 内部有 `DT_Count(14)` 就绪门
    2. `ValueLinkerComponent::LateUpdate(int)` → V41 属性覆盖
    3. `ValueLinkerComponent::SetActorHp(int,int)` → V42 生命强制
  - **装机**：`build/wzry-v43.apk`（APK 21:06:28 / install **21:08:12**，v1+v2，CN=WZRY-TEST）
  - **回滚**：`projects\WZRY\wzry.apk`（**vanilla 原始包，2.0GB，直接装上即回原版**）；
    或改 `patcher\Program.cs` 后重跑构建链重出一版（约 7 分钟：dotnet run → 拷 dll → apktool b → zipalign → apksigner → adb install）
  - **工作目录清理（2026-10-09 21:1x，共释放 4.92 GB，D 盘可用 171.6 GB）**：
    - 删：冗余原始解包树 `projects\WZRY\王者荣耀离线测试版_0.43.10.6\`（2.07GB，vanilla 解压副本，原始 apk 仍在）
    - 删：28 个陈旧 `*.idsig` 签名侧车（448MB）· `frida-server`(110MB) · `mem-guest.bin`(63MB) ·
      旧会话 `capture-*.txt`(~130MB) · 全部临时 png(~40MB) · `log-v8*/log-r4`
    - 删：`_unpacked\jadx-dex` · `dump-full` · `unity-out` · `patcher\obj`
    - 删：`build\wzry-v7b-stable.apk`（1.99GB，与 vanilla 回滚路径重复）
    - **保留**：`build\wzry-v43.apk`（成品）· `_unpacked\apktool\`（2.14GB，构建输入，下次出包必需）·
      `_unpacked\src-all\`(67MB IL dump) · `_unpacked\Databin\`(20MB) · `patcher\`(源码+可执行) ·
      `build\layout.txt`(全字段偏移表) · 各版关键证据 `log-v*.txt`
  - **第二轮审查清理（2026-10-09 21:3x，再释放 2.23 GB；本会话累计 7.15 GB，D 盘可用 173.87 GB）**：
    - **WZRY 深度清理（0.34GB）**：废弃路线遗留 —— `fs-x8664`(frida-server) · `libGameCore-device.so`(设备副本) ·
      `data.unity3d`(与 apktool 树内重复) · 4 个陈旧 patcher 中间 dll（`.dump/.nodump/.v2b/.v7b-backup`）·
      `dexheader.txt`/`csharp-*.txt`/`unity-types.txt`(已被 src-all IL dump 取代) ·
      frida/GG/jadx 相关 `*.py/*.js/*.lua/*.ps1/log/*.bak-*` · `apktool\build\`(构建中间目录)
    - **跨项目清理（1.89GB）**：`DWRG\work_dwrg\offline_assemble\offline_dwrg_aligned.apk`(未签名对齐中间包，
      已签名成品 `b_static\dwrg_B1_signed.apk` 保留) + 其 `.idsig`；全工作区 `__pycache__` 与散落 `*.idsig`
    - **保留未动**：DWRG 原始包/签名成品/证据 json · NECR(封存) · BREM · SUBR · 全部原始 APK
    - **构建链复检完好**：patcher 运行正常（V14/V15/V29/V41/V43 全部 hook 输出）、apktool.yml 在、
      jks 在、成品在
  - **待操作者拍板的剩余可回收项（未动）**：
    | 项 | 大小 | 影响 |
    |---|---|---|
    | `SUBR\tools\ndk` | 1.35 GB | SUBR 项目 NDK 工具链；SUBR 若已完工则无用 |
    | `DWRG\第五人格（官服正式版）\`(解包树) | 2.12 GB | 原始 apk 仍在，可重解包 |
    | `SUBR\apktool_out\` + `SUBR\SUBR\` | 0.94 GB | 两棵解包树；原 apk 仍在 |
    | `DWRG\work_dwrg\raw\assets\res.npk` | 0.51 GB | 提取出的资源包，npk 工作可能要用 |
    | `DWRG\work_dwrg\b_static\dwrg_B1_signed.apk` | 1.87 GB | DWRG 已签名成品；交付完成才可删 |
    | `WZRY\_unpacked\apktool\` | 2.18 GB | **下次出包必需**；删了可从 `wzry.apk` 重解（~10 分钟） |
    | `WZRY\_unpacked\build\wzry-v43.apk` | 2.00 GB | 本次成品；删了可用 patcher 重出（~7 分钟） |
    | `tools\MuMu Player 12\vms\...\data.vdi` | 18.74 GB | **模拟器系统盘，不是文件** —— 删了等于清空模拟器（含已装游戏） |
- **★ V43（2026-10-09 21:0x）—— 抢"首场"窗口：把补丁挂到战斗逻辑层每帧入口**：
    `PropertyHelper.SetValueDataArrData` · 启动期解引用（表未加载 → fault 0x19）· CONSUME 删 buff
  - **可选收尾（未做）**：出一版"减痕版"——去掉逐帧诊断日志（`V30T/V35/V39/V22S/ACT/SETHp`），
    行为零改动，只降 logcat 与每帧开销。
- **★ V43（2026-10-09 21:0x）—— 抢"首场"窗口：把补丁挂到战斗逻辑层每帧入口**：
  - **用户实测（v42）**：**数据确实会改了**，但 **第 1 场不变、第 2/3 场才变**。
    机制解释：实际生效的仍是"表补丁"，而 `WzFix.Apply` 原本只挂 `SkillLinkerComponent::LateUpdate`（战斗内、actor 之后），
    所以首场晚一步；而表写入在**同一进程内会保留** → 第 2/3 场 actor 创建时表已是新值，于是"后面几场都对"。
  - **V43 处置**：把同一套 `Apply` 再挂到**战斗装载期**的两个每帧入口 ——
    `Assets.Scripts.GameLogic.BattleLogic::Update()` 与 `Assets.Scripts.GameLogic.LevelLogicBase::Update()`
    （已确认 hooked=2）。它们比 `SkillLinkerComponent::LateUpdate` 更早跑到 ⇒ 抢在首场 actor 读表之前落补丁。
    `Apply` 内部自带 `DT_Count(14)` 就绪门 → 表没好时直接返回，不触碰行指针（避开 v37 登录崩的窗口）。
  - **保留**：V41（host 演员 `stValueDataInfo.BaseValue` 后置覆盖：AD 3000 / AP 3000 / DEF 1000 / RES 1000 / 攻速 5000）
    · V42（host 上限增长时强推 30000 并补满）· V35（傀儡 225 + 其技能 225xx）
  - **装机**：`build/wzry-v43.apk`（APK 21:06:28 / install **21:08:12**，v1+v2，CN=WZRY-TEST），启动 75s 存活、crash 为空；回滚 `wzry-v7b-stable.apk`
  - **判据**：**第一场**进局后英雄面板 攻击/防御/法抗/攻速/生命 应即为 3000/1000/1000/50%/30000；
    logcat 首场即应出现 `V30T:125:as=5000`（表补丁在首场就落了）。
  - **若首场仍不变**：说明 `BattleLogic/LevelLogicBase.Update` 也在 actor 之后跑 →
    下一手改挂 loading 期 UI（`CLoadingForm` / `CLevelContext`），或直接在 `ActorLinker` 构造/`ValueLinkerComponent::Init` 上做 table 预读。
- **★ V41/V42（2026-10-09 20:5x）—— 转「actor 属性后置覆盖」，绕开"创建前改表"死路**：
  - **前提**：用户确认 v40 可正常进对局（登录/对局恢复）。
  - **关键突破：`SGW/stValueDataInfo` 布局取到了**（全托管程序集扫描，它在 Assembly-CSharp.dll 里，此前 LAYOUT-MISS 是查法问题）：
    ```
    classsize=60 pack=8
    [0] UInt32 actorID   [4] Byte Type    [8] Int32 BaseValue   [12] Int32 GrowValue
    [16] AddValue [20] DecValue [24] AddRatio [28] DecRatio
    [32] BasePropertyValue [36] ExtraPropertyValue [40] Int32 TotalValue
    [44] addValueBySkill [48] decValueBySkill [52] addRatioBySkill [56] decRatioBySkill
    ```
  - **V41（新）**：挂 `ValueLinkerComponent::LateUpdate(int)` 入口 —— 仅对 `IsHostCtrlActor`（本体/傀儡），
    遍历 `this.mActorValue`（`stValueDataInfo[]`），按 `elem.Type` 写 **`BaseValue`**：
    `Type==1(AD)=3000 · 2(AP)=3000 · 3(DEF)=1000 · 4(RES)=1000 · 18(攻速·万分比)=5000`。
    每帧重写 → 压过任何重算。**不依赖表、不依赖创建时机** ⇒ 天然绕开前面所有时序死路。
  - **V42（新）**：`ValueLinkerComponent::SetActorHp` 里，host 演员「上限增长」分支内**先把 `actorHpTotal` 强制 30000，再补满 `actorHp`**
    → actor 一出生/一升级就是 30000/30000；受伤时上限不变 → 不补 → **不是无敌**。
  - **装机**：`build/wzry-v42.apk`（APK 20:53:05 / install **20:54:49**，v1+v2，CN=WZRY-TEST），启动 75s 存活、crash 为空；回滚 `wzry-v7b-stable.apk`
  - **判据**：进局后英雄面板 攻击/防御/法抗/攻速 应变为 3000/1000/1000/50%；生命 30000；
    logcat 看 `V15:REFILL:30000`。**如果 V41 没生效**（说明 `ValueLinkerComponent.LateUpdate` 未被调用），
    下一版改挂 `ValueLinkerComponent::UpdatePropValue` / `GetPropValue` 这两个回调入口（同对象、同数组）。
- **★ V40（2026-10-09 20:4x）—— 回退：修「游戏无法登录」；并把"创建前改表"这条路判死**：
  - **v39 事故**：把 `WzFix.Apply` 挂到 `LobbyLogic`(OpenLobby/LateUpdate/UpdateLogic) 后**游戏无法登录**。
    原因：大厅/登录流程里这些方法早在 **databin 初始化之前**就跑了，而 `Apply` 内部（以及 V36 的
    `FindByKey` 钩子）会调用 `DT_Count`/`DT_FindByKey` —— 表还没建起来就调这两个原生接口 = 崩（与 v32/v37 同源）。
  - **V40 处置**：**停用 V36（FindByKey 钩子）与 V37（LobbyLogic 三挂点）**，退回 v35 的行为等价集：
    `V14(表+技能) / V15(补满) / V20·V21(撤除) / V29(BuildActorData, try/catch) / V35(傀儡225+其技能)`，
    另保留 `Apply` 内的 **V39 表就绪门 + CNT14 探针**（只在对局内跑，安全）。
    实测：装机后启动 75s 存活、内存回到 413MB 正常量级、无 SIGSEGV。
  - **装机**：`build/wzry-v40.apk`（APK 20:40:38 / install **20:42:04**，v1+v2，CN=WZRY-TEST）；回滚 `wzry-v7b-stable.apk`
  - **顺带实测到一条重要线索**：Unity 日志出现
    ```
    20:43:30 Assert : ResHeroCfgInfo can not find id = 529
    ```
    结合此前的 `ACT:cfg=503/505/529:tot=3010~3339` → **战斗侧 hero cfgID 与 databin 行号并非一一对应**
    （500 段是战斗侧编号，表里查不到 529）。后续若要精确按 cfgID 打点，必须先用这张映射表。
  - **"创建前改表"路线判定（三条实测，已穷尽）**：
    1. 大厅侧挂点（LobbyLogic）→ **登录崩**，不可用；
    2. 战斗侧挂点（SkillLinkerComponent.LateUpdate）→ actor 早已创建，**永远慢一帧**；
    3. `PropertyHelper.SetValueDataArrData` / `heroDatabin.FindByKey` → **战斗路径零调用**（v30/v31/v36）。
    ⇒ **托管侧不存在"创建前改表"的窗口。**
  - **下一步（唯一可行路线）**：走 **actor 属性后置覆盖** —— 在 `ValueLinkerComponent` 上直接写。
    历史已证：`SetActorHp(cur,total)` 那条路**对局内可见**（v13 时玩家看到过 30000）。
    HP 走 `SetActorHp`；AD/DEF/RES/攻速 在 `ValueLinkerComponent.mActorValue`（`SGW/stValueDataInfo[]`），
    **该结构体不在 Assembly-CSharp 里**（LAYOUT-MISS）→ 需先从 native 绑定程序集或内存侧取布局，再写。
- **★ V38/V39（2026-10-09 20:2x）—— 修 v37 闪退（Apply 缺表就绪门）+ 加 CNT14 探针**：
  - **v37 闪退根因**：把 `WzFix.Apply` 也挂到了大厅侧（LobbyLogic 三入口），但 **Apply 本体没有表就绪门** →
    大厅早期 databin 未加载，`DT_FindByKey` 返回野指针 → `*(int*)p` 解引用 → **SIGSEGV（同 v32：fault 0x19）**。
  - **V38 修复**：在 `Apply` 节流之后加 **`DT_Count(14) <= 0 → return`** 就绪门（与 V36 的 FindByKey 门同源）。
    实测：装机后启动 90s 存活、crash buffer 为空。
  - **V39**：同一处再加 **探针 `V39:CNT14=<n>`**（`DT_Count(14)` 每次变化打一行），
    目的 = **定死"英雄表到底何时可读"**，从而确定唯一正确的挂点时机。
  - **当前未解**：Agent 侧 UI 自动化不可靠（固定坐标点不到元歌、登录/进局时灵时不灵），
    大厅阶段 `V39:CNT14` 零输出 → 尚未拿到"表就绪时间线"。**需用户打一局后由 Agent 读 logcat**。
  - **装机**：`build/wzry-v39.apk`（APK 20:27:24 / install 20:28 前后，v1+v2，CN=WZRY-TEST）；回滚 `wzry-v7b-stable.apk`
  - **读法**：`adb logcat -d | Select-String 'V39:CNT14'` → 若大厅阶段一直是 0、进局瞬间变大，
    说明表在对局开始时才加载 ⇒ 托管侧无法"创建前改表"，必须改走"actor 属性后置覆盖"路线。
- **★ V37（2026-10-09 20:1x）—— 数值不生效的根因与解法：改到"进对局之前"**：
  - **用户实测**：v35 局内 **技能 CD 生效、数值不生效**（五五 / 单机都不行）。
  - **日志给出的判决性证据**：
    ```
    125:tot=2637          ← 元歌本体战斗 cfgID=125，但 tot 仍是原始 2637（我们的表写入没赶上）
    V35:SK22500/22510/22520/22530/22540/90000   ← 傀儡技能真身 ID = 225xx（已自动改 CD）
    ```
  - **机制结论（三条，全部实测）**：
    1. **技能 CD 生效** ⇐ CD 是「释放 / 显示时」读表；
    2. **HP/攻击/防御/攻速不生效** ⇐ 它们是 **actor 创建时读表并缓存**，而 `WzFix.Apply` 挂在
       `SkillLinkerComponent::LateUpdate`（对局内）→ **永远慢一帧**；
    3. `PropertyHelper.SetValueDataArrData` 与 `heroDatabin::FindByKey` **在战斗路径上零调用**
       （v30/v31/v36 全程 0 命中）→ 这两条路已判死。
  - **V36**：重启用 `FindByKey` 钩子，但加 **`DT_Count(14) > 0` 表就绪门** + 行身份自证
    —— 根治 v32 的闪退（v32 是启动期表未加载时解引用野指针：`SIGSEGV fault 0x19 / uptime 18s`）。实测启动存活。
  - **★ V37（解法）**：同一套 `WzFix.Apply` **再挂到大厅侧** —— `Assets.Scripts.GameLogic.LobbyLogic`
    的 `OpenLobby` / `LateUpdate(0参)` / `UpdateLogic(1参)` **三个入口全部挂上**（已确认 hooked=3）。
    这样在**进对局之前**表就被改好，actor 创建时读到的就是新值 ⇒ 数值生效。
  - **装机**：`build/wzry-v37.apk`（APK 20:15:26 / install **20:16:49**，v1+v2，CN=WZRY-TEST），启动无崩溃；回滚 `wzry-v7b-stable.apk`
  - **判据（给用户一次测出结果）**：
    * 进对局**之前**（登录后/选人界面）logcat 应出现 `V30T:125:as=5000` → 说明"对局前已改表"
    * 进对局后 `ACT:cfg=125:tot=` 应为 **30000 量级**（不再是 2637）
    * 傀儡：`V35:PUPPET225` + `V35:SK225xx`
- **★ V35（2026-10-09 19:5x）—— 傀儡真身 = hero 表 cfgID 225；连傀儡那批技能一起改**：
  - **身份确认（用户截图 + 日志互证）**：傀儡"详情"面板 `最大生命 1336 / 物理攻击 166 / 法术攻击 0 /
    物理防御 86|12.5% / 法术防御 50|7.6% / 攻速 0% / 移速 610(450+160) / 攻击范围近程`
    —— 与更早日志 `ACT:cfg=225:tot=1336` **完全吻合**，且 225 本来就在 `V27X` 的英雄表真实 id 清单里。
    **→ 傀儡 = hero 表 225 行。**（此前 V29 猜的 1100..1400 区间是错的，从未命中。）
  - **关键发现：傀儡的技能是另一批 skill 行**。傀儡面板 4 技 = 秘术·**归 20s / 替 10s / 缚 10s / 突 12s**，
    而我们一直只改 125xx 那批（= 本体 秘术·影/纸雏鸾/十字闪/散 → 已生效 2s）。
    **这就是"傀儡技能 CD 也要变"一直没生效的原因。**
  - **V35 实现**（在 `WzFix.Apply` 内、hero 横扫之后）：
    ```csharp
    // ① hero 表 225 行写傀儡数值（原值→新值）
    //    iBaseHP 1336→40000 · iBaseATT 166→4000 · iBaseINT 0→4000
    //    iBaseDEF 86→1500 · iBaseRES 50→1500 · iBaseAtkSpd 0→5000(万分比=50%)
    // ② 顺着 225 行技能槽自动改傀儡技能（不必事先知道它们的 ID）
    //    astSkill@+168，每项 20 字节，首 int = skillID
    //    for k in 0..5: id = *(int*)(row168 + k*20); if(id>0){ q=DT_FindByKey(17,id);
    //                   校验 *(int*)q==id → q[152]=2000(CD) · q[264]=0(耗蓝) }
    ```
  - **日志判据**：`V35:PUPPET225`（傀儡行已改）· `V35:SK<id>`（傀儡技能行已改，**会把傀儡技能的真正编号打出来**）
  - **装机**：`build/wzry-v35.apk`（APK 19:57:54 / install **19:59:29**，v1+v2，CN=WZRY-TEST），启动无崩溃；回滚 `wzry-v7b-stable.apk`
- **★ V34（2026-10-09 19:4x）—— 用户局内截图证明 v33 已生效；修正攻速单位**：
  - **用户在五五对局中打开"详情"面板的实测读数（v33）**：
    ```
    物理攻击 3025(3000+25)   法术攻击 3000       ← 我们写的 ATT/INT 生效
    最大生命 30000           最大法力 490        ← HP 生效
    物理防御 1000|62.5%      法术防御 1000|62.5% ← DEF/RES 生效
    攻速加成 0.5%            移速 556(350+206)
    技能：秘术·影 / 纸雏鸾 / 十字闪 / 散 —— CD 2秒、法力消耗 0  ← CD+零耗蓝生效
    ```
    → **结论修正**：此前"对局数值没变化"的结论只对旧构建成立；v33 起，**英雄表改写确实进了局内**。
  - **唯一偏差 = 攻速单位**：`iBaseAtkSpd` 实测是**万分比** —— 写 50 面板显示 **0.5%**。
    → **要 50% 必须写 5000**。V34 已把所有攻速写点（表写 `writeAt(112,…)`、V29 的 `BaseAtkSpeed`）从 50 改为 **5000**。
  - **装机**：`build/wzry-v34.apk`（APK 19:40:17 / install **19:42:03**，v1+v2，CN=WZRY-TEST），启动 60s 无崩溃；回滚 `wzry-v7b-stable.apk`
  - **傀儡基础数值仍待定**：被动说明写"傀儡将继承元歌全部装备/部分buff"、"傀儡基础伤害随秘术·影等级成长"。
    要给傀儡单独提数值，还需它的真身 cfgID —— 召出傀儡瞬间 logcat 会多一条 `ACT:cfg=<id>`；
    目前 V29 的傀儡档条件（cfgID 1100..1400）从未命中，说明它不在该区间（可能在 500 段或 monster/organ 表）。
- **★ V33（2026-10-09 19:3x）—— 修 v32 闪退；并锁定「对局属性不变」的机制原因**：
  - **v32 闪退证据（logcat -b crash）**：
    ```
    Fatal signal 11 (SIGSEGV), code 1 (SEGV_MAPERR), fault addr 0x19
    Process uptime: 18s   tid: UnityMain
    backtrace: #00 pc <unknown>  →  #01 pc libmono.so
    ```
    **根因**：v32 在 `heroDatabin::FindByKey` 入口加了"查到 125 就顺手改表"的钩子；
    **启动早期 databin 还没加载完**，`DT_FindByKey` 返回假指针，我直接 `*(int*)p` 解引用 → 空指针崩溃（fault 0x19 就是这类）。
  - **V33 处置**：停用 **V30(PropertyHelper) / V31(英雄名日志) / V32(FindByKey)** 三个钩子，
    只保留已验证安全的 **V14(表+技能) / V15(补满) / V20·V21(撤除) / V29(BuildActorData, try/catch 护住)**。
    实测：装机后启动 75s 存活、crash buffer 为空、双进程正常。
  - **★ 两个必须记住的机制事实**：
    1. **`PropertyHelper.SetValueDataArrData` 在战斗链上根本没被调用** —— 整局 `V31:`/`V30HOST:` **0 条**。
       它是面板/大厅用的，不是战斗属性入口。**别再往这条路上加钩子。**
    2. **战斗 actor 的属性是创建时读表得到的**：本局读数 `ACT:cfg=505:tot=3010` ≈ 2637+成长，
       而 `WzFix.Apply` 跑在第一帧 `LateUpdate`（actor 早已建好）→ **所以对局数值一直不变**。
       纯 `SetActorHp` 兜底只能救 HP（当年 30000 就是这么出现的），救不了 AD/DEF/RES。
  - **下一步正确做法（未做，勿直接照抄 v32）**：要"创建前改表"，必须先**表就绪校验**再解引用：
    ① `DT_Count(14) > 0`；② `DT_FindByKey` 返回行首 `*(int*)p == key` 且指针非 0；两关都过才允许写。
    挂点也不能放在启动期的 `FindByKey`，应放在"确认已进战斗/表已加载"的早期回调，或加一次性闩锁。
    **先加只读探针**确认启动期 `DT_FindByKey(14,125)` 的返回值形态，再决定写入时机。
  - **装机识别注意**：只改 `Assembly-CSharp.dll` → Android 层 `versionName/versionCode` **永远不变**
    （0.43.10.6 / 43100602），**只能用 `adb shell dumpsys package ... | grep lastUpdateTime` 对应本机构建时间**。
  - 当前装机：`build/wzry-v33.apk`（install 19:32:48，v1+v2，CN=WZRY-TEST）；回滚 `wzry-v7b-stable.apk`
- **★ V30（2026-10-09 19:0x）—— 找到战斗属性的真正入口，三条链路同时改**：
  - **战斗属性链（实测 IL 链路）**：
    `PropertyHelper.SetValueDataArrData(uint heroCfgId, uint skinId)`
    → 构造 `ActorMeta` → `IGameActorDataProvider::GetActorStaticData(ActorMeta&, ActorStaticData&)`
    → 用 `ActorStaticData.TheBaseAttribute` 逐项 `ValueDataInfo.Init(...)` 写进 **静态数组 `PropertyHelper.mActorValue[]`**
    → `ValueLinkerComponent` 的每 actor `SGW/stValueDataInfo[]` 由它派生。
    **mActorValue 索引映射（IL 实证）**：`[5]=HP · [1]=AD · [2]=AP · [3]=DEF · [4]=RES · [18]=攻速 · [6]=暴击 · [16]=每5秒回血`
  - **V30 挂钩点**：在 `GetActorStaticData` 返回（`pop`）之后、第一个 `Init` 之前插入覆盖
    —— 此时**求值栈为空**（v28 就是栽在非空栈上插代码），只改局部 `ActorStaticData`（`ldloca` 局部变量）字段。
    闸门 `heroCfgId==125` → 本体档；`1100..1400` → 傀儡档。
  - **V30 同时恢复 hero 表行改写（表格 `V30T:`）** —— v28/v29 把它降级成只扫描，
    导致**英雄详情面板**（读 `ResHeroCfgInfo`）仍显示原值 152/2637/86/50/350。
    现在双管齐下：**改表 → 面板/技能面板立刻变；PropertyHelper → 战斗内属性变**。
  - **实测**：`V30T:125:as=50` 连续输出（表写生效）；对局正常进入，无 SIGSEGV/FATAL（`shot-v30-safety.png`）
  - **值**：本体 HP 30000 · HP/lv 2000 · AD 3000 · AD/lv 500 · AP 3000 · AP/lv 500 ·
    DEF 1000 · DEF/lv 200 · RES 1000 · RES/lv 200 · 攻速 50 · 移速 4000
    傀儡档 HP 80000 · AD 8000 · AP 8000 · DEF 3000 · RES 3000 · 攻速 50 · 移速 4000
  - **日志判据**：`V30HOST:125` = 战斗属性链命中（这一条出现就说明对局数值改了）；
    `V30T:125:as=50` = 表已改（面板会变）；`V28HOST/28PUPPET` = actor provider 兜底命中
  - 装机：`build/wzry-v30.apk`（v1+v2，CN=WZRY-TEST）；回滚 `wzry-v7b-stable.apk`
- **★ V29（2026-10-09 18:0x）—— 修「v28 进不了对局」+ 拿到英雄表真实 id 清单**：
  - **v28 崩因**：注入段直接插在 `ret` 之前 —— 那时求值栈上还压着返回值 `1`，**在非空栈上开代码/异常区不合法**；
    且读 `heroCfg` 字段用了 `ldarg.1`（原方法自身一律用 `ldarga.s`）。两者都可能让 actor 创建路径炸掉 → 开局失败。
  - **V29 三处修正**：
    1. 插入点改到 `ldc.i4.1` **之前**（此处栈为空）
    2. 读 624 字节结构体参数统一改 `ldarga.s Parameters[1]`（与原方法同写法）
    3. **整段注入包 try/catch（CatchType=System.Exception，`leave` 收口）** →
       任何异常都被吞掉，**actor 创建路径永不因我们的代码中断**；风险字段（MoveSpeed/BaseAtkSpeed）排在最后写
  - **自测确认**（Agent 实机）：v29 装机后 adb 全自动进局成功，截图 `build/shot-v29-safety.png`
    （00:35、HUD/小地图/技能键完整、无 SIGSEGV/FATAL）；`V27X:` 一次性扫描也如期触发
  - **英雄表真实 id 清单（`V27X` 实测，共 85 条）**：
    ```
    105-199 连续段（缺 122/138/143/145/147/151/159/160/161/164/165/172/181/185/188…）
    + 225, 226, 237, 305, 312          ← 非连续"异常 id"，傀儡/特殊形态候选
    1100-1400 区间：**空**             ← 傀儡**不是** 4 位英雄行
    ```
    → 傀儡更可能是 **305 / 312** 之一，或干脆不在 hero 表（monster/organ 表，另需 tableId）。
  - **下一步（一次实机即可定位傀儡）**：你用元歌进一局并召出傀儡 → logcat 会打
    `V28HOST:125`（本体档已生效）+ 一个新出现的 `ACT:cfg=<id>`（那就是傀儡的真身配置号）→ 我按它精确定档。
  - 装机：`build/wzry-v29.apk`（v1+v2，CN=WZRY-TEST）；回滚 `wzry-v7b-stable.apk`
- **★ V28（2026-10-09 17:5x）—— 定位「数值完全没变化」的真正原因，改到正确时机挂钩**：
  - **先排除版本问题**：`adb shell dumpsys package` → `lastUpdateTime=2026-10-09 17:37:52`（= v27 装机时刻）、
    本机 `Assembly-CSharp.mod.dll` 含 `V27H:`/`V27X:` 标记、apktool Managed dll 与 mod dll 同尺寸同时间戳、
    logcat 有连续 `V27H:125:as=50` → **v27 装对了、补丁在跑**。所以问题不是装错版本。
  - **真正原因（架构性）**：`WzFix.Apply` 挂在 `SkillLinkerComponent::LateUpdate` —— 那是**进局之后**，
    而英雄属性早在 **actor 创建时**就算完了。改表对已存在 actor 的 ATT/DEF/RES **无效**；
    之前"血量看着变了"是靠 V13/V15 的 `SetActorHp` 兜底，**不是改表的功劳** → 所以 ATT/DEF/RES 一直没动。
  - **V28 处置：把数值改写搬到 `ActorStaticLobbyDataProvider::BuildActorData`**
    （`(ResData.ResHeroCfgInfo heroCfg, ActorStaticData& actorData) → bool`，attrs=Family+Virtual，有方法体）。
    这是**唯一**把 hero 行逐字段搬进 `ActorStaticData.BaseAttribute` 的地方，就在 actor 创建流程内 →
    时机正确 + 全模式同一 provider → 天然模式无关。
    ```csharp
    // 在 BuildActorData 的 ret 前插入：
    //   if (heroCfg.dwCfgID == 125)      → 本体档
    //   else if (1100 <= dwCfgID <= 1400) → 傀儡档
    // 写 ActorStaticData.TheBaseAttribute 的：
    //   BaseHp / PerLvHp / BaseAd / PerLvAd / BaseAp / PerLvAp /
    //   BaseDef / PerLvDef / BaseRes / PerLvRes / BaseAtkSpeed / MoveSpeed
    // 本体档 : HP 30000 · /lv 2000 · AD 3000 · /lv 500 · AP 3000 · /lv 500 · DEF 1000 · /lv 200 · RES 1000 · /lv 200 · AtkSpd 50 · MoveSpd 4000
    // 傀儡档 : HP 80000 · /lv 3000 · AD 8000 · /lv 800 · AP 8000 · /lv 800 · DEF 3000 · /lv 300 · RES 3000 · /lv 300 · AtkSpd 50 · MoveSpd 4000
    ```
    字段名全部来自真实类型（`ActorStaticData/BaseAttribute`），无需手算偏移（Cecil 用 FieldReference 直写）。
  - **Apply 里只留技能表工作**（技能 CD 分档 / 能耗归零 / `iBaseDamage` / CD·能耗成长归零）——
    技能参数在**释放时**才读表，所以晚改仍有效；英雄数值不再依赖 Apply。
  - **日志**：命中才打 `V28HOST:<cfgid>` / `V28PUPPET:<cfgid>`；`V27X:<id>` 一次性列出英雄表真实存在的 id
    （100..320 / 1100..1400）用来确认傀儡的真身 cfgID；`ACT:cfg=<id>` 给本局各 actor 的 cfgID。
  - **装机**：`build/wzry-v28.apk`（v1+v2，CN=WZRY-TEST）→ `adb install -r` Success，启动无 SIGSEGV/FATAL；
    回滚 `wzry-v7b-stable.apk`
- **★ V27（2026-10-09 17:4x）—— 本体数值调低 + 傀儡档提数值（双区间横扫）**：
  - **本体档**（cfgID < 1000，即 100..320 区间）：HP **30000** · ATT **3000** · INT **3000** ·
    DEF **1000** · RES **1000** · AtkSpd **50**（原 50000/6000/6000/1500/1500 → 按用户要求调低）
  - **傀儡档**（cfgID ≥ 1000，即 **1100..1400** 区间，傀儡/衍生形态候选区）：
    HP **80000** · ATT **8000** · INT **8000** · DEF **3000** · RES **3000** · AtkSpd **50**
  - **两区间共用同一道门**：`*(p+0)==id`（身份）+ `strIdName@8/@12` 与元歌 125 行**同名校验**
    → 只要 id 不在表里、或名字不是元歌，就绝不写（防写穿别的英雄行）。
  - **节流 32 → 64**（双区间共 ~522 次 DT_FindByKey，降频控开销）
  - **新增诊断 `V27X:<id>`**（一次性）：打印本局英雄表 **100..320 与 1100..1400 区间内所有真实存在的 id**
    → 用来确认"傀儡到底是不是一张独立的英雄行、id 是多少"。若 1100..1400 里出现元歌同名行即命中傀儡档。
  - **若傀儡不在英雄表**：改用 `ACT:cfg=<cfgId>` 日志 —— 你召出傀儡的瞬间 logcat 会多出一个新 cfgID，
    那就是傀儡的真实配置号，下一轮按它精确定档（可能是 monster/organ 表，需另找 tableId）。
  - 装机：`build/wzry-v27.apk`（v1+v2，CN=WZRY-TEST）→ `adb install -r` Success；回滚 `wzry-v7b-stable.apk`
- **★ V26（2026-10-09 17:3x）—— 攻速档位**：`ResHeroCfgInfo.iBaseAtkSpd`@+112 写 **50**（用户指定）。
  - 依实测标定：出厂全英雄该字段 = 0（80 行扫描 79 行为 0）；此前写 **200 → 攻速大幅变慢**，
    故该字段**越小越快**（0 = 默认/不覆盖）。50 作为提速档位。
  - 与 V25 的"同名英雄行横扫"合并生效（凡 strIdName 同元歌的英雄行，全部写 50）。
  - 日志：`V25H:<英雄行id>:as=<写后回读的第112字段值>`（确认落值）。
  - 装机：`build/wzry-v26.apk`（v1+v2，CN=WZRY-TEST）→ `adb install -r` Success；回滚 `wzry-v7b-stable.apk`
  - **若 50 仍偏慢**：往下试 20 / 10 / 5（越小越快）；若反而变快但过快，往上试 80 / 100。
    **不要再用 200**（已实测变慢）。
- **★ V22–V25（2026-10-09 17:0x–17:2x）—— 技能伤害定位 + 模式无关的数值加强**：
  - **结构体布局已全量取得**（patcher 启动时控制台转储 → `build/layout.txt`，ExplicitLayout 真偏移）：
    - `ResSkillCfgInfo`(512B)：**iCoolDown@152** · **iCoolDownGrowth@272** · **iEnergyCost@264** ·
      **iEnergyCostGrowth@268** · **iBaseDamage@200** · iSelfSkillCombine@168 · iTargetSkillCombine@172 ·
      iRangeRadius@192 · iMaxAttackDistance@212 · astSkillPropertyDescInfo@280(160B) · strIdSkillHurtNum@456
    - `ResHeroCfgInfo`(624B)：iBaseHP@72 · iBaseHPAdd@76 · iHPAddLvlup@80 · **iBaseATT@84** · **iBaseINT@88** ·
      iBaseDEF@92 · iBaseRES@96 · iAttackIntensity@100 · iBaseSpeed@104 · iAtkSpdAddLvlup@108 ·
      **iBaseAtkSpd@112** · iCritRate@116 · iCritEft@120 · iHpGrowth@124 · iAtkGrowth@128 · iSpellGrowth@132 ·
      iDefGrowth@136 · iResistGrowth@140 · iAttackIntensityGrowth@144 · iPassiveID1..5@148..164 · astSkill@168(120B)
    - `ResSkillCombineCfgInfo`(688B)：iDuration@120 · iDurationGrow@124 · **astSkillFuncInfo@148(448B)** ·
      bGrowthType@610 · bCanSkillCrit@613 · iDamageLimit@616
  - **属性链路（唯一 C# provider）**：`ActorStaticLobbyDataProvider.BuildHeroData` 把 `ResHeroCfgInfo`
    字段逐项写进 `ActorStaticData.BaseAttribute`（iBaseHP→BaseHp · iBaseATT→BaseAd · iBaseINT→BaseAp ·
    iBaseDEF→BaseDef · iBaseRES→BaseRes · iBaseAtkSpd→BaseAtkSpeed · iAtkSpdAddLvlup→PerLvAtkSpeed ·
    iCritRate→CriticalChance · iBaseSpeed→MoveSpeed …）。全工程只有 `ActorStaticDataProviderBase` /
    `ActorStaticLobbyDataProvider` 两个 C# provider → **模式差异不在 C#**，故 V25 改走"同名英雄行横扫"。
  - **技能伤害定位（三条实测反证）**：元歌 8 行 `iBaseDamage` **全 = 0**（`V22S:DMG=0`）、
    `iSelfSkillCombine`/`iTargetSkillCombine` **全 = 0**、`astSkillPropertyDescInfo`(@280) 是 hash 数组
    非数值（12500 全 0；12510 前 6 个为 StringId hash；整行 128×int32 转储也无伤害量级常数）→
    **skill 表内不含技能伤害数值**，伤害参数在 native 或 `skillpassive`/`bullet` 等表。
    → 技能伤害只能走两条：①`iBaseDamage` 由 0 直接写 3000（赌 native 读它）
    ②把 **iBaseATT/iBaseINT 拉到 6000**，用"系数×AD/AP"路径托举技能伤害。
  - **V25 改动**：
    ```csharp
    // ① 同名英雄行横扫：取 125 行 strIdName(@8/@12 两 hash 半字)，
    //    for id = 100..230 : p=DT_FindByKey(14,id); 校验 *(p+0)==id && (p+8)==vN1 && (p+12)==vN2
    //    → 命中即写 HP@72=50000 / ATT@84=6000 / INT@88=6000 / DEF@92=1500 / RES@96=1500 / AtkSpd@112=0
    //    （覆盖"同英雄在其他模式用另一个 cfgID 行" → 模式无关）
    // ② 技能行 12500..12599：iBaseDamage@200 = 原值>0 ? 原值×5 : 3000
    // ③ iCoolDownGrowth@272 = 0 、iEnergyCostGrowth@268 = 0 → 升级不再把 CD/耗蓝往上拉
    // ④ CD 分档：12500-12502=1000ms（傀儡，原值）· 12510/12520/12530/12540/12541=2000ms
    // ⑤ iEnergyCost@264 = 0（本体+傀儡 不耗蓝）
    ```
  - **装机**：`build/wzry-v25.apk`（v1+v2 签名，CN=WZRY-TEST）→ `adb install -r` Success；回滚 `wzry-v7b-stable.apk`
  - **测试分工**：用户自测（Agent 只做修改/打包）。诊断日志保留 `V25H:<id>`（命中的英雄行）、
    `V22S:<skillId>:DMG/CD/CDG/ENE/EG`（技能行原值）、`ACT:cfg=<cfgId>:tot=`（本局各单位 cfgID）
- **★ V20/V21（2026-10-09 14:0x–14:2x）—— 修「连按键和游戏HUD都没了」（v19 回归）**：
  - **根因**：V16 的 slot 探针插在 `SkillSlotLinker::InitSkillSlot` **偏移 0000**（方法最开头）就 `callvirt get_ConfigId()`。
    该处 `Actor` 句柄尚未绑定就抛异常 → `InitSkillSlot` **整体中止**，而 `skillIndicator`（技能键）本来是在
    偏移 0090 之后才创建、`InitSkillControlIndicator()` 在 00AE 才调 → 技能键与 HUD 一起消失。
    （原方法自身的 get_handle/get_ConfigId 在偏移 00C2，各初始化都已完成，所以原生不炸。）
  - **V20 处置（三撤一加）**：
    1. 撤 `SkillSlotLinker::InitSkillSlot` 上的 **V16 探针** 与 **Apply 入口挂点**（纯净化该初始化路径）
    2. 撤 **`DT_UpdateData` 全部回写**（用活指针回写有生命周期风险；且"落盘"已被证伪，无收益）
    3. 加 **行身份校验**：写前必须 `*(int*)row == 期望ID`（英雄=125 / 技能=12500..12599），
       否则视为野指针直接跳过 —— 防"表未加载/已重载"时写穿随机内存
  - **V21**：再撤 `+128` 的写值（原值实测 143000，语义未确认；教训同 +112，读不懂的字段一律不碰）
  - **实测证据**：`build/shot-v20-match.png`、`build/shot-v21-match.png`（HUD/技能键/小地图完整回归）
    ＋ `build/log-v21-match1.txt`（`V16O:112=0`、`V16S:12500 CD=1000`、零 SIGSEGV）
  - **装机**：`build/wzry-v21.apk`（v1+v2 签名）→ `adb install -r` Success；回滚 `build/wzry-v7b-stable.apk`
  - **待用户确认**：攻速手感是否回到正常
- **★ V16–V19（2026-10-09 12:4x–13:1x）—— 攻速复原 + 技能CD 分档（含傀儡）+ 技能不耗蓝**：
  - **攻速变慢真凶 = V12e 的 `setF(gASPD, 200)`**（=`ResHeroCfgInfo.iBaseAtkSpd`@+112）。
    证据：英雄表 100..200 全扫 80 行，**@112 取值 79 行为 0、唯一一行 200 就是被我改脏的元歌** →
    该字段出厂默认 = 0（不是百分比加成，写正值等于"变慢"）。V18 起改为写 0，V19 又拔掉了会覆盖它的 V12e。
  - **技能 CD 原值（实测）**：`12500/12501/12502 = 1000ms`（**傀儡形态 3 技**）、`12510 = 20000`、
    `12520/12530 = 11000`、`12540/12541 = 20000`（傀儡召唤/换位）。
    ★ V12f 当年把这 3 个傀儡技从 1s 拉到 3s → **"傀儡技能CD也要变"其实是它被改慢了**。
    V18/V19 分档：**12500–12502 → 1000ms（＝原始，不再变慢）**；其余 5 行 → **2000ms**（11~20s→2s）。
  - **技能不耗蓝**：`ResSkillCfgInfo.iEnergyCost`@**+264**。原值 `12500-12502=0`、`12510=100`、
    `12520/12530=60`、`12540=100`、`12541=0` → 全部写 **0**（本体+傀儡）。
  - **V17 全表扫描结论**：英雄表 105..199 中只有 **id=125** 一行含 12500/12510 系列技能 ID →
    傀儡不是独立英雄行（复用 125 的配置与技能槽），故 12500–12502 就是傀儡那套。
  - **V14 `DT_UpdateData` 落盘假设「证伪」**：连跑两局，第二局开局读到的仍是原值
    （`V16O:72=2637` / `V16S` 全原值）→ **databin 每局重载**，改动只在本局内存生效，
    靠 `WzFix.Apply`（LateUpdate，节流 1/32 帧）每帧重写维持。**不要再指望静态落盘。**
  - **V19 撤除**：`BuffLinkerComponent::AddBuff` 首调 → `WzHeroDump.Run` 的挂载整块拔掉
    （该块里住着 V12e 英雄数值 + V12f 技能CD，每次开局都再写一遍，正是覆盖新补丁的元凶）。
    英雄数值/技能CD 现由 `WzFix.Apply` **独家**负责。
  - **实测证据**：`build/log-v19-run2.txt`（第二局开局原值）、`log-v17-match1.txt`（80 行英雄表扫描）
  - **不可用路径记录**：① 本地 `Databin\Public_Client\Actor\hero.bytes` 为加密/高熵容器，离线取原值不可行
    ② `SkillSlotLinker::InitSkillSlot` 挂点零输出 → 本 build 该方法是死代码（native 直接建技能槽）
  - **装机**：`build/wzry-v19.apk`（v1+v2 签名）→ `adb install -r` Success；回滚 `build/wzry-v7b-stable.apk`
- **★ V15（2026-10-09 12:3x）—— 修「上限 30000 但当前血量仍 ≈2000」**：
  - **根因3（我的锅·已撤）**：V13 那段"把 `SetActorHp` 里 `actorHpTotal` 的赋值源替换为常量 30000"是**对所有 actor 生效**的
    → 上限确实是 30000，但**小兵/野怪上限也一起变成 30000**；且 `actorHp` 仍吃传入的旧值 → 上限/当前值脱钩。
    实测回归证据：V15 版 `SETHp` 参数回到 `1368:1860` / `4000:4000` 正常量级（V14 版同位置曾为 30000 量级）。
  - **V15 实现**：
    ```csharp
    // ValueLinkerComponent::SetActorHp(int _curHp, int _totalHp) 入口存旧上限，return 前：
    //   if (actorHpTotal > oldTotal && ActorHelper::IsHostCtrlActor(ref actorPtr)) { actorHp = actorHpTotal; log "V15:REFILL:<total>"; }
    // 语义：只在**上限相对本次调用前增长**（创建/升级）时补满；受伤时上限不变 → 不补满 → 不是无敌。
    // 过滤：只对玩家本体/傀儡（IsHostCtrlActor），小兵/野怪/敌方不受影响。
    // 另：V14 的 WzFix.Apply 追加挂到 SkillSlotLinker::InitSkillSlot 入口 —— actor 创建时即改表，
    //     让元歌尽量"出生即 30000 上限"（V14 首扫在 v15 版实测读到的是原值 2637，证明已抢在 AddBuff 之前）。
    ```
  - **实测证据**：`build/log-v15-match1.txt`
    ```
    V15:REFILL:3088            ← 仅 1 条，且是 host 单位（本局选的是火舞，上限 3088）→ host 过滤正确、未误伤小兵
    V14H:HP2637                ← V14 首扫读到的是**改前原值** → 时序已抢到 actor 创建阶段
    V14S:12500:1000 V14S:12501:1000 V14S:12502:1000
    V14S:12510:20000 V14S:12520:11000 V14S:12530:11000
    V14S:12540:20000 V14S:12541:20000     ← 全部为改前原值，随后统一写 2000
    SETHp 参数回到 1368:1860 / 4000:4000 正常量级   SIGSEGV/FATAL = 0
    ```
  - **装机**：`build/wzry-v15.apk`（2141000031 B，v1+v2 签名，CN=WZRY-TEST）→ `adb install -r` Success
  - **回滚**：`build/wzry-v7b-stable.apk`
  - **待用户手操复核**：进局选元歌 → 调试面板「己方英雄 · 升级」→ 上限/当前血量应同步到 30000 量级；技能 CD 应仍 ≈2s
- **★ V14（2026-10-09 12:0x）—— 修「升级后 CD 变回去 / 数值没提升」**：
  - **根因1（时序）**：V12e/V12f 挂在 `BuffLinkerComponent::AddBuff` 的**首次调用**上 —— 那是开局进战之后，
    元歌 actor 与其技能槽**早已创建完毕**，改表对已存在的 actor 无效 → 数值看不到提升。
  - **根因2（漏行·实测抓到）**：`V14S` 首次全扫表17（12500..12599）打印**原始 CD**：
    - `12500/12501/12502/12510/12520/12530` → 3000（V12f 已覆盖）
    - **`12540:20000` / `12541:20000`** ← **V12f 从未覆盖到的 20s 行**（元歌傀儡/换位族）→ 这就是"变回去"的那条 CD
  - **V14 实现**（`patcher/Program.cs` 尾部 V14 段）：
    ```csharp
    // 新类型 Assets.Scripts.GameLogic.WzFix::Apply()
    //   节流 ticks%32（≈1s 一次）
    //   ① DT_FindByKey(14,125) → 原地写 native 行：+72=30000 +80=5000 +84=2000 +92=800
    //                                              +96=800 +104=400 +112=200 +116=1000 +128=300
    //   ② for id=12500..12599: p=DT_FindByKey(17,id); if(p) *(int*)(p+152)=2000   // 覆盖全部元歌技能行(含12540/12541)
    //   只走原生指针原地写（不经过 FindByKey 的 ldobj 副本）
    // 挂载点：SkillLinkerComponent::LateUpdate(int)  ← 该方法内部只对 ActorHelper::IsHostCtrlActor 放行，
    //         天然只对**玩家本体/傀儡**每帧执行 → 升级重算、召唤傀儡后都持续复位
    ```
  - **实测证据**：`build/log-v14-match1.txt`
    ```
    V14H:HP30000
    V14S:12500:3000  V14S:12501:3000  V14S:12502:3000  V14S:12510:3000
    V14S:12520:3000  V14S:12530:3000  V14S:12540:20000  V14S:12541:20000
    ```
    首帧 `V14S:12540/12541` 打的是**改写前原值 20000** → 证明补丁前这两行确实没被覆盖；V14 已将其写为 2000。
    无 SIGSEGV / FATAL；进程存活；`SkillLinkerComponent::LateUpdate` 路径独立于 AddBuff（时间戳 12:08:22.600 vs .224）→ 挂载点生效。
  - **装机**：`build/wzry-v14.apk`（2141000031 B，v1+v2 签名，CN=WZRY-TEST）→ `adb install -r` Success
  - **回滚**：`build/wzry-v7b-stable.apk`
  - **待用户手操复核（唯一人工项）**：进局选元歌 → 用离线测试版调试面板（右上 ⏸ 打开）
    的「己方英雄 · 升级」连点几次 → 看技能 1/2/3/4 的 CD 是否仍 ≈2s、血条是否 30000 量级
- **【已达成 + 已持久化 + 已数值加强】全部目标闭环（2026-10-09 09:40）**：
  - **机制确证**：改 native 时长表本体（225001/225003 2s→1ms、225002 25s→1ms）→ 实测 buff 存活 **0.02s**，用户体感确认「**不晕 + 傀儡可立即复用**」
  - **持久化（V11）**：官方 `DT_UpdateData(tableId=21,key,void*)` 写回 native 表本体 → 装包即生效
  - **★ 终版装机：`build/wzry-v12f.apk`** = V11（傀儡时长）+ V12（数值加强 + 技能CD压缩），v1+v2 签名，用户确认"没问题"
- **V12 数值层（元歌 hero cfgID=125）**：
  ```csharp
  // heroDatabin(14) 属性加强：iBaseHP 2637→30000 · iBaseATT 152→2000 · iBaseDEF 86→800
  //                          iBaseRES 50→800 · iBaseAtkSpd 0→200 · iCritRate 0→1000
  // skillDatabin(17) CD压缩：12500/12501/12502(1技能) · 12510(2技能) · 12520(3技能) · 12530(4技能)
  //                          各 iCoolDown@152 = 3000ms（3s，满足"≤5s"）
  // 写回: DT_UpdateData(14, 125, &cfg) / DT_UpdateData(17, skillId, &cfg)
  ```
- **tableId 全表（`ildump list-dtids` 可重取）**：hero=14 · skill=17 · skillCombine=21 · heroLvlUp=23 · equipInfo=37 · battleParam=107
- **字段偏移**：ResHeroCfgInfo `iBaseHP@72 iBaseATT@84 iBaseDEF@92 iBaseRES@96 iBaseAtkSpd@112 iCritRate@116`；
  ResSkillCfgInfo `iCfgID@0 strIdSkillName@8 iCoolDown@152`
- **关键 API**（`ResData._DatabinTableFuncs`，P/Invoke → libGameCore.so）：
  ```csharp
  DT_FindByKey(int tableId, long key) → void*      // 查表返 native 指针（FindByKey 内部再 ldobj 拷贝=副本）
  DT_GetByIndex(int tableId, int index) → void*    // heroDatabin 有；skillDatabin 无
  DT_UpdateData(int tableId, long key, void* data) // ★ 写表本体
  DT_Count / DT_FindRange
  ```
- 技术结论与反证（详见 `REPORT12-v9-native-dur.md` §1–§13）：
  1. `/proc/pid/mem` root 可读可写；旧记录"内存扫全空"不成立
  2. V9/V9b（改 FindByKey 副本）✗ ｜ CONSUME ✗ 且致永久卡晕 ｜ V10 全自动内存改写 ✗（mscorlib 裁剪，`File.ReadAllText` 注入即崩）
  3. **V11 DT_UpdateData ✓ 持久** ｜ **V12 数值/CD ✓ 生效**
  4. astSkill 是 FixedBuffer → 托管 `ldflda+conv.i` 崩(0x19) → 改 native 指针（`DT_FindByKey`+`conv.i`+`ldind.i4`）
  5. `cdDatabin`(122) 为空类型，非 CD 数据表
- 改数值/改 CD 的入口：`patcher/Program.cs` 的 **V12e 段**（`setF(gHP, 30000)` 等参数直接改）→ 重编译 → `build-mod` 流程
- 回滚：`build/wzry-v7b-stable.apk`（最稳基线）；`wzry-v11c/v12f/v13b.apk` 已按存储管理要求清理删除



- 本轮关键突破（2026-10-09 00:0x）：
  - `/proc/pid/mem` root 可读可写（旧记录"内存扫全空"结论不成立）；VA↔文件偏移同址，rodata 锚点逐字节验证
  - **时长表定位**：`225001@+120=2000`（2s 晕）/ `225002@+120=25000`（25s 傀儡禁召）/ `225003@+120=2000`，间隔 **688B**，段 `[anon:scudo:secondary]`
  - **两份表分离（关键）**：native 实际使用的那份与 C# `FindByKey` 读的那份是**两份独立副本** → C# 侧改无效
  - V9/V9b（C# 压 iDuration）**证伪**：`FindByKey` 返回**栈上结构体副本**，`stfld` 改副本，下次调用即被原值覆盖（日志 `DUR:225001:2000` 每轮回读原值）
  - V8r 的 CONSUME（`EBC_BuffConsume=11`）**证伪且有害**：秒删 buff（实测存活 0.002s）但 native 走不到"自然到期解除"→ **永久卡晕**，已移除
  - **V10 全自动内存改写路线穷尽**（5 版迭代）：崩点稳定 `fault 0x28`，最终定位在 `File.ReadAllText("/proc/self/maps")` 本身 → 游戏 **mscorlib 裁剪版**，`System.IO.File` 注入调用即 native 崩（try/catch 抓不到）
- 下一步动作（用户手操，二选一）：
  ```powershell
  # 路线A（半自动，已就绪）：
  #  1) 装 build/wzry-v8q.apk（可玩基线）
  #  2) 进单机 5v5 入门 → 刺客 → 元歌 → 进局
  #  3) 双击 D:\APK-Reverse\projects\WZRY\_unpacked\一键改时长.bat（自动定位 native 表并写 1ms）
  #  4) 放一技能（最下一键）→ 傀儡进敌堆被打掉 → 报「晕几秒 / 傀儡几秒可再按」
  #  5) 判读：python verify-dur.py build\capture-verify.txt
  # 路线B：转 SO patch（锚点 forbidFilterJointSkill / UseJointSkillCmd / OutOfControlType_*）
  ```
- 判据：`BUFF:225002 → RMV:225002` 时间差 ≈0s 且不晕 = 改表本体有效；仍 ≈25s = native 另有第三份，须转 SO patch。
- 待验证假设：
  - 假设 A（已证实）：三表项 = 2s 晕对 / 25s 禁召 / 2s 晕对
  - 假设 B（已证实）：C# 改的不是 native 那份（两副本分离）
  - 假设 C（待验证）：**改 native 表本体（内存层）→ native 计时随之变短**
  - 假设 D（备选）：若 C 不成立，走 SO patch 改 native 读取逻辑


## 8. 待办步骤
- [ ] **（首要）** V8n手操真摧毁验证（晕否+键锁几秒+比赛时钟）
- [ ] V8o（若V8n防不住晕）：单ID摘除225002 / 或GodMode真神帧（操作数已从GodMode偷齐）
- [ ] 回归：元歌 vs 电脑完整一局，判「不晕 + 傀儡可复用 + 不崩」
- [ ] 确认 `CHEAT:2/5` 日志真实出现（V7b 装机后尚未在 logcat 见过）
- [ ] 表解密（native `DT_*` 权威；`.bytes` XOR-1B/4B 探测失败，WzTableDump已封存）——非阻塞，等价路径优先
- [ ] 出报告（点位/原字节→补丁字节/签名/对齐/装机/回滚）
- [x] NECR/DWRG 脚本旧根跟随新根（12 个 py，迁移期已完成）
- [x] ceserver 联调通过（`ceserver75/ceserver_x86_64`，[6/6] 验活）
- [ ] PC 版 CE 连 `127.0.0.1:52734` 首扫（拿 DWRG 做 dword 增减两轮验证链路；NECR 已完结不再动）
- [ ] ~~assemble 干跑验证~~（项目完结，已取消）
- [ ] ~~`README_v19.md` 转 UTF-8~~（项目完结，已取消）
- [ ] 用户开机后 DWRG 动态：原包直装 + logcat + `hook_login.js`（`Channel.login/NativeOnLogin/getToken`）
- [ ] BREM `work_brem/apktool.yml` 与最终包抽查（不覆盖最终 APK）
- [ ] 公开仓库发布检查（`git status` + `NECR_KEYSTORE_PASS` + `ls-tree` 无二进制）

## 9. 雷区（进行时必须避开）
WZRY（本活跃线，只增不减）：
- 现象/坑：给**既有类型**加字段/方法/线程 → 装载即崩（`tombstone_12` libmono 栈 / `tombstone_13` 1 秒崩 GC 线程 0x19）；原因：Mono 元数据布局被改，AOT/序列化对不上；正确做法：只做**原地 IL 改**，调用既有方法；要加 dump 逻辑就开**独立新类型**（`WzTableDump`/`WzGate` 与 P7 新类型对照法安全），并用 `Assembly-CSharp.nodump.dll` 做 A/B（nodump 能进局即证明写入者无辜、改布局者有罪）。
- 现象/坑：动 `BuffLinkerComponent.AddBuff` 语义（V3 全禁）→ 元歌开局崩 `SIGSEGV null+0x178`（UnityMain，13:35:34），且 buff 名消失但**效果还在**；原因：C# AddBuff 只是 UI/影子层，native 才是权威；正确做法：**永远不要全禁 AddBuff**，单ID摘除也先小步验证。
- 现象/坑：在 UI 初始化时机（`InitJointSkillButton`）发帧命令 → 战斗加载崩（`build/tomb15.txt`，159s，0x19）；正确做法：帧命令只在**战斗已 live 的动作/门后**发（P12b 按键，P14 门250+，WzGate计数门）。
- 现象/坑：frida x86_64 server 看不到 `libGameCore`；原因：包里只有 `armeabi-v7a`，实际是 **houdini 转译**，且该 so 只有 r--p/rw-p（无 r-x）、大厅期 pid 下 0 映射；正确做法：别在 frida/内存 dump 上继续投入，等价路径 = C# 日志 hook（`Debug.Log`）+ GG Lua + 定点读。
- 现象/坑：内存扫 63MB guest 区全空（熵 0.23，houdini 保留段），641 个 scudo/Mem 段 ASCII 全零，UTF-16 扫只中 `R_0d340000`；表是 XOR 密文（1B/4B 探测失败）；正确做法：别硬扫字符串找 buff 名，走 ID 序列（`BUFF:` 日志）反推。
- 现象/坑：Agent 盲点选角/按技能**反复选错**（司马懿/妲己/牛魔 vs 元歌；长期按成三技能）；原因：选角屏不显示名字、技能自下而上1/2/3；正确做法：一技能=**最下一键**，**选角与放傀儡由用户手操**，Agent 只做 dump 与判读。
- 现象/坑：`su -c` 非交互静默失败（exit 1 无回显）；正确做法：提权一律 `adb root`。
- 现象/坑：中文字符串/中文路径进 IL 字符串或工具参数会出问题（`StringBuilder.Clear` 在游戏 mscorlib 里也没有）；正确做法：IL 里只用 `Debug.Log`+`String.Concat(object,object)` 这类确定存在的重载，路径走英文暂存。
- 现象/坑：安装报 `INSTALL_FAILED_UPDATE_INCOMPATIBLE`（换签包覆盖旧 testkey 包）；正确做法：先卸载旧测试包再装（V1 之后同签覆盖已 OK）。
- 现象/坑：PowerShell + Mono.Cecil 写补丁器踩坑（enum `-bor`、`MethodBody` ctor、`Create` 重载、`StringBuilder.Clear`、基类 `WriteLine` 不可用、`VariableDefinition` 在根命名空间）；正确做法：改 **C#（dotnet）写 patcher**。
- 现象/坑：`MaxStack` 不手动抬 → SendCommand五参序列（栈深5>原值4）进局即崩（tomb18/19/20，`fault 0x2ab/0x19`）；正确做法：动过的方法 `MaxStackSize=max(原值,16)` 并打印前后值。
- 现象/坑：自行`Resolve/ImportReference`跨泛型上下文 → JIT崩；正确做法：引用一律从**原生指令偷操作数**（ZeroCD→作弊链，UpAndClick→句柄链，GodMode→真神帧；ab自体偷actorPtr），`Resolve()`仅作构建期校验。
- 现象/坑：战斗加载期发`SendCommand` → native 空指针崩；正确做法：`WzGate.ticks`计数门（V8m门=250，加载期只计数）。
- 现象/坑：`ToggleInvincible`翻转语义——召唤侧ID（911380）每掷必发会反复翻转，摧毁时刻状态未知；正确做法：触发集只用**摧毁排他**ID（225001/225002/225003/911274），剔除召唤侧。
- 现象/坑：`ToggleInvincible`挡伤不挡控（两局手操体感照晕照锁）；正确做法：免控只当抢跑实验，防不住就转摘除/帧路线。
- 现象/坑：`dd if=/dev/zero` 大I/O + 游戏双压闷死客人（adbd失联→98%超时→VERR_LAUNCH_HEADLESS_CRASH）；正确做法：零填充分小轮、别和游戏同跑；MuMuManager create/launch 可重建。
- 现象/坑：设备钟快约5分钟 + 回合分析慢造成"数据延迟"体感；正确做法：统一用**比赛时钟mm:ss**框窗口。
- 现象/坑：`2>/dev/null` 在 pwsh 下按字面路径解析报错；正确做法：Windows 侧重定向一律 `2>$null`，linux 侧才用 `2>/dev/null`。
- 现象/坑：ildump曾吞泛型`<T>`显示（`is MethodReference`分支用了Name）；正确做法：显示一律 `FullName`。

全局（历史，全部保留）：
- 现象/坑：`assemble --help` 报 `FileNotFoundError …\toolchain\…\java.exe`；原因：硬编码旧根；正确做法：换 `D:\APK-Reverse` 后再跑，需口令与 `--force`。
- 现象/坑：`aapt dump badging` 报 `Illegal byte sequence`；原因：中文路径；正确做法：英文暂存中转，DWRG 已改 zipfile 直解。
- 现象/坑：换签后 `memset(dest,0,2.5亿)` 写穿 `SIGSEGV @0xf4740000`；原因：360 企业版签名派生密钥；正确做法：走 L0–L3/去壳拼图，不试换签保壳。
- 现象/坑：targetSdk31 v1-only 装不上；原因：系统要 v2；正确做法：先 zipalign 再 apksigner v1+v2。
- 现象/坑：transB3 重写长度致 `serialization layout` 连刷 + 3GB 分配 SIGTRAP；原因：场景必须保长；正确做法：`CN+空格` 垫到 lenKO。
- 现象/坑：transB2 `\x00` 垫短致 NUL 截断（`<color>` 裸奔）；原因：NUL 进 C# 串；正确做法：空格垫（已修）。

## 10. 关键文件与修改

WZRY（本活跃线，均在 `projects/WZRY/_unpacked/`）：
- `patcher/Program.cs`：C# Mono.Cecil 补丁器。已实现：P1(105→m1)/P2(113→1)、P3/P4/P5(回false)、P6(回true)、P8/P9(CD归零)、V5-BUFF归属日志、V5b-RMV归属日志、WzGate(ticks计数门)、P12b/P12c傀儡键作弊+直发(dormant)、P14摧毁排他集{225001,225002,225003,911274}+门250+偷引用SendCommand(5)+MaxStack16。
- `patcher/*.csproj` + `ildump/`（IL反汇编：原文/字段/调用扫描/泛型FullName显示）+ `brute-tables.py`（XOR零命中结论）。
- `build/wzry-v8n.apk`（2140995935 B）：**当前装机版**，v1+v2 `wzry-test.jks` 签名；另留 `wzry-v7b-a.apk` + `wzry-v7b-stable.apk` 对照/回滚（问题版已清）。
- `build/tomb17-dump-crash.txt`（WzTableDump native崩）`tomb18-v8-startup-crash.txt`（MaxStack/Resolve崩）`tomb20-v8b.txt`：崩溃证据。
- `build/log-r4-stable.txt`（246KB）`log-v8g-match1.txt`（1.6MB）`log-v8i-match1.txt` + `capture-handplay/capture-v8j/capture-v8k/capture-v8l/capture-v8m/capture-v8n/capture-skill1-*.txt`：全量 logcat 证据链。
- `Assembly-CSharp.dll`（原始 10113024 B，**只读底本**）/ `Assembly-CSharp.mod.dll`（补丁输出）/ `Assembly-CSharp.dump.dll` / `Assembly-CSharp.nodump.dll` / `Assembly-CSharp.v2b.dll`。
- `wzry-test.jks`（本地测试签名，口令走环境变量 `WZRY_KEYSTORE_PASS`，本机保留、不入库）。
- `libGameCore.so`(43178072 B) / `hero.bytes` / `HeroBuff.bytes` / `skill.bytes`：静态分析素材（表为密文）。
- `Databin/` / `jadx-dex/` / `unity-out/` / `apktool/`：解包树。
- `REPORT9-v2b-agent.md`、`REPORT11-v7b.md`、`REPORT*.md`（1–8 历史）、`DUMP-REPORT.md`；`hook-stun.js`等探针（houdini死路，留档）；`patch-yuange*.ps1`（**已废弃**）；`build-mod.bat`（占位`TARGET.jks`，实际`wzry-test.jks`）；`verify-patch.ps1`。

全局（历史，全部保留）：
- `DWRG(Test)/ → DWRG/`：去括号（shell 安全），同步修 8 py + 1 md 旧根。
- `BREM/plan6-repack/ → BREM/work_brem/`：统一 `work_*` 约定（apktool 树）。
- `NECR/work_necr/necr_menu_sc(初版).apk → NECR/work_necr/repack/necr_menu_sc-first.apk`：ASCII 化归位。
- `com.mumu.launcher_new.apk → data/installers/…`、`GameGuardian-101.2.apk → data/installers/…`、`MuMu4.0旧版本.exe → data/installers/…`：根归位。
- `BREM/ → projects/BREM/`（`git mv`）、`NECR/ → projects/NECR/`（`git mv`）、`DWRG/ → projects/DWRG/`（`Move-Item`）。
- `platform-tools/ → tools/platform-tools/`、`build-tools-win/ → tools/build-tools-win/`、`jadx/ → tools/jadx/`、`jre/ → tools/jre/`、`data/installers/ → tools/installers/`。
- `projects/NECR/work_necr/tools/*.py` + `projects/DWRG/work_dwrg/*.py`：12 文件绝对路径跟随新根。
- 根文档 14 个路径前缀跟随新根；`.gitignore` 全量改写新根。
- `docs/01-overview.md` … `docs/06-roadmap.md`：新建 6 个。
- `AGENTS.md`：改 6 处。`CLAUDE.md`：改 5 处。

## 11. 验证方式
- WZRY 装机态：`& $adb -s 127.0.0.1:16384 shell dumpsys package com.tencent.tmgp.sgameceg | Select-String versionName` → `0.43.10.6`；`pidof …` → 非空。
- WZRY 当前装机包 = `build/wzry-v8n.apk`（2140995935 B，v1+v2 同签）。
- BuffID 证据：`logcat -d | Select-String 'STUN-HIT|CHEAT5|225001|225002|225003|911274'` → 摧毁排他集（hero-actor，三杀全中）；门250后 `CHEAT5:auto` 应出；`BUFF:60080` 开局标记。
- 手操判据：傀儡被打掉报"掉了+比赛时钟mm:ss+晕否+键锁几秒"（设备钟快约5分钟，一律用比赛时钟）。
- 全局历史：adb 1.0.41 / apktool 3.0.3；原包哈希：NECR `91F35185…896024`、BREM `A5A03A16…99DB9AF`、DWRG `D1B3F51F…155DFB`、WZRY `57848e69…cbec8c56f`（均未动）；`Get-ChildItem docs/*.md` → 6 个。
- 测试口固定 `adb connect 127.0.0.1:16384`（MuMuManager control launch 可拉起；instance 0=安卓测试机）。

## 12. 恢复指令
- 新对话打开本项目后执行 `/resume`，Agent 将读取本文件并从"§7 下一步"继续。
- 恢复后的第一件事：`adb connect 127.0.0.1:16384` → 确认 V8n 装机（`dumpsys package` + `pidof`）→ 用户手操元歌真摧毁（只一技能最下一键）→ 抓 `STUN-HIT/CHEAT5` + 体感 → 出 V8o 或固化报告。

(End of file)
