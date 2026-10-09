# t2 断网回归 triage（2026-09-26实测 · 部分通过/三阻塞）

- 上游 t1：离线包 `offline_dwrg_aligned.apk` 绿（2012906103B/56BE7827/6085条目/v1+v2/align-c0），本任务未装上（B1）。
- 在位包：`com.netease.dwrg` 262401653 官签 9ac964dc；Client 已进（pid 6459 → MpayLoginActivity top），在线截图 `t2_online.png 1319984B`。

## 门
| 门 | 结果 |
|---|---|
| G1 reverse30801 | PASS（host-15 tcp:30801） |
| G2 stub | PASS（STUB-OK 24路由5桩 + server_list/drpf 双200，断网前） |
| G3 装离线包 | BLOCKED B1：`INSTALL_FAILED_UPDATE_INCOMPATIBLE`（debug签 vs 9ac964dc，需备份Documents后卸载重装，本轮未执行） |
| G4 Client截图 | 在线PASS / 离线BLOCKED B3 |
| G5 frida bypass | BLOCKED B2：主进程arm64转译，x86_64-server下 `Java not defined`，bypass.js 报 `[error] None`；PID直连native层attach通 |
| G6 断网logcat | BLOCKED B3：`svc wifi/data disable` 执行后 shell hang 120s，16384 offline 至今（MuMu进程在），离线截图/logcat取不到 |

## 路径记录
- frida按名枚举miss主进程 → 改PID直连等价（native通/Java桥缺，判死此模拟器JS钩子）。
- `python -m frida` 无入口 → 改 Scripts/frida-*.exe + `add_remote_device` 等价。
- 断网保链警告（O4 §3）命中：MuMu网桥随wifi/data同死，adb kill-server/start-server+connect仍offline。

## t3输入 / 用户动作
1. B3先行：用户侧恢复模拟器网络（工具栏WiFi重开或重启模拟器）→ `adb connect 127.0.0.1:16384` 复活后再跑断网对照。
2. B1：备份 `/sdcard/Documents`（thd81 51MB）→ `adb uninstall com.netease.dwrg` → 装离线包 → 对signer/versionCode。
3. B2：ARM真机或arm64 frida-server补测 L1-L7/N/S1（本机仅x86/x86_64，无arm64-server）。
4. 对照基线：`dynamic_T4/pcap` + `formal_remote_pcap` diff stub命中字段。

当前:t2断网回归 / 结果:三阻塞triage落盘(t2_evidence.json) / 下一步:t3按B1-B3分诊+用户恢复模拟器
