# 02 架构 — 目录真相与核心链路

## 目录真相（看代码得出的作用）

| 顶层 | 存什么 | 给谁看 |
|---|---|---|
| `projects/BREM/` | 别惹恶魔原包 + 最终包 + `work_brem/`（apktool 回编树）+ `backup_original/`（只读备份）+ `说明.txt` | 开发者/Agent（复现/验证 only） |
| `projects/NECR/` | Necromancer 原包（只读）+ `work_necr/`（封存：只做复现/验证，不开新改包） | 开发者/Agent（已完结） |
| `projects/DWRG/` | 第五人格测试版原包 + `work_dwrg/`（raw/jadx_out/pcap/脚本全套） | 开发者/Agent（新项目） |
| `tools/platform-tools/` | 官方 adb/fastboot（v1.0.41） | Agent 只用不用改 |
| `tools/build-tools-win/android-14/` | aapt2/d8/apksigner/zipalign | Agent 只用不用改 |
| `tools/jadx/` | dex 反编译 | Agent 只用不用改 |
| `tools/jre/` | jdk-21.0.4+7（jadx/apktool 运行环境） | Agent 只用不用改 |
| `tools/installers/` | 本机散装安装器（MuMu/GG/launcher归档） | 开发者（本地 only，不进仓库） |
| `tools/MuMu Player 12/` | MuMu12 安卓测试机本体（含 `vms/`/`configs/`，已安装在岗） | 用户开机 + Agent adb 接管 |
| `docs/` | 本文件集（≤6 个，事实底稿） | 开发者/Agent |
| `.agent-teams/` | Agent Teams 工作区（含 necr-dump-plan） | Agent（忽略，不进仓库） |

## 核心链路

- BREM：`projects/BREM/别惹恶魔.apk`（只读）→ `projects/BREM/work_brem/`（smali 改 `a/c.smali` + `ma/*` + 判空）→ 签名 v1+v2+v3 → 最终版（不动了）。
- NECR：原包 `projects/NECR/Necromancer.apk`（只读，`91F35185…`）→ `work_necr/tools/`（apktool/Il2CppDumper/G1 门/补丁脚本）→ `work_necr/src/`（去 StubApp 树）→ `work_necr/repack/`（组装）→ `work_necr/release_stable/`（v18/v19 基线）→ MuMu 验证。
- DWRG：原包 `projects/DWRG/第五人格（测试版）.apk`（只读，`D1B3F51F…`）→ `work_dwrg/raw/`（zipfile 直解）→ `work_dwrg/jadx_out/`（`--no-res`）→ `libclient.so`/npk 深挖 → 动态（等用户开机）。
- 签名对齐链：`d8`（如需合 dex）→ `zipalign -f 4` → `apksigner v1+v2`（targetSdk 31 必须带 v2）。

## 关键文件表

| 文件 | 作用 | 验证 |
|---|---|---|
| `projects/NECR/work_necr/tools/g1_gate.py` | 内存 dump 自检（ELF/metadata/dex） | `python -m py_compile` 退出 0 |
| `projects/NECR/work_necr/tools/assemble_unshelled.py` | 去壳组装（apktool b→去壳→对齐→签名） | 已随本次迁移改新根，待干跑（见 06） |
| `projects/NECR/work_necr/tools/build_menu.py` | MOD 菜单构建 | 同上，待干跑 |
| `projects/NECR/work_necr/tools/patch_*.py` | SO 补丁群（P1–P11/M6–M21/transB2/B3） | `py_compile` 抽查通过 |
| `projects/DWRG/work_dwrg/axml_dump.py` | AXML 纯 Python 解码 | `py_compile` 退出 0 |
| `projects/DWRG/work_dwrg/npk_*.py` | NeoX npk 解析/雕刻 | `py_compile` 抽查通过 |

## 结构对照表（全检 + 本次迁移全量）

> 上段 = 2026-09-26 /fullcheck 搬迁（历史记录，原样保留）；下段 = 本次 `projects/` + `tools/` 归位。

| 旧路径 | 新路径 | 存什么 | 给谁看 |
|---|---|---|---|
| `DWRG(Test)/` | `DWRG/` | 第五人格项目（去括号，shell 安全） | 开发者/Agent |
| `DWRG(Test)/work_dwrg/*.py` 内 `D:\安卓逆向\DWRG(Test)\` | `D:\APK-Reverse\DWRG\` | 硬编码根修复（8 个 py + 1 md） | Agent |
| `BREM/plan6-repack/` | `BREM/work_brem/` | apktool 回编树（统一 `work_*` 约定） | 开发者/Agent |
| `NECR/work_necr/necr_menu_sc(初版).apk` | `NECR/work_necr/repack/necr_menu_sc-first.apk` | 简体首版（ASCII 化，进 repack） | 开发者 |
| `com.mumu.launcher_new.apk`（根） | `data/installers/com.mumu.launcher_new.apk` | 散装安装器归位 | 开发者 |
| `GameGuardian-101.2.apk`（根） | `data/installers/GameGuardian-101.2.apk` | 散装安装器归位 | 开发者 |
| `MuMu4.0旧版本.exe`（根） | `data/installers/MuMu4.0旧版本.exe` | 散装安装器归位 | 开发者 |
| 未搬（全检时）：`BREM/`、`NECR/`（大写保留） | — | 已发布引用，改名 churn > 收益 | 保留原因：外部链接 + git 历史 |

本次迁移（`projects/` + `tools/` 统一管理）：

| 旧路径 | 新路径 | 存什么 | 给谁看 |
|---|---|---|---|
| `BREM/` | `projects/BREM/` | 别惹恶魔项目 | 开发者/Agent |
| `NECR/` | `projects/NECR/` | Necromancer 项目 | 开发者/Agent |
| `DWRG/` | `projects/DWRG/` | 第五人格项目 | 开发者/Agent |
| `platform-tools/` | `tools/platform-tools/` | adb/fastboot | Agent 只用不用改 |
| `build-tools-win/` | `tools/build-tools-win/` | aapt2/d8/apksigner/zipalign | Agent 只用不用改 |
| `jadx/` | `tools/jadx/` | dex 反编译 | Agent 只用不用改 |
| `jre/` | `tools/jre/` | Java 运行环境 | Agent 只用不用改 |
| `data/installers/` | `tools/installers/` | 散装安装器归档 | 开发者 |
| 脚本内 `D:\APK-Reverse\NECR\` / `D:\安卓逆向\NECR\` | `D:\APK-Reverse\projects\NECR\` | 12 个 py 绝对路径跟随 | Agent |
| 脚本内 `D:\APK-Reverse\DWRG\` / `D:\安卓逆向\DWRG(Test)\` | `D:\APK-Reverse\projects\DWRG\` | 同上 | Agent |
| 脚本内 `D:\APK-Reverse\build-tools-win\` / `D:\安卓逆向\build-tools-win\` | `D:\APK-Reverse\tools\build-tools-win\` | 同上 | Agent |
