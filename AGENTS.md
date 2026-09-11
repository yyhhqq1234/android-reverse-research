# AGENTS.md — 安卓逆向项目集

> 工作区根目录：`D:\安卓逆向`（Windows，含中文路径）
> 面向在此目录下协作的所有 Agent：进场先读本文件，再读 `CLAUDE.md` 与各子项目说明。
> 公开仓库：<https://github.com/yyhhqq1234/android-reverse-research>（PUBLIC，仅文档+脚本，MIT；APK/密钥/二进制/产物一律不进仓库，详见 §6 与 `README.md`）。

## 1. 项目集一览

| 项目 / 目录 | 说明 | 状态 |
|---|---|---|
| `BREM/`（别惹恶魔） | 纯 smali 改包：恶魔部署真 0ms + 法术 1ms 无怒气 + 闪退判空修复 | ✅ 已完成，最终包可用 |
| `NECR/`（Necromancer 死灵法师） | Unity IL2CPP + 360 DynCryptor 企业版壳的改包攻坚 | 🔄 脱壳/去壳化进行中，`release_v1` 去壳包可用 |
| `platform-tools/` | 官方 Android SDK Platform-Tools（adb/fastboot/sqlite3 等） | 基础设施，只用不用改 |
| `build-tools-win/android-14/` | aapt/aapt2、d8、apksigner、zipalign | 基础设施，只用不用改 |
| `jadx/` | dex 反编译（`bin/` + `lib/`） | 基础设施 |
| `jre/jdk-21.0.4+7-jre/` | jadx / apktool 等的 Java 运行环境 | 基础设施 |
| `MuMu Player 12/` + 根目录两个 `.lnk` | MuMu 模拟器本体与多开器 | 需用户手动开机，Agent 只做 adb 接管 |
| `GameGuardian.101.1.apk` / `KSU.apk` | GG 修改器 / KernelSU | 工具 APK，不要改名删除 |
| `ADB_INSTALL_REPORT.txt` | platform-tools 安装来源与校验记录 | 只读档案 |
| `.agent-teams/` | Agent Teams 工作区（含 `necr-dump-plan`） | 按团队协议使用 |

## 2. 子项目速览

### 2.1 BREM（别惹恶魔）— 已完结，不要 regression

- 原版：`BREM/别惹恶魔.apk`（21442058 B）
- 最终版：`BREM/别惹恶魔_无冷却无消耗_安卓16_最终版.apk`（21433707 B，v1+v2+v3 签名，已 zipalign，配套 `.idsig`）
- 已改解包目录：`BREM/别惹恶魔/`（`assets/`、`res/`、`classes.dex`、`AndroidManifest.xml` 等）
- 原始备份：`BREM/backup_original/`（`*.magic` / `*.it` 资源备份）
- 本地测试签名 key：`BREM/debug.jks`（仅本机，公开仓库不收录，见 §6）
- 改动要点（详见 `BREM/说明.txt`）：
  - 恶魔部署：`smali a/c.smali` 中 `B=1 e=1`，真 0ms（`dv/d*.orz` 的 n 值是硬编码，改 shop/des 无效，必须改源码层）
  - 法术：`ma/*` 改 `1/0/1`，1ms 无怒气
  - 闪退：`e.java` 加判空
- Agent 守则：BREM 只允许复现/验证类任务，任何新改动必须先备份、写明 smali 点位，禁止直接覆盖最终版 APK。

### 2.2 NECR（Necromancer）— 主战场

- 原包：`NECR/Necromancer.apk`（只读！SHA256 前缀 `91F35185…`，改前先复核，详见 `NECR/work_necr/` 下报告）
- 旧解包：`NECR/Necromancer/`（只读对照）
- 工作区：`NECR/work_necr/`，所有产出只写这里：
  - `00_准备状态_必读.md` — 工具链与待办（先读）
  - `NECR_IL2CPP改包报告.md` — dump.cs 导读 + L0–L3 可改点 + E1–E20 补丁战报（必读）
  - `release_v1/PATCHES.md` — 去壳 v1 补丁清单 P1–P4（必读，仅本机；`release_v*/` 不进公开仓库）
  - `tools/` — 本机全量：apktool 3.0.3、Il2CppDumper 6.7.46、AssetStudioMod、BlackDex32、frida-server、GG 脚本等二进制仅本机；公开仓库只收 `*.py/*.java/*.ps1` 脚本与 `il2cppdumper/*.py`，不收 `*.jar/*.exe/*.dll/*.xz/*.zip/*.apk`
  - `src/` — apktool 反编译树（manifest 已去 StubApp，仅本机，不进公开仓库）
  - `build/` / `repack/` / `prod/` / `trial/` / `logs/` / `deps/` / `save/` — 构建、成品、内存 dump、对照试验、日志、依赖、存档（仅本机，不进公开仓库）
- 关键结论（不要重复踩坑）：
  - 纯离线单机 Unity 游戏，Java 层是薄胶水，真逻辑在 `libil2cpp.so` + `global-metadata.dat`（`dump.cs` 约 30 万行 / 5896 类，游戏自有 160 类）
  - 360 企业版 DynCryptor 用运行期签名派生密钥：换签后解密期 `memset(dest,0,2.5亿)` 写穿崩溃（E1–E20 全灭记录见改包报告 §5），静态找不到密钥孔
  - 可走路线只剩四条：L0 GG 动态改内存 / L1 存档 XML 直改 / L2 资源表改数值 / L3 SO 补丁；重打包走“去壳拼图”（`tools/assemble_unshelled.py`）
  - `release_v1` 已验证：P1 金币强制 9999、P2 钻石 ×1024、P3 IAP 全 PIC 绕过、P4 文本等长替换；签名 `repack/necr.keystore`（本地密钥，未随仓库发布）
- 版本钉死（勿动）：frida-server 17.18.0 == PC frida 17.18.0（本机 pip 是 frida-tools 14.10.4 + frida-py 17.18.0，CLI 用 `python -m frida`）、Il2CppDumper 6.7.46、apktool 3.0.3、AssetStudioMod v0.19.0、BlackDex v3.2、Unity 2021.3.18f1（changeset `3129e69bc0c7`，备用 dex 合成参照）

## 3. 基础设施用法

- ADB：`D:\安卓逆向\platform-tools\adb.exe`（v1.0.41 / 37.0.1），`ADB_INSTALL_REPORT.txt` 有来源与 SHA256。不要换第三方 adb。
- 构建签名标准链：`d8`（如需合 dex）→ `zipalign` → `apksigner`（全部在 `build-tools-win/android-14/`）。targetSdk 31 的包 v1-only 不可安装，必须带 v2；v2 不覆盖 EOCD 注释（64KB 自由空间可用）。
- 反编译：jadx 看 Java 逻辑；Il2CppDumper 看 `dump.cs`（NECR trial 产物 `trial/out_vanilla/`：`dump.cs` / `il2cpp.h` / `script.json` / `stringliteral.json`）。
- Java：优先用自带 `jre/` 或 `NECR/work_necr/toolchain/jdk-17.0.11+9`（NECR 构建链绑定的版本），不要乱升级。

## 4. Agent 工作协议

1. **只读红线**：原包（`BREM/别惹恶魔.apk`、`NECR/Necromancer.apk`）、`backup_original/`、`platform-tools/`、`build-tools-win/`、`jadx/`、`jre/`、`MuMu Player 12/` 一律只读。改前 pull/复制备份，改后复核原包 SHA256。
2. **中文路径坑**：apktool / Il2CppDumper / 部分签名工具在中文路径下会失败，操作 NECR 时用英文暂存路径中转，成品再拷回。
3. **模拟器分工**：雷电/MuMu 的开机、手动点进主界面、装 GG 并跑 dump 脚本由用户做；Agent 负责 adb 命令、pull 回 `work_necr/prod/`、跑 G1 门与对照分析。不要假设模拟器已开机，先 `adb devices` 确认。
4. **任务路由**：
   - BREM 相关 → 复现/验证优先，读 `BREM/说明.txt`，小步 smali 修改 + 回装验证。
   - NECR 相关 → 先读 `00_准备状态_必读.md` + `NECR_IL2CPP改包报告.md` + `release_v1/PATCHES.md`，再看 `tools/` 现有脚本，优先复用（`g1_gate.py`、`assemble_unshelled.py`、`patch_iap.py`），不要重造轮子。
   - 工具链/环境问题 → 查 `ADB_INSTALL_REPORT.txt` 与版本钉死清单，不要擅自升级。
5. **输出规范**：改包任务必须给出——改了哪个文件偏移/ smali 点位、原字节→补丁字节、签名方式（v1+v2）、zipalign 与否、安装验证结果；失败任务必须给出 tombstone/日志路径与复现步骤。
6. **密钥与敏感信息**：本地测试签名用的 keystore / jks 与口令仅保存在本机，不上传、不改口令、不提交到外部仓库（公开仓库已通过 `.gitignore` 排除）。`assemble_unshelled.py` / `build_menu.py` 的签名口令走环境变量 `NECR_KEYSTORE_PASS`（默认 `CHANGE_ME` 占位），禁止把真实口令写回脚本或文档。
7. **团队协作**：经 AgentTeams 协作时，NECR dump/分析类任务沿用 `.agent-teams/necr-dump-plan` 的分工，不另起互斥计划。

## 5. DoD（完成定义）

- 新/改 APK：给出文件名 + 大小 + 签名方案 + 对齐状态 + 安装验证（机型/Android 版本）+ 回滚方式（备份路径）。
- 分析任务：给出产物路径（`work_necr/prod/` 或 `trial/` 下）+ 校验结果（G1 门 / SHA256 / dump 行数等）+ 下一步建议。
- 所有任务：原包 SHA256 未变，备份可回滚，报告写入对应子目录 md 而不是散落根目录。
- 涉及公开仓库的任务：`git status` 干净且符合 §6 边界，`git grep` 无口令/token 残留，已说明本地产物回滚路径。

## 6. 公开仓库边界（必守）

- 地址与许可：<https://github.com/yyhhqq1234/android-reverse-research>，PUBLIC，分支 `main`；自研文档/脚本按 MIT 发布，第三方工具与目标应用内容不授权、也不随仓库发布。
- 只收：`README.md`、`LICENSE`、`.gitignore`、`AGENTS.md`、`CLAUDE.md`、`ADB_INSTALL_REPORT.txt`、`BREM/说明.txt`、`NECR/work_necr/00_准备状态_必读.md`、`NECR_IL2CPP改包报告.md`、`TRANS_NOTES.md`、`VERSIONS.md`、`tools/*.py/*.java/*.ps1`、`tools/il2cppdumper/*.py`、小体积翻译文本（`trans/batches/` + `trans/work/` 部分 `.txt`）。
- 不收：`*.apk/*.aab/*.so/*.dex/*.jks/*.keystore/*.idsig/*.exe/*.dll/*.jar/*.xz/*.zip/*.dat/*.bin`；`BREM/别惹恶魔/`、`BREM/backup_original/`、`NECR/Necromancer/`、`NECR/work_necr/{src,build,repack,prod,trial,logs,deps,save,toolchain,release_v*,tools/_archive,tools/asmod}`；`platform-tools/`、`build-tools-win/`、`jadx/`、`jre/`、`MuMu Player 12/`、`*.lnk`、`GameGuardian*.apk`、`KSU.apk`、`.agent-teams/`。
- 发布前必查：`git status --short` 确认只动预期文本；`git grep -n "ks-pass"` 确认签名口令均为 `NECR_KEYSTORE_PASS` 占位、无硬编码真实口令；`git ls-tree -r --name-only HEAD` 无二进制/密钥；`gh repo view` 确认 `visibility: PUBLIC`。
- 根目录说明：公开侧根目录有 `README.md` / `LICENSE` / `.gitignore` / `AGENTS.md` / `CLAUDE.md`；本机根目录另有工具链与模拟器目录，仅本机使用。
