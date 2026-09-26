# 05 速查 — 配置/脚本/版本

## 配置项

| 项 | 值（字段名，凭据不记值） | 位置 |
|---|---|---|
| adb | 1.0.41 / 37.0.1，SHA256 `B4A6B455…286B3F` | `tools/platform-tools/adb.exe`，来源见 `ADB_INSTALL_REPORT.txt` |
| apktool | 3.0.3（实测 `apktool.jar --version`） | `projects/NECR/work_necr/tools/apktool.jar` |
| Il2CppDumper | 6.7.46 | `projects/NECR/work_necr/tools/il2cppdumper/` |
| AssetStudioMod | v0.19.0（`ASModGUI.zip`） | `projects/NECR/work_necr/tools/` |
| BlackDex | v3.2（`BlackDex32.apk`） | `projects/NECR/work_necr/tools/` |
| frida | server 17.18.0 == PC 17.18.0（本机 pip frida-tools 14.10.4 + frida-py 17.18.0） | `tools/frida-server-*`，CLI 用 `python -m frida` |
| Unity 参照 | 2021.3.18f1（`3129e69bc0c7`，备用 dex 合成） | 文档约定 |
| JDK | `tools/jre/jdk-21.0.4+7-jre`（jadx 用）+ `projects/NECR/work_necr/toolchain/jdk-17.0.11+9`（构建链） | 实测 `java -version` 17.0.20.1 |
| 签名口令 | 环境变量 `NECR_KEYSTORE_PASS`（默认 `CHANGE_ME`） | `assemble_unshelled.py` / `build_menu.py` |
| NECR 原包 | 52336519 B，SHA256 `91F35185…896024` | `projects/NECR/Necromancer.apk`（只读） |
| BREM 原包 | 21442058 B（说明记录），实测 SHA256 `A5A03A16…99DB9AF` | `projects/BREM/别惹恶魔.apk`（只读） |
| DWRG 原包 | 687172784 B，SHA256 `D1B3F51F…155DFB` | `projects/DWRG/第五人格（测试版）.apk`（只读） |

## 脚本速查（只写实测存在的）

| 脚本 | 用法 | 状态 |
|---|---|---|
| `projects/NECR/work_necr/tools/g1_gate.py <文件或目录>` | 校验 ELF/metadata/dex，只读 | 通过（compile 0） |
| `projects/NECR/work_necr/tools/assemble_unshelled.py <dex> [--force]` | 去壳组装 | 已随迁移改新根，待干跑（需 `NECR_KEYSTORE_PASS`） |
| `projects/NECR/work_necr/tools/build_menu.py` | MOD 菜单构建 | 已随迁移改新根，待干跑 |
| `projects/NECR/work_necr/tools/patch_iap.py` | P3 支付绕过（全 PIC） | 存在，需按 PATCHES 跑 |
| `projects/NECR/work_necr/tools/patch_onechance.py` | $6.99 守卫 v2/v3 | 存在，见 TRANS_NOTES |
| `projects/NECR/work_necr/tools/transB2.py` / `transB3.py` | metadata/场景回填 | 存在，v20cn 已验证 |
| `projects/DWRG/work_dwrg/axml_dump.py` | AXML 解码 | 通过 |
| `projects/DWRG/work_dwrg/npk_*.py`、`unpack_npk.py` | NeoX 解析 | 存在，compile 抽查通过 |
| `projects/DWRG/work_dwrg/frida_*.py` + `hook_login.js` | 登录/Token hook | 存在，需设备 |
| `tools/connect-ceserver.ps1 -CeserverBin tools/installers/ceserver75/ceserver_x86_64` | 接法A（全局）：ceserver 推入 MuMu12 并拉起（6 步，末端验活 127.0.0.1:52734） | 联调通过（[6/6] 验活；`ceserver75/` CE7.5 全套 ELF 已验，扩展 .so 同推；v3 修 adb-stderr 误杀；push 红字系妆饰噪音；ps1 须带 BOM） |

## 接口/包名速查

- NECR：`com.PrismaThunder.Necromancer`（存档 `/data/data/<包>/shared_prefs/*.xml`，键见改包报告 L1）。
- DWRG：`com.identityv.shrek156` / v1.5.6 / build 6.0-2438415；Application `com.netease.ntunisdk.application.NtSdkApplication`；Launcher `com.netease.dwrg.Launcher`。
- BREM：smali `a/c.smali`（`B=1 e=1`）、`ma/*`（`1/0/1`）、`e.java` 判空。
