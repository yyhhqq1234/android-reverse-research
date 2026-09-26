# 06 路线 — 待办/雷区/下一步

> 与新 `TASKPOINT.md §7/§8` 同源。

## 待办（按不做就跑不起来 → 能跑但缺功能 → 优化排序，不超 8 条）

- [ ] 修 `projects/NECR/work_necr/tools/assemble_unshelled.py` + `build_menu.py` 硬编码 `D:\安卓逆向` → `D:\APK-Reverse`（6 处：JAVA/APKTOOL/ZA/SIGNER/KS/DEC），再跑 `--help`/干跑验证。
- [ ] 修 `AGENTS.md`/`CLAUDE.md` 旧根 `D:\安卓逆向` → `D:\APK-Reverse`（本次步骤六已做，待复核）。
- [ ] DWRG 动态：用户开机 MuMu/雷电并进主界面 → `adb devices` → 原包直装抓包（`Channel.login/NativeOnLogin/getToken` hook）。
- [ ] NECR 翻译收尾：`trans/work/*_sc.*` 对照表合并 + `transB2/B3` 保长重打验证（cmap 0 bad lines 门）。
- [ ] BREM `work_brem/` 与最终版一致性复核（smali 点位抽查，不覆盖最终 APK）。
- [ ] `release_stable/README_v19.md` 编码修复（当前 UTF-8 读出 mojibake，疑 GBK 存档，需转 UTF-8）。
- [ ] 公开仓库发布前检查：`git status --short` + `git grep -n NECR_KEYSTORE_PASS` + `git ls-tree` 无二进制。
- [ ] DWRG `so_info.py`/`url_hunt.py` 旧根已修，需有设备后跑 `libclient.so` JNI 导出深挖。

## 雷区（进行时必须避开）

- 现象：`assemble_unshelled.py --help` 报 `FileNotFoundError: D:\…\toolchain\jdk-…\java.exe`；原因：脚本硬编码 `D:\安卓逆向`，实际根为 `D:\APK-Reverse`；正确做法：批量替换根后再跑，需 `NECR_KEYSTORE_PASS`，输出存在时加 `--force`。
- 现象：`aapt dump badging` 报 `Illegal byte sequence`；原因：中文路径调 aapt2；正确做法：apktool/raw/签名用英文暂存路径中转，成品拷回，DWRG 已改 `zipfile` 直解 + `jadx --no-res`。
- 现象：换签后死解密期 `memset(dest,0,2.5亿)` 写穿（`SIGSEGV @0xf4740000`）；原因：360 企业版 DynCryptor 运行期签名派生密钥；正确做法：放弃换签保壳，走 L0–L3 或 `assemble_unshelled.py` 去壳拼图。
- 现象：targetSdk 31 包 v1-only 装不上；原因：系统要求 v2；正确做法：先 `zipalign` 再 `apksigner v1+v2`。
- 现象：场景翻译重写长度字段后 `serialization layout` 连刷 + 3GB 分配 + Loading.Preload SIGTRAP；原因：transB3 必须保长（`CN+空格` 垫到 lenKO）；正确做法：transB2 可重写 len，transB3 禁止。
- 现象：`transB2.py` 用 `\x00` 垫短导致背包词条 NUL 截断（`<color>` 裸奔）；原因：NUL 进 C# 串遇停截断；正确做法：空格垫（已修，meta `7e18e26e→6d41efd8`）。

## 下一步（新对话先干这个）

1. 批量修 NECR tools 旧根（`Select-String D:\安卓逆向` 全量替换），`py_compile` 全过后跑 `assemble --help` 干跑。
2. 复核 `AGENTS.md`/`CLAUDE.md` 新根 + DWRG 补录 + `release_stable` 替换 `release_v1`。
3. 等用户开机：`adb devices` 见设备后做 DWRG 动态抓包 + NECR（如需）回归。
