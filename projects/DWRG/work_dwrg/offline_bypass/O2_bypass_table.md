# O2 校验旁路表（正式版 com.netease.dwrg / 2026.0828.1653 · nxmod3 代系）

- 对象：`projects/DWRG/第五人格（官服正式版）.apk` 只读（SHA256 `0683dd40…271a5c3`，T2/F4 沿用）；测试版 Channel 链已作废（T6）。
- 静态锚：`formal_libclient_strings.txt`（12MB）+ `t6_jni_formal.txt`（128，PluginUniSDK 约60）+ `formal_remote_urls.txt`（12dex）+ `formal_dyn_hook_login.js`（F2 node0）+ F4 §4。
- 代系：Python `3.11.6+nxmod2+h55mod10`（so 内嵌串 34 命中）；脚本层 NXS3 新变体（key112/e1倒挂，F3）。本表按 nxmod3 代系命名（so=nxmod2 运行时 + NXS3 脚本头），旧 2.7.3/denpk2/opcode27 表作废（F3）。
- 写区：仅 `work_dwrg/offline_bypass/`；原包/raw/jadx 未动。

## 1 nxmod3 旁路总表（5 面 + 生命周期 + 查询面）

| # | 面 | Java（classes5.dex行号，hook_map沿用） | JNI（t6_jni_formal） | native（libclient） | 旁路动作（continuing-anyway语义：失败也放行） |
|---|---|---|---|---|---|
| L1 | loginDone | `PluginUniSDK.loginDone:399 (int)` / `logoutDone:442` / `finishInit:87行native侧` | `NativeOnLoginDone` / `NativeOnLogoutDone` / `NativeOnFinishInit` | `getOnLoginDone/setOnLoginDone(callable)`；`ConstProp UNISDK_LOGIN_JSON/UNISDK_GUEST_LOGIN_STATE/HAS_LOCAL_GUEST_ACCOUNT` | Frida 直接放行：`loginDone(0)` 强制回成功；`onSuccess(0,"offline")` 注入；guest 本地账号位恒真；`finishInit` 直接回。对应 `offline_bypass.js [L1]` |
| L2 | Verify | `onSuccess:530 (int,String)` / `onFailure:534` | `NativeOnVerifySuccess` / `NativeOnVerifyFailure` | `getOnVerifySuccess/setOnVerifySuccess` / `getOnVerifyFailure/setOnVerifyFailure`；`ntVerifyOrder()` | `onFailure` 吞掉并转调 `onSuccess(0,"offline-bypass")`；`ntVerifyOrder` 直接触发 `VerifySuccess` 回调，不联网。对应 `[L2]` |
| L3 | OrderConsume | `orderCheckDone:446 (OrderInfo)` / `orderConsumeDone:450` / `ntCheckOrder:636` / `ntConsume:788` / `ntVerifyOrder` | `NativeOnOrderCheckDone` / `NativeOnOrderConsumeDone` | `ntCheckOrder(OrderInfo)` / `ntConsume(OrderInfo)` / `ntGetCheckedOrders` / `newOrderInfo` / `OrderInfoAndroid setOrderId/...`；`ConstProp UNISDK_CREATEORDER_URL/QUERYORDER_URL/CONSUMEORDER_URL` | `ntCheckOrder/ntConsume` 直接回真并同步触发 `orderCheckDone/orderConsumeDone` + `VerifySuccess`；`OrderInfo.obj2Json` 打桩价 `0`；`ntGetCheckedOrders` 返回本地单。对应 `[L3]` |
| L4 | Share | `onShareFinished:498 (boolean)` / `ntShare:772 (ShareInfo)` | `NativeOnShareFinished` | `ntShare(ShareInfo)` / `newShareInfo` | `ntShare` 直接回真并回调 `onShareFinished(true)`；`newShareInfo` 空对象兜底。对应 `[L4]` |
| L5 | WebView | `OnWebViewNativeCall:538 (String,String)` / `ntOpenWebView:1020 (String)` | `NativeOnWebViewNativeCall` | `ntOpenWebView(url)` | `ntOpenWebView` 拦截外跳，本地 `stubs/webview_whitelist.json` 白名单内直接 `OnWebViewNativeCall(a,"offline-ok")`；白名单外同样放行不联网。对应 `[L5]` |
| L6 | 生命周期 | `startupDone:518` / `continueGame` / `exitApp` / `ContinueGame:68/ExitApp:81` | `NativeOnStartupDone/ContinueGame/ExitApp/StartupClickSplash/StartupGetNoticeMsgDone` | `getOnStartupDone/setOnStartupDone` / `getOnContinueGame/setOnContinueGame` / `getOnExitApp/setOnExitApp` | `startupDone` 直接回；`continueGame` 恒调（断网续玩）；`exitApp` 拦截（防校验失败闪退）。对应 `[L6]` |
| L7 | 查询面 | `querySkuDetailsFinished(List)` / `onQueryFriendListFinished` / `onQueryRankFinished` + `ntQuerySkuDetails/ntQueryFriendList/ntQueryRank` | `NativeOnQuerySkuDetailsFinished/...FriendList.../RankFinished/...` | `ntQuerySkuDetails(itemType,skuList)` / `newSkuDetailsInfo` / `newQueryRankInfo` / `ntQueryRank` | 空列表回放：`querySkuDetailsFinished([])` 等直接回调，不走 `sigma-androidsdk-epay.proxima`。对应 `[L7]` |

- T4 旧表映射（作废对照）：`Channel.login/loginDone/hasLogin → L1`；`NativeInterface.NativeOnLogin/GMBridge → L1+L2 JNI`；`Client.openGMWebView/showGMFloatButton/setGMBridgeToken（GM=0消失）→ L5`；`SdkMgr.hasLogin/getPropStr（overload mismatch）→ L1 setLoginDone/getter`。正式版无 Channel，探针预期 absent（F2 首段保留）。
- 行号来源：`formal_dyn_hook_map.md`（jadx5 临件已删，行号沿用）；native 行号 LoginDone91/LogoutDone93/OrderCheckDone97/OrderConsumeDone99/ShareFinished153/StartupDone165/VerifyFailure169/VerifySuccess171/WebViewNativeCall173/FinishInit87/ContinueGame68/ExitApp81（F4 §4 对齐）。

## 2 continuing-anyway（SSL 免改项，实测 3 处）

- so 内嵌 curl 原语（`formal_libclient_strings.txt` 精确命中 3/3）：
  1. `error importing CA certificate blob, continuing anyway`
  2. `error setting certificate verify locations, continuing anyway:`
  3. `SSL certificate verify result: %s (%ld), continuing anyway.`
- 另：`SSL_CTX_set_verify* / load_verify_locations` 全套 OpenSSL 原语；`pinning/Pinning` 零命中（F4）；dex 侧 TLS 为系统 conscrypt（logcat `OpenSSLEvpCipherAES`），与 so 内 curl 双栈并存。
- 结论：无硬编码 pin/sha256 指纹，系统 CA 即通。离线 stub 用自签/明文 http 均可，无需 patch so。mitm 对照可用 T4 pcap（`dynamic_T4/pcap/dwrg_T4_20260926.pcap`）+ `formal_remote_pcap.txt`（SLL113 重解）做 bypass 前后差分。
- 动作：`offline_bypass.js [S1]` 仅 hook `SSL_CTX_set_verify` 打日志，不改 verify 回值（保持 continuing-anyway 原生放行，避免画蛇添足改坏握手）。

## 3 server_list / drpf / unisdk.update stub（离线三桩）

| 桩 | 线上原语（F4 实测） | 离线 stub（本目录 stubs/） | 命中后行为 |
|---|---|---|---|
| server_list | `UNISDK_SERVER_URL/SERVER_KEY/SERVER_MODE`（ConstProp）+ `protocol.unisdk.netease.com/api/template/v89/latest.json` + `/tpsl/android_class` + `dns.update.netease.com/hdserver2`；`g0.gsf.*/feature/query.json` | `stubs/server_list.json`（单服 `offline-h55` + `127.0.0.1:30801` 区服表）+ `stub_server.py` 路由 `/api/template/v89/latest.json` `/feature/query.json` `/hdserver2` | Frida `[N1]` 把 `UNISDK_SERVER_URL` 讀值改写 `http://127.0.0.1:30801`；`ntCheckOrder` 前不再拉远端服表，直接读本地桩 |
| drpf | `UNISDK_DRPF_URL` + `h55.drpf.x.netease.com /`（dwrg3 ×1 / T4大包 ×3）+ `DRPF(strJson)` + `DRPF_SUCCESS=0 ...`（so）；logcat `send to drpf Activation/LoginUI` | `stubs/drpf.json`（`{"code":0,"msg":"DRPF_SUCCESS offline"}`）+ 路由 `/` `/drpf` `/Activation` `/LoginUI` | Frida `[N2]` hook `DRPF(strJson)` 直接回 `0` 并 send 日志；网络层 stub 一律 `200 DRPF_SUCCESS`，埋点不阻塞进服 |
| unisdk.update | `UNISDK_UNIPATCH_CHECK_URL/UNIPATCH_LOG_URL` + `update.unisdk.163.com ×2` + `update.unisdk.easebar.com ×2` + `unisdk.update.netease.com/ngdevice/ ×6`（SNI）+ `protocol.unisdk.netease.com/release/r1636` + `nos.gameyw.netease.com json.ul` + `optsdk.gameyw .../initbox_android_h55.html` | `stubs/unisdk_update.json`（`{"update":false,"version":"2026.0828.1653","msg":"offline-latest"}`）+ 路由 `/ngdevice/` `/release/r1636` `/json.ul` `/initbox_android_h55.html` `/dm0.webview_whitelist.json` | Frida `[N3]` 拦截 `HttpURLConnection/OkHttp` 对上述 6 host 直接喂本地 json；so 内 `[Cloud]download sync/async` 打日志不断言失败；`thd corrupted/xhash`（F4 §2）走 `_preload_temp_ 拷贝继续` 原生分支，不弹错 |

- 支付相关 host（`analytics.mpay.netease.com` / `sigma-androidsdk-epay.proxima` / `epay.163.com/h5Main/cloud-music/auth` / `service.mkey.163.com/mpay`）一律 stub `200 {"pay":"offline-ok"}`（`stubs/pay.json`），与 L3 联动：不断网下单链。
- hosts 级兜底（断网真机）：`stub_server.py` 监听 `127.0.0.1:30801`，配合 `adb reverse tcp:30801 tcp:30801`；Frida 只改 URL 前缀，不改 hosts 表，避免污染系统 DNS。
- pcap 证据链：stub 命中日志格式与 `formal_remote_pcap.txt` 同字段（host/path/dport），可直接 diff。

## 4 文件清单（本目录）

- `O2_bypass_table.md`（本文件，nxmod3 表 + continuing-anyway + 三桩语义）
- `offline_bypass.js`（Frida bypass 全量，L1-L7+N1-N3+S1，`node --check` 过门）
- `stubs/server_list.json` / `stubs/drpf.json` / `stubs/unisdk_update.json` / `stubs/webview_whitelist.json` / `stubs/pay.json`
- `stub_server.py`（stdlib http.server 三桩路由，`:30801`）
- `verify_o2.py`（O2 自检：表完整性 + js语法 + json合法 + so/pcap锚点存在）

## 5 验证（本机实测口径）

- `node --check offline_bypass.js` → exit 0（F2 同口径）
- `python verify_o2.py` → `O2-OK L1-L7+N1-N3+S1`（表 7 行 + 桩 5 json + 锚点 `continuing anyway×3 / PluginUniSDK×56 / DRPF_SUCCESS` 全命中）
- `python stub_server.py --check` → 路由自检 200（不占端口）
- 动态（下游 T4，同 F2 命令）：`frida -H 127.0.0.1:27042 -l offline_bypass.js -n com.netease.dwrg`，过滤 `OFFLINE-BYPASS + orderCheck/orderConsume/Verify/WebView + Cloud/download/thd` 即得离线放行链；断网后 `server_list/drpf/update` 全走 `127.0.0.1:30801`，logcat 应见 `OFFLINE-BYPASS` 无 `FAIL`。
- 路径记录：`server_list` 在 so 无字面（仅 `_sasl_server_list` 误命中 1）→ 改用 `UNISDK_SERVER_URL + protocol/release + gsf/query` 三源等价（F4）；`drpf` 在 so 无小写命中 → 用 `UNISDK_DRPF_URL + DRPF(strJson) + DRPF_SUCCESS` 大写链等价；`unisdk.update` 在 so 仅 `http://update.unisdk.163.com/feature/query.json` 1 处 → 用 dex 12包 `https 6 host` 全集补齐（`formal_remote_urls.txt`）。

## 6 下游放行 / 回滚

- 放行 t4 离线组装：本表 L1-L7 即 smali 补丁点位表（`PluginUniSDK` 5 面行号可直转 smali 方法名）；三桩 json 即包内预置远端（t1 `formal_offline-bundle` 直接塞 `assets/`）；`stub_server.py` 即断网回归对照器。
- 回滚：删 `work_dwrg/offline_bypass/` 即回滚；原包 + F2/T4 产物未动。

当前:O2校验旁路 / 结果:projects/DWRG/work_dwrg/offline_bypass/O2_bypass_table.md / 下一步:offline_bypass.js+三桩stub+verify_o2自检
