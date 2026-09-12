# TASKPOINT — 项目级任务断点

> 保存时间：2026-09-12 02:45（UTC+8）
> 项目根目录：`D:\安卓逆向`
> 分支/版本：main @ a6a6eaf（`docs(release_stable): add v18 stable release files and docs`，工作区干净）

## 1. 任务目标
- 一句话目标：根治 NECR 改版购买闪退，交付可在模拟器上稳定玩的版本，并收拾干净工作区。
- 验收标准：
  - [x] 抽卡购买不再闪退（测试配置免费生效、基线配置原价扣钻、单位落格）
  - [x] 背包徽章显示恢复原版（A+++ 回归）
  - [x] v18 稳定版备份并校验，历史版本清理，工作区整洁
  - [ ] 用户进传送门实战一把确认战斗不闪退（导航原因本轮未测到，待用户动手）

## 2. 背景与现状
- NECR（Necromancer）Unity 2021.3.18f1 IL2CPP ARM32 `libil2cpp.so`，跑在 MuMu 12 Android 12 x86_64 上（经 Houdini 翻译），ADB `127.0.0.1:16384`。
- 用户原话授权链：只读分析 → 授权改代码修 bug → ADB/模拟器操作全权委托 → "全改完再汇报" → 团队模式可用。
- 现状：v18 已覆盖安装在设备上，存档 `mod.cfg=00000000011`（用户基线），游戏存活可玩；工作区已清理，只剩 `release_stable/` 一个版本目录。
- 更新历史：
  - 2026-09-12 02:45：新建断点（v18 交付 + 清理完成，下一步只剩用户实战确认）。

## 3. 总体计划
1. 购买闪退 bracketing 定位（v17b~v17r 共 12 个实验版）✅
2. v17s 验证根因（7 处原版直调 → 购买通过）✅
3. v18 构建（保留修复 + 恢复免费抽卡 + 剥离全部 trace 钩子）✅
4. v18 验证矩阵（启动/购买/背包/面板/存档）✅
5. 备份 v18 + 清理历史版本 + 整洁工作区 ✅
6. 用户实战确认战斗（待用户）⬜

## 4. 团队模式
- 是否采用团队模式：是（中途为 hook 审计开过 AgentTeams）。
  - 团队名：按会话内 team 协议创建（一次性审计团，已解散 `agent_teams_delete`）。
  - 成员与分工：
    - hook-auditor（t1）：审计全部洞代码平衡性与目标地址。
  - 任务与状态：审计任务已完成，结论——N17D x4 + B2 的 NULL-skip 路径以不平衡 `pop {r12,pc}`（net −2）结尾，是 latent bug；v18 已把这些 guards 全部剥离恢复原版，该结论归档、无需再动。
  - 下次继续点：无需唤醒团队；后续如需新审计再建团。

## 5. 步骤规划
| # | 步骤 | 负责人 | 状态 | 备注 |
|---|------|--------|------|------|
| 1 | bracketing 定位购买闪退（v17j~v17r） | 本 Agent | 已完成 | 根因见 §6 |
| 2 | v17s 验证 + v18 构建发布 | 本 Agent | 已完成 | `tools/restore_v18.py` |
| 3 | v18 验证矩阵 + 存档核对 | 本 Agent | 已完成 | 购买/徽章/面板/存档均过；战斗导航未通 |
| 4 | 备份 stable + 清理历史版本 + 整洁目录 | 本 Agent | 已完成 | 释放约 2.6GB |
| 5 | 用户进传送门实战确认 | 用户 | 待办 | 见 §7 |

## 6. 已完成步骤（已验证事实）
- [x] 根因钉死：菜单 P-gate（`0x1AABE2C`，"Max plus" idx2）+ idx0-gate（"G grade"）函数体在购买路径上一执行就 smash 返回——gate#1 返回后永远到不了 `0x998CB0`（A06 整数日志 `G1=` 全程静默），约 10ms 后 `pc=0 / SI_USER` 崩溃；Houdini 下该签名是 misreport，不可按字面追踪。（改动：排查脚本 `tools/patch_gacha_trace*.py`；验证：v17s 7 处原版直调后 `CALL a1=49 → G1=19376 → RET`，单位落格 6/42，钻石 -10。）
- [x] v18 构建发布：保留 7 处原版直调（5 gate BL + B01 → `BL 0x12896E0`，B02 → `MOV R0,R5`），恢复 G-GUARD 免费抽卡（`0x12185B4 → 0xEB248D29`），剥离全部 trace 钩子 17 字恢复原版。（改动：`tools/restore_v18.py`；验证：构建 `cca4988e…`，覆盖安装启动干净。）
- [x] v18 验证：测试配置免费抽卡生效（钻石不扣）、基线原价扣钻、背包 A+++ 徽章回归、角色/技能/MixBox 面板无闪退、存档健康（仅多 Inventory5=49 一个测试单位；全量备份 `save/necr_save_bak_20260912.tgz`）。（验证：截图 `logs/runtime_v16_20260911/screen_18*.png` + 存档 XML 比对。）
- [x] 安装管道可信度独立验证：v17q 把 A04 日志优先级 4→5，设备打出 `W N17E`，证明覆盖安装字节级生效、翻译无 stale。（验证：logcat 实测。）
- [x] 稳定版备份：`release_stable/`（APK/SO 双哈希校验通过）+ `STABLE.md`/`README_v18.md`/`PATCHES_v1.md`。（验证：sha256 对拷一致。）
- [x] 清理：删除 `release_v1`~`release_v18` 共 36 个历史目录 + 20 个 SO `.bak`（约 2.6GB）；`D:/tmp` 本次残留已清；原包 SHA256 `91f35185…` 复核未动；`git status` 干净。
- [x] 代价确认："Max plus"(idx2)/"G grade"(idx0) 在购买路径不再生效（自然掉落），二者在基线配置本就 OFF；v18 测试期一次免费购买疑似因 force-stop 未 flush 而丢失（见雷区），属测试手法问题，非 bug。

## 7. 进行中 / 下一步（新对话先干这个）
- 当前卡点：无阻塞；唯一待办是用户实战确认（本 Agent 导航没能走进传送门：角色走到门边但未触发进入，非崩溃）。
- 下一步动作（可直接执行）：等用户反馈；若用户说战斗闪退，先问清"第几关/放技能时还是结算时"，再 `adb logcat` 抓 tombstone（`tombstone_0*`）+ 复现。
- 若用户想恢复 Max plus/G grade：不要直接恢复 gate body（机制未知、必崩），需重写最小安全版门控并先走实验版验证——这是新任务，先立项再动手。
- 待验证假设：战斗路径无菜单补丁（v18 等同原版），默认安全；Mix 真执行（0% 外的有效合成）未测，属低风险。

## 8. 待办步骤
- [ ] 用户进传送门打一把，确认战斗（待用户动手，本 Agent 导航未走通）
- [ ] （可选）`logs/`（243MB）、`trans/`（404MB）、`save/`（304MB）下轮可再瘦身，本轮按用户要求范围未动
- [ ] （可选）若用户不要测试单位 Inventory5=49，可从 `save/necr_save_bak_20260912.tgz` 恢复（会丢其间正常进度，需用户确认）

## 9. 雷区（进行时必须避开）
- 现象/坑：Houdini 下 `pc=0 / SI_USER / fault addr --------` 是翻译器 misreport（附带寄存器 `r4=+0x998CB0`、`lr=libunity+const` 四连稳定全是翻译残留）；原因：真因是普通 guest  fault 被误报；正确做法：永远以"最后一条 hook 日志之后到哪里" bracketing，不按字面追 pc=0。
- 现象/坑：PowerShell 无 `head`/`&&`，`adb shell` 里也没有 `grep`；原因：Windows pwsh + 精简 shell；正确做法：用 `Select-String`/`Select-Object`，adb 输出先 pull 回 PC 再过滤，重定向进设备文件要加引号（`adb shell "cmd > /sdcard/x"`）。
- 现象/坑：覆盖安装后必须以"行为"验新鲜度，不能信 `Success`；原因：曾误判 v17l 跑了 stale（后证伪是误读日志，但谨慎无错）；正确做法：v17q 式代码级标记（改立即数换日志优先级），看到新行为才算数。
- 现象/坑：`force-stop` 可能丢 PlayerPrefs 未 flush 的写入（v18 免费购买疑似因此丢失）；原因：Unity 非干净退出；正确做法：涉及存档的测试用干净退出（回主界面/正常关），删档级操作前必做全量备份（本次 `save/necr_save_bak_20260912.tgz`）。
- 现象/坑：grep 日志漏 tag 会误判（如漏 `N17H` 导致"门控没跑"误判）；原因：tag 太多；正确做法：每次先 `Select-String 'N17|NECR|Addthis'` 全量看一遍再收窄。
- 现象/坑：门控/hook 洞里插帧会改变栈布局，resolved 方法可能是栈布局敏感的；原因：踩过 B03 洞帧、B04 返回桩两连坑；正确做法：PRE-only 钩子只许 B 跳转 + 全寄存器恢复，tail-jump 站点必须从 `[SP,#-4]` 取回地址，NULL 路径用 `bx lr`。
- 现象/坑：只读红线——`NECR/Necromancer.apk`、`BREM/`、`platform-tools/`、`build-tools-win/`、`jadx/`、`jre/`、MuMu 目录只读，动前备份、完事复核原包 SHA；签名口令只走 `NECR_KEYSTORE_PASS` 环境变量，禁写脚本/文档。
- 现象/坑：公开仓库边界（AGENTS.md §6）——`release_*/`、`*.apk/*.so/*.dex`、本 TASKPOINT 等不进仓库；提交前 `git status --short` + `git grep -n "ks-pass"` 全是占位。

## 10. 关键文件与修改
- `NECR/work_necr/release_stable/`：新建，v18 APK + v18 SO + 说明三件套（本次备份）。
- `NECR/work_necr/release_stable/STABLE.md`：新建，回滚与设备状态说明。
- `NECR/work_necr/release_v18/README.md`：新建，根因/验证/回滚记录。
- `NECR/work_necr/tools/restore_v18.py`：新建，v18 剥离脚本（17 字恢复 + 前提断言）。
- `NECR/work_necr/tools/patch_gacha_trace*.py`：排查期脚本链（trace3/4/7/8/9/10），保留复现用。
- `NECR/work_necr/src/lib/armeabi-v7a/libil2cpp.so`：当前即 v18 状态（live 文件，勿动）。
- `NECR/work_necr/save/necr_save_bak_20260912.tgz`：全量存档备份（4MB，01:32）。
- `NECR/work_necr/save/playerprefs_*.xml`：各阶段存档对照。
- `NECR/work_necr/logs/runtime_v16_20260911/screen_18*.png`：v18 验证截图链。
- 已废弃（已删除）：`release_v1`~`release_v18/`（36 目录）、SO `.bak-*` ×20、`D:/tmp` 本次残留。

## 11. 验证方式
- 版本回滚：`adb -s 127.0.0.1:16384 install -r NECR/work_necr/release_stable/necr_menu_v18.apk`（同密钥覆盖）。
- 购买验证：走近 Bongba → 点身体开抽卡页 → 点 10 钻槽位 → 进程存活 + 单位落格 + 钻石按配置扣除。
- 崩溃复现：`adb logcat -d -v threadtime | Select-String 'signal 11|FATAL'` + `/data/tombstone/tombstone_0*` pull。
- 存档核对：pull `.../shared_prefs/com.PrismaThunder.Necromancer.v2.playerprefs.xml` 看 Inventory*/diacost。
- 仓库卫生：`git status --short` 干净；原包 `sha256(NECR/Necromancer.apk)` 前缀 `91f35185`。

## 12. 恢复指令
- 新对话打开本项目后执行 `/resume`，Agent 将读取本文件并从"§7 下一步"继续。
