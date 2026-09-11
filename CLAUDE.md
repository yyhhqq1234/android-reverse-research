# CLAUDE.md — 安卓逆向项目集

> 工作区：`D:\安卓逆向`（Windows + 中文路径）。本文件给 Claude / Claude Code 看：先读 `AGENTS.md`（协作协议与 DoD），再读本文件（实操命令与坑位），再读子项目文档。

## 1. 这是什么地方

安卓逆向 + 改包工作区，两个游戏项目共用一套工具链：

- `BREM/`（别惹恶魔）：smali 层改包，已完结。最终成品 `BREM/别惹恶魔_无冷却无消耗_安卓16_最终版.apk` 可直接用，不要再动。
- `NECR/`（Necromancer）：Unity IL2CPP + 360 DynCryptor 企业版壳，主战场。所有新活都在 `NECR/work_necr/` 里做。
- 工具链（只用不用改）：`platform-tools/`（adb）、`build-tools-win/android-14/`（aapt2/d8/apksigner/zipalign）、`jadx/`、`jre/`、`MuMu Player 12/`。

子项目必读（按顺序）：

1. `BREM/说明.txt` — BREM 改了哪三处。
2. `NECR/work_necr/00_准备状态_必读.md` — NECR 工具链现状与“等用户动手”清单。
3. `NECR/work_necr/NECR_IL2CPP改包报告.md` — dump.cs 导读、L0–L3 四条改包路线、E1–E20 失败战报。
4. `NECR/work_necr/release_v1/PATCHES.md` — 去壳 v1 的 P1–P4 补丁与复刻步骤。
5. `ADB_INSTALL_REPORT.txt` — adb 来源与版本校验。

## 2. 常用命令（PowerShell）

所有路径含中文，优先双引号包裹；apktool / Il2CppDumper 失败时先换英文暂存路径再试。

```powershell
# 设备确认（任何 adb 活之前先跑）
D:\安卓逆向\platform-tools\adb.exe devices

# 安装 / 拉取（NECR 流程：用户开机并手动进主界面后，Agent 接管）
D:\安卓逆向\platform-tools\adb.exe install "D:\安卓逆向\NECR\work_necr\repack\necr_unshelled.apk"
D:\安卓逆向\platform-tools\adb.exe pull /sdcard/Download "D:\安卓逆向\NECR\work_necr\prod\"

# 反编译 / 回编（示例，版本已钉死 apktool 3.0.3）
java -jar "D:\安卓逆向\NECR\work_necr\tools\apktool.jar" d "D:\安卓逆向\NECR\Necromancer.apk" -o D:\tmp\necr_src
java -jar "D:\安卓逆向\NECR\work_necr\tools\apktool.jar" b D:\tmp\necr_src -o D:\tmp\necr_repack.apk

# G1 校验门（内存 dump 自检）
python "D:\安卓逆向\NECR\work_necr\tools\g1_gate.py" "D:\安卓逆向\NECR\work_necr\prod\"

# 去壳组装 / IAP 补丁（按 PATCHES.md 来，不要改脚本内 SO 路径约定）
python "D:\安卓逆向\NECR\work_necr\tools\assemble_unshelled.py" build/dex/classes.dex
python "D:\安卓逆向\NECR\work_necr\tools\patch_iap.py"

# 签名对齐链（build-tools-win/android-14）
.\build-tools-win\android-14\zipalign.exe -f 4 in.apk aligned.apk
.\build-tools-win\android-14\apksigner.bat sign --ks <keystore> --v1-signing-enabled true --v2-signing-enabled true aligned.apk
```

frida 注意：本机 pip 是 frida-tools 14.10.4 + frida-py 17.18.0，CLI 不在 PATH，用 `python -m frida`；frida-server 必须用 `tools/` 下 17.18.0（`frida-server-x86/x86_64`），PC 与 server 版本必须一致。

## 3. 版本钉死（不要升级）

- adb 1.0.41 / 37.0.1（`ADB_INSTALL_REPORT.txt` 有 SHA256）
- apktool 3.0.3 / Il2CppDumper 6.7.46 / AssetStudioMod v0.19.0 / BlackDex v3.2
- frida-server 17.18.0 == PC frida 17.18.0
- NECR 参照 Unity 2021.3.18f1（changeset `3129e69bc0c7`）
- NECR / BREM 本地测试签名用的 keystore / jks 与口令仅保存在本机，不提交到公开仓库。

## 4. 红线与坑位

- 原包只读：`BREM/别惹恶魔.apk`、`NECR/Necromancer.apk`、`BREM/backup_original/`。动手前备份，完事复核原包 SHA256（NECR 前缀 `91F35185…`）。
- 中文路径坑：apktool / Il2CppDumper / 部分签名步骤用英文暂存路径中转。
- targetSdk 31：v1-only 签名装不上，必须 v1+v2；先 zipalign 再 apksigner；v2 不覆盖 EOCD 注释。
- 360 壳：换签必死解密期（`memset` 写穿，见改包报告 §5），别再试“换签保壳”路线；要改就走 L0–L3 或 `assemble_unshelled.py` 去壳拼图。
- BREM smali 经验：数值可能是硬编码（如 `dv/d*.orz` 的 n），改配置表无效时直接看源码层。
- 模拟器分工：开机、点进主界面、装 GG 跑 dump 由用户做；Claude 只做 adb 命令 + `prod/` 落盘 + G1 门 + 对照分析。先 `adb devices`，别假设在线。
- 密钥只做本地测试签名，不上传、不改口令。
- 产物归位：NECR 产物只写 `NECR/work_necr/`（`prod/` 成品、`trial/` 对照、`logs/` 日志），报告更新到子目录 md，不散落根目录。根目录只保留本文件 + `AGENTS.md` 两个项目集说明。

## 5. 接活默认流程

1. 读 `AGENTS.md` §4 任务路由，确认是 BREM / NECR / 工具链哪一类。
2. BREM：读 `BREM/说明.txt`，小步改 + 回装验证，禁止覆盖最终版 APK。
3. NECR：按 `00_准备状态_必读.md` → 改包报告 → `PATCHES.md` 顺序读，优先复用 `tools/` 现有脚本；改 SO/资源前备份，补丁记录写清文件偏移 + 原字节→补丁字节。
4. 汇报按 `AGENTS.md` §5 DoD：成品（文件名/大小/签名/对齐/验证机型/回滚路径）或分析产物（路径/校验结果/下一步），失败给日志路径与复现步骤。
