# CLAUDE.md — 安卓逆向项目集

> 工作区：`D:\APK-Reverse`（Windows + 中文路径）。本文件给 Claude / Claude Code 看：先读 `AGENTS.md`（协作协议与 DoD），再读本文件（实操命令与坑位），再读子项目文档。
> 公开仓库：<https://github.com/yyhhqq1234/android-reverse-research>（PUBLIC，仅文档+脚本，MIT）。发布边界与检查清单以 `AGENTS.md` §6 为准。

## 1. 这是什么地方

安卓逆向 + 改包工作区，三个游戏项目共用一套工具链：

- `projects/BREM/`（别惹恶魔）：smali 层改包，已完结。最终成品 `projects/BREM/别惹恶魔_无冷却无消耗_安卓16_最终版.apk` 可直接用，不要再动。
- `projects/NECR/`（Necromancer）：Unity IL2CPP + 360 DynCryptor 企业版壳，已完结封存（`release_stable` v19 在用，只做复现/验证，不开新改包）。
- `projects/DWRG/`（第五人格测试版）：NeoX 非 Unity 包，解包已完成（`projects/DWRG/work_dwrg/`），待动态。
- 工具链（只用不用改）：`tools/platform-tools/`（adb）、`tools/build-tools-win/android-14/`（aapt2/d8/apksigner/zipalign）、`tools/jadx/`、`tools/jre/`。

子项目必读（按顺序）：

1. `projects/BREM/说明.txt` — BREM 改了哪三处。
2. `projects/NECR/work_necr/00_准备状态_必读.md` — NECR 工具链现状与“等用户动手”清单。
3. `projects/NECR/work_necr/NECR_IL2CPP改包报告.md` — dump.cs 导读、L0–L3 四条改包路线、E1–E20 失败战报。
4. `projects/NECR/work_necr/release_stable/PATCHES_v1.md` — 去壳 v1 的 P1–P4 补丁与复刻步骤（仅本机，公开仓库不收 `release_stable/`）。
5. `projects/DWRG/work_dwrg/DWRG_REVERSE_REPORT.md` — DWRG 解包与下一步动态门禁。
6. `ADB_INSTALL_REPORT.txt` — adb 来源与版本校验。

## 2. 常用命令（PowerShell）

所有路径含中文，优先双引号包裹；apktool / Il2CppDumper 失败时先换英文暂存路径再试。

```powershell
# 设备确认（任何 adb 活之前先跑；测试机固定 16384，提权走 adb root）
D:\APK-Reverse\tools\platform-tools\adb.exe connect 127.0.0.1:16384
D:\APK-Reverse\tools\platform-tools\adb.exe -s 127.0.0.1:16384 root
D:\APK-Reverse\tools\platform-tools\adb.exe devices

# 安装 / 拉取（NECR 流程：用户开机并手动进主界面后，Agent 接管）
D:\APK-Reverse\tools\platform-tools\adb.exe install "D:\APK-Reverse\projects\NECR\work_necr\repack\necr_unshelled.apk"
D:\APK-Reverse\tools\platform-tools\adb.exe pull /sdcard/Download "D:\APK-Reverse\projects\NECR\work_necr\prod\"

# 反编译 / 回编（示例，版本已钉死 apktool 3.0.3）
java -jar "D:\APK-Reverse\projects\NECR\work_necr\tools\apktool.jar" d "D:\APK-Reverse\projects\NECR\Necromancer.apk" -o D:\tmp\necr_src
java -jar "D:\APK-Reverse\projects\NECR\work_necr\tools\apktool.jar" b D:\tmp\necr_src -o D:\tmp\necr_repack.apk

# G1 校验门（内存 dump 自检）
python "D:\APK-Reverse\projects\NECR\work_necr\tools\g1_gate.py" "D:\APK-Reverse\projects\NECR\work_necr\prod\"

# 接法A（CE 做数值/dump，全局脚本）：6 步全自动，末端验活 127.0.0.1:52734
powershell -ExecutionPolicy Bypass -File "D:\APK-Reverse\tools\connect-ceserver.ps1" -CeserverBin "D:\APK-Reverse\tools\installers\ceserver75\ceserver_x86_64"

# 去壳组装 / IAP 补丁（按 PATCHES.md 来，不要改脚本内 SO 路径约定）
python "D:\APK-Reverse\projects\NECR\work_necr\tools\assemble_unshelled.py" build/dex/classes.dex
python "D:\APK-Reverse\projects\NECR\work_necr\tools\patch_iap.py"

# 签名对齐链（tools/build-tools-win/android-14）
.\tools\build-tools-win\android-14\zipalign.exe -f 4 in.apk aligned.apk
.\tools\build-tools-win\android-14\apksigner.bat sign --ks <keystore> --v1-signing-enabled true --v2-signing-enabled true aligned.apk
```

frida 注意：本机 pip 是 frida-tools 14.10.4 + frida-py 17.18.0，CLI 不在 PATH，用 `python -m frida`；frida-server 必须用 `tools/` 下 17.18.0（`frida-server-x86/x86_64`），PC 与 server 版本必须一致。

## 3. 版本钉死（不要升级）

- adb 1.0.41 / 37.0.1（`ADB_INSTALL_REPORT.txt` 有 SHA256）
- apktool 3.0.3 / Il2CppDumper 6.7.46 / AssetStudioMod v0.19.0 / BlackDex v3.2
- frida-server 17.18.0 == PC frida 17.18.0
- NECR 参照 Unity 2021.3.18f1（changeset `3129e69bc0c7`）
- NECR / BREM 本地测试签名用的 keystore / jks 与口令仅保存在本机，不提交到公开仓库；`assemble_unshelled.py` / `build_menu.py` 用环境变量 `NECR_KEYSTORE_PASS`（默认 `CHANGE_ME` 占位）。

## 4. 红线与坑位

- 原包只读：`projects/BREM/别惹恶魔.apk`、`projects/NECR/Necromancer.apk`、`projects/DWRG/第五人格（测试版）.apk`、`projects/BREM/backup_original/`。动手前备份，完事复核原包 SHA256（NECR 前缀 `91F35185…`）。
- 中文路径坑：apktool / Il2CppDumper / 部分签名步骤用英文暂存路径中转。
- targetSdk 31：v1-only 签名装不上，必须 v1+v2；先 zipalign 再 apksigner；v2 不覆盖 EOCD 注释。
- 360 壳：换签必死解密期（`memset` 写穿，见改包报告 §5），别再试“换签保壳”路线；要改就走 L0–L3 或 `assemble_unshelled.py` 去壳拼图。
- BREM smali 经验：数值可能是硬编码（如 `dv/d*.orz` 的 n），改配置表无效时直接看源码层。
- 模拟器分工：开机、点进主界面、装 GG 跑 dump 由用户做；Claude 只做 adb 命令 + `prod/` 落盘 + G1 门 + 对照分析。先 `adb devices`，别假设在线。
- 密钥只做本地测试签名，不上传、不改口令；脚本口令走 `NECR_KEYSTORE_PASS`，禁止写回真实口令。
- 公开仓库红线：只提交 `AGENTS.md` §6 白名单内的文档/脚本；提交前跑 `git status --short` + `git grep -n "ks-pass"`（须均为 `NECR_KEYSTORE_PASS` 占位）。
- 产物归位：NECR 产物只写 `projects/NECR/work_necr/`（`prod/` 成品、`trial/` 对照、`logs/` 日志），报告更新到子目录 md，不散落根目录。公开侧根目录有 `README.md` / `LICENSE` / `.gitignore` / `AGENTS.md` / `CLAUDE.md`；本机根目录另有工具链与模拟器目录，仅本机使用。

## 5. 接活默认流程

1. 读 `AGENTS.md` §4 任务路由，确认是 BREM / NECR / DWRG / 工具链哪一类。
2. BREM：读 `projects/BREM/说明.txt`，小步改 + 回装验证，禁止覆盖最终版 APK。
3. NECR：已完结封存，只做复现/验证（按 `00_准备状态_必读.md` → 改包报告 → `PATCHES.md` 顺序读，复用现有脚本，不开新改包）。
4. DWRG：读 `projects/DWRG/work_dwrg/DWRG_REVERSE_REPORT.md`，产物只写 `projects/DWRG/work_dwrg/`，动态前先 `adb devices`。
5. 汇报按 `AGENTS.md` §5 DoD：成品（文件名/大小/签名/对齐/验证机型/回滚路径）或分析产物（路径/校验结果/下一步），失败给日志路径与复现步骤；涉及公开仓库时另按 §6 检查清单复核。
