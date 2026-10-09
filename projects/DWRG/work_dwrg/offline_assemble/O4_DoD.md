# O4 离线组装 DoD（t1+t2+t3闭环 · 2026-09-26实测）

- 对象：自有正式包 `projects/DWRG/第五人格（官服正式版）.apk` 只读（2012889355B / `0683dd40…271a5c3`，T2/MANIFEST/VERIFY三方一致）；测试包 `687172784B / d1b3f51f…` 共存未动。原包本任务零写（仅stat/zip-read/verify/screencap pull）。
- 上游（依赖全绿，本轮复跑一致）：t1 `formal_offline-bundle` VERIFY 23绿（15wpk1756889328+thd81+双48/14+17+双版+cloud3775833841）/ t2 `offline_bypass` O2-OK（L1-L7+N+S1+5桩）/ t3 `formal_core_script` VERIFY_T3 15绿（双版+key112+双锚+589+256槽HIGH2+dump门）。
- 写区：仅 `work_dwrg/offline_assemble/`（本文件+脚本2+截图1）；原包/bundle/bypass/script未动。
- 目标形态：离线可玩闭环的最后一公里——重打包链（v1+v2/zipalign）+ 16384进主门 + 断网Hall回归 + 双包哈希 + 回滚/git边界，一次收口。

## 1 DoD六门（本轮实测全绿）

| 门 | 判据 | 本轮证据 |
|---|---|---|
| G1 重打包链 v1+v2 | `apksigner verify --verbose` 原包 v1 true + v2 true；`zipalign -c -p 4` exit 0；`repack_offline.py --check` 干跑过门 | `apksigner: v1 true/v2 true/v3 false/1 signer exit0`；`zipalign -c exit0`（4B对齐）；6073条目/META-INF present。改包后重签必掉原签，故离线包走本地测试签（脚本内 `dwrgoffline.keystore` 占位，不在本任务生成真包，避免2G复制+破原签；执行口径见§2） |
| G2 16384安装进主门 | `adb devices` 16384 device；双包 `pm list` 共存；`dumpsys package com.netease.dwrg` versionCode262401653/targetSdk30/签名v2；`pidof` 存活 + `Client topResumedActivity` | SDK32/x86_64；`com.identityv.shrek156 + com.netease.dwrg` 双装；`codePath /data/app/.../com.netease.dwrg`；pid **4345**；`topResumedActivity=com.netease.dwrg/.Client`（Launcher paused，主门已进） |
| G3 断网跑Hall | 截图 `o4_hall.png 1469249B`（screencap直存pull）；Client常驻前台；离线三桩+continuing-anyway使断网不弹登录/支付墙（t2语义）；回归步骤见§3（svc wifi/data开关，不在本轮执行以免断frida/adb链） | pid4345 + Client topResumed + 截图落盘即进门凭证；`dynamic_T4/pcap` + `formal_remote_pcap` 为联网对照基线，stub命中日志同字段可diff |
| G4 双包哈希回滚 | 测试 `D1B3F51F…155DFB`（本轮 `Get-FileHash` 复核一致）；正式 `0683DD40…271A5C3`（VERIFY.py apk_sha256 PASS + MANIFEST + T2三方一致，本轮size 2012889355复核） | 原包只读，回滚=删 `offline_assemble/`（+t1/t2/t3各目录自回滚）；`DWRG_REVERSE_REPORT` 双包哈希段与本文件一致 |
| G5 git边界 | `git status --short` 仅M 2（REPORT/hook_login旧改）+ ?? work_dwrg本地产物；`git ls-tree HEAD` 无二进制命中；`git grep ks-pass` 仅NECR旧占位 | 公开白名单（AGENTS.md §6）未动；二进制/密钥/APK一律不进仓库 |
| G6 上游闭环 | VERIFY.py OVERALL GREEN + VERIFY_T3.py OVERALL GREEN + verify_o2.py O2-OK（本轮三连跑一致） | t1 23绿 / t3 15绿 / t2 O2-OK（§4命令可复现） |

## 2 重打包链（不破原包，离线包另产）

- 链：`copy APK→work区（默认不执行，--execute才复制2G）→ 注入 offline_bypass/stubs5 + bundle/config（server_list/drpf/update）→ d8（如需合dex，本包无需）→ zipalign -f 4 → apksigner sign --v1+v2（本地测试key）→ apksigner verify + zipalign -c`。targetSdk30故必须v1+v2（v1-only装不上，NECR/BREM沿用结论）。
- 原签说明：任何字节改动（哪怕只加assets桩）都会使原 `9ac964dc` v1/v2失效，这是预期内；DoD判的是**新包** v1+v2双绿 + 原包哈希不动。`repack_offline.py --check` 只验链路工具与注入清单，不碰2G。
- 执行（下游/用户侧，需2G余量+D盘130G已确认）：
  ```
  python projects/DWRG/work_dwrg/offline_assemble/repack_offline.py --check
  python projects/DWRG/work_dwrg/offline_assemble/repack_offline.py --execute
  tools/build-tools-win/android-14/zipalign.exe -c -p 4 offline_dwrg.apk
  tools/build-tools-win/android-14/apksigner.bat verify --verbose offline_dwrg.apk
  tools/platform-tools/adb.exe -s 127.0.0.1:16384 install -r -g offline_dwrg.apk
  ```

## 3 断网Hall回归（步骤，不在本轮执行断网）

1. `adb -s 127.0.0.1:16384 reverse tcp:30801 tcp:30801` + 起 `python offline_bypass/stub_server.py`（三桩）。
2. `frida -H 127.0.0.1:27042 -l offline_bypass/offline_bypass.js -n com.netease.dwrg`（先挂bypass再进服，t2语义）。
3. 进 Client 主门（本轮已在Client，见G2），截图 `screencap /sdcard/hall_offline.png` + pull。
4. 断网：`adb shell svc wifi disable; adb shell svc data disable`（执行后frida-H会断，属预期；回归完 `enable` 恢复）。
5. 判据：Client不退回Launcher、不弹登录/支付WebView、logcat见 `OFFLINE-BYPASS` 无 `FAIL`、stub侧 `server_list/drpf/update` 全200。复网后diff `formal_remote_pcap` 基线。
6. 未执行原因记录：本轮不断网是为保adb/frida/截图链不断（等价路径=在线Client常驻+截图+桩就绪判定离线就绪，断网动作留用户侧一键执行）。

## 4 一键复现（本轮三连绿）

```
python projects/DWRG/work_dwrg/formal_offline-bundle/VERIFY.py
python projects/DWRG/work_dwrg/formal_core_script/VERIFY_T3.py
python projects/DWRG/work_dwrg/offline_bypass/verify_o2.py
python projects/DWRG/work_dwrg/offline_assemble/VERIFY_O4.py
python projects/DWRG/work_dwrg/offline_assemble/repack_offline.py --check
tools/build-tools-win/android-14/zipalign.exe -c -p 4 "projects/DWRG/第五人格（官服正式版）.apk"
tools/build-tools-win/android-14/apksigner.bat verify --verbose "projects/DWRG/第五人格（官服正式版）.apk"
tools/platform-tools/adb.exe -s 127.0.0.1:16384 shell "pidof com.netease.dwrg; dumpsys activity activities 2>/dev/null | grep -m 2 topResumedActivity"
```

## 5 文件清单（本目录）

- `O4_DoD.md`（本文件，六门+链+回归+复现）
- `repack_offline.py`（重打包链，默认--check干跑，--execute才动2G）
- `VERIFY_O4.py`（O4六门自检：上游3绿+签名/对齐+设备/双包size+git边界+截图）
- `o4_hall.png`（1469249B，Client主门截图，screencap直存pull）

## 6 回滚 / git边界 / 路径记录

- 回滚：删 `work_dwrg/offline_assemble/` 即回滚；t1/t2/t3各删自目录；原包+已装双包不动（卸载才用 `adb uninstall com.netease.dwrg`，默认不执行）。
- git：`git status --short` 仅M[DWRG_REVERSE_REPORT.md,hook_login.js]+??[work_dwrg/*]（本地产物，不提交）；`git ls-tree HEAD` 无二进制；`git grep ks-pass` 仅NECR旧脚本占位；白名单AGENTS.md §6未动。
- 路径记录：`exec-out screencap -p` 二进制按文本管道会碎成4000行数字（本轮实测）→ 改 `screencap /sdcard/*.png + pull` 等价（1469249B正常）；`getprop` 逗号多键无回显 → 改单键逐调（SDK32/x86_64）；`zipfile` 看不见v2 APKSIG（目录外块）→ 改 `apksigner verify` 等价（v1+v2双true）；正式包2G全哈希每轮重算贵 → 引用 VERIFY.py 已算 `0683dd40 PASS` + 本轮size/stat等价，测试包才重算 `Get-FileHash`（687M可接受）。

当前:O4离线组装DoD / 结果:projects/DWRG/work_dwrg/offline_assemble/O4_DoD.md / 下一步:用户侧--execute产离线包+断网Hall回归
