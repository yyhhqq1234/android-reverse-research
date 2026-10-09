# 安卓逆向项目集

Android 逆向分析与改包研究工作区。仓库收录五个项目的**分析文档、自研脚本、以及反编译/解包的文本产物**（当前入库 75,000+ 个文件，全部为文本，单文件 ≤ 2 MB）。

| 项目 | 目标 | 技术栈 | 状态 |
|---|---|---|---|
| **WZRY** | 王者荣耀 离线测试版 `com.tencent.tmgp.sgameceg` | Unity Mono + native `libGameCore.so` | 活跃（数值/技能表改造已达成） |
| **SUBR** | 自研 IL2CPP 靶标 `com.pro.game.FreeSurvivalUnknownBattle` | Unity IL2CPP（jadx/apktool/il2cpp dump） | 静态审计完成，改包链闭环 |
| **DWRG** | 第五人格 | NeoX 非 Unity（npk / lua / 自研 VM） | 解包 + 离线组装 + 动态抓远端完成 |
| **NECR** | Necromancer 死灵法师 | Unity IL2CPP + 360 DynCryptor 企业壳 | 已封存（稳定版 v19 在用） |
| **BREM** | 别惹恶魔 | 纯 smali 改包 | 已完结（最终包可用） |

## 目录结构

```
.
├── README.md / LICENSE / .gitignore / AGENTS.md / CLAUDE.md / TASKPOINT.md
├── ADB_INSTALL_REPORT.txt          # platform-tools 安装来源与 SHA256
├── docs/                           # 全检重建文档 01–06（概览/架构/用法/开发/参考/路线）
├── projects/
│   ├── WZRY/                       # 王者荣耀项目：解包树 + patcher 源码 + REPORT 链
│   ├── SUBR/                       # IL2CPP 靶标：jadx_out / apktool_out / il2cpp_dump / esp_mod
│   ├── DWRG/                       # 第五人格：解包树 + work_dwrg（报告 + 脚本 + 文本产物）
│   ├── NECR/                       # 死灵法师：work_necr 报告/日志/翻译文本
│   └── BREM/                       # 别惹恶魔：说明 + 解包文本
└── tools/
    ├── connect-ceserver.ps1        # CE ceserver 一键接法
    └── _unified/scripts/           # 跨项目自研工具脚本（npk/elf/frida/patch/trans 等）
```

## 项目说明

### WZRY — 王者荣耀（活跃线）

主线是**战斗数值与技能表改造**：用 Mono.Cecil 补丁器把 `WzFix` 挂到战斗更新链上，运行期改写 databin 表与演员属性。

- 补丁器源码：[`projects/WZRY/_unpacked/patcher/Program.cs`](projects/WZRY/_unpacked/patcher/Program.cs)
- 项目入口：[`README-WZRY.md`](projects/WZRY/_unpacked/README-WZRY.md) · [`INDEX.md`](projects/WZRY/_unpacked/INDEX.md) · [`DUMP-REPORT.md`](projects/WZRY/_unpacked/DUMP-REPORT.md)
- 过程报告：`projects/WZRY/_unpacked/REPORT*.md`（含 v43 最终配置与全部死路记录）
- 构建链：`Assembly-CSharp.mod.dll` → apktool 回编 → `zipalign -f 4` → `apksigner`（v1+v2）→ `adb install -r`

### SUBR — IL2CPP 靶标

- 反编译树：`projects/SUBR/jadx_out/`（15,533 个 `.java`）、`projects/SUBR/apktool_out/`（smali/xml）
- IL2CPP 文本 dump：`projects/SUBR/il2cpp_dump/`（含大文件，>2 MB 部分仅存本机）
- 改包模块：`projects/SUBR/esp_mod/`（`jni/hack.cpp`、`smali/ModBridge.smali`、构建脚本）
- 入口：[`REPORT.md`](projects/SUBR/REPORT.md) · [`STATIC_AUDIT_20261003.md`](projects/SUBR/STATIC_AUDIT_20261003.md) · [`AUDIT_BOX_SKEL_AIM.md`](projects/SUBR/AUDIT_BOX_SKEL_AIM.md) · [`esp_mod/STATUS.md`](projects/SUBR/esp_mod/STATUS.md)

### DWRG — 第五人格

- 总报告：[`DWRG_REVERSE_REPORT.md`](projects/DWRG/work_dwrg/DWRG_REVERSE_REPORT.md) · [`BC_FINAL_REPORT.md`](projects/DWRG/work_dwrg/BC_FINAL_REPORT.md)
- 分线报告：`B1_Static_Patch.md`、`B2_Heartbeat_Result.md`、`B3_Offline_Soak.md`、`F3_Lib_Restore.md`、`F4_Remote_Verify.md`、`MIMIC_Reuse.md`
- 主题报告：`T1`–`T6`（基线复评/正式基线/npk 还原/动态抓包/敏感点/正式包差分）
- 离线组装与绕过：`offline_assemble/`、`offline_bypass/`、`formal_core_*`（nxs3 变体、opcode 新表、脚本自洽、WPX/动静态）
- 自研脚本：`c1_native/`、`c1_native_formal/`（Frida hook / 文件 / 网络 / 订单）

### NECR — 死灵法师（已封存）

- 必读：[`00_准备状态_必读.md`](projects/NECR/work_necr/00_准备状态_必读.md)（工具链现状与"等用户动手"清单）
- 改包报告：[`NECR_IL2CPP改包报告.md`](projects/NECR/work_necr/NECR_IL2CPP改包报告.md)（dump.cs 导读 + L0–L3 路线 + E1–E20 失败战报）
- 翻译与版本：[`TRANS_NOTES.md`](projects/NECR/work_necr/TRANS_NOTES.md) · [`VERSIONS.md`](projects/NECR/work_necr/VERSIONS.md) · [`CLEANUP_20260926.md`](projects/NECR/work_necr/CLEANUP_20260926.md)
- 崩溃证据：`projects/NECR/work_necr/logs/tombstone_*.txt`
- 结论：360 企业版 DynCryptor 用运行期签名派生密钥，换签必死解密期；可行路线只剩 L0 动态改内存 / L1 存档直改 / L2 资源表 / L3 SO 补丁。

### BREM — 别惹恶魔（已完结）

- 改动说明：[`projects/BREM/说明.txt`](projects/BREM/说明.txt)（恶魔部署真 0 ms / 法术 1 ms 无怒气 / 闪退判空）
- 解包文本：`projects/BREM/别惹恶魔/`（manifest、res/layout、smali 文本）

## 仓库边界

**收录**：研究文档、自研脚本、反编译与解包产生的**文本产物**（`.java/.smali/.xml/.json/.py/.ps1/.md/.txt` 等），单文件 ≤ 2 MB。

**不收录**（`.gitignore` 强制）：

- 原版与改版安装包、DEX、SO、Unity 资源等二进制产物（`*.apk/*.aab/*.dex/*.so/*.dll/*.exe/*.zip/*.xz`…）
- 签名密钥与凭据（`*.jks/*.keystore/*.idsig/*.pem`）及任何明文口令
- 模拟器与第三方发行（`tools/MuMu Player 12/`、`tools/jre/`、`tools/jadx/`、`tools/platform-tools/`、`tools/build-tools-win/`、`tools/installers/`、`tools/_unified/{bin,jars}`、NDK 源码树）
- 大体积素材与运行态：仿真磁盘 `*.vdi`、抓包 `*.pcap`、资源包 `*.npk/*.wpk/*.fsb/*.unity3d`、纹理 PNG、>2 MB 的 dump 文本、`.agent-teams/`、`storages/`、`configs/reverse-hybrid/`

明细见 [`.gitignore`](.gitignore)。

## 敏感信息处理

- 仓库内所有签名口令均改为**环境变量占位**，脚本中不再出现明文：
  `NECR_KEYSTORE_PASS` · `DWRG_KEYSTORE_PASS` · `SUBR_KEYSTORE_PASS` · `FJD_KEYSTORE_PASS` · `WZRY_KEYSTORE_PASS`
- 已脱敏第三方应用内硬编码的云服务凭据（WZRY 反编译树中的 Tencent Cloud `SECRET_ID`/`SECRET_KEY` 已替换为 `<REDACTED-…>`）。
- 提交前检查：`git status --short` 干净、`git grep --text` 无明文口令/私钥、`git ls-tree -r HEAD` 无二进制与密钥。

## 工具链（版本钉死，不要升级）

| 工具 | 版本 |
|---|---|
| adb / platform-tools | 1.0.41 (37.0.1)，见 [`ADB_INSTALL_REPORT.txt`](ADB_INSTALL_REPORT.txt) |
| apktool | 3.0.3 |
| Il2CppDumper | 6.7.46 |
| jadx | 见 `tools/jadx/`（仅本机） |
| frida-server | 17.18.0（须与 PC `frida` 17.18.0 一致） |
| build-tools | android-14（`zipalign` + `apksigner`，须先对齐再签，v1+v2） |

测试机固定 `adb connect 127.0.0.1:16384`；CE 接法见 [`tools/connect-ceserver.ps1`](tools/connect-ceserver.ps1)。

## 许可

仓库中由本项目作者编写的文档与脚本按 [MIT License](LICENSE) 发布。
第三方工具、样本、商标与目标应用内容不在本许可授予范围内，且未随仓库发布——入库的反编译文本仅为研究取证留档，不构成对目标软件任何权利的授予。

## 免责声明

本仓库用于**合法授权**的软件安全研究、互操作性研究和个人学习。请勿将其中方法用于未经授权的篡改、绕过付费机制、侵犯版权或违反目标软件服务条款的行为。
