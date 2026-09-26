# 01 总览 — 安卓逆向项目集

> 根目录：`D:\APK-Reverse`（实测） · 分支：`main @ 1b62d0c` · 全检：2026-09-26

## 是什么

Android 逆向 + 改包工作区，三个游戏项目共用一套工具链。类型：逆向工程 / 靶场。

- `projects/BREM/`（别惹恶魔）：smali 层改包，已完结，最终包可用。
- `projects/NECR/`（Necromancer）：Unity IL2CPP + 360 DynCryptor 企业版壳，已完结封存，稳定版 v19 在用。
- `projects/DWRG/`（第五人格测试版）：NeoX 非 Unity 包，完全解包已完成，待动态。
- 工具链（只用不用改）：`tools/platform-tools/`（adb）、`tools/build-tools-win/android-14/`、`tools/jadx/`、`tools/jre/`。

## 给谁用

本机操作者 + 协作 Agent。公开仓库仅收文档与脚本，APK/密钥/二进制不进仓库。

- 公开仓库：<https://github.com/yyhhqq1234/android-reverse-research>（PUBLIC，`main`，MIT 仅自研文档/脚本）。

## 现状完成度

已实现，可运行（证据见 `02-architecture.md` 与 `06-roadmap.md`）。

- BREM 最终版：`projects/BREM/别惹恶魔_无冷却无消耗_安卓16_最终版.apk`（21433707 B，v1+v2+v3，已 zipalign）。
  - 验证：`Get-FileHash "D:\APK-Reverse\projects\BREM\别惹恶魔.apk"` 原包 `A5A03A16…` 未动。
- NECR 稳定版：`projects/NECR/work_necr/release_stable/necr_menu_v19.apk`（50923268 B，v1+v2）。
  - 原包：`projects/NECR/Necromancer.apk`（52336519 B，SHA256 `91F35185…896024`，实测一致）。
- DWRG 解包：`projects/DWRG/work_dwrg/raw/` 690 条目 + `jadx_out/sources/` 3550 java。
  - 原包：`projects/DWRG/第五人格（测试版）.apk`（687172784 B，SHA256 `D1B3F51F…155DFB`，实测一致）。

## 最小跑通命令

```powershell
# 1. 设备确认（任何 adb 活之前先跑）
D:\APK-Reverse\tools\platform-tools\adb.exe devices
# 预期：List of devices attached（无设备为空表，退出码 0，已验证）

# 2. 工具链版本（已验证）
D:\APK-Reverse\tools\platform-tools\adb.exe --version
# 预期：1.0.41 / 37.0.1
java -jar "D:\APK-Reverse\projects\NECR\work_necr\tools\apktool.jar" --version
# 预期：3.0.3
python -m py_compile "D:\APK-Reverse\projects\NECR\work_necr\tools\g1_gate.py"
# 预期：退出码 0
```
