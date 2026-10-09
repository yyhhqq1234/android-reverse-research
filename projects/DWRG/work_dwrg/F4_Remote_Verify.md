# F4 远端分包+SSL支付验证（正式版 2026.0828.1653，2026-09-26实测）

- 对象：`projects/DWRG/第五人格（官服正式版）.apk` 只读未动（SHA256 `0683dd40388bb6fb…271a5c3`复核一致）；目标 preload/pkgmapping/thd/res48M→wpk400M差量 + pcap对照 continuing-anyway/order链
- 产物仅`work_dwrg/`：本文件 `F4_Remote_Verify.md` / `formal_remote_urls.txt` / `formal_remote_pcap.txt` / `formal_remote_wpk.txt`；原包/raw/jadx未动

## 1 首包清单：res48M兜底 vs wpk400M级（差量模型闭环）

| 层 | 文件 | 大小 | 定位 |
|---|---|---|---|
| builtin兜底 | assets/packages/builtin/res.npk | 48125588 (45.9M) | neox_package builtin ccdd5f8f，filesystem res/npk |
| stdlib | assets/packages/python3/Lib.npk | 3982804 | F3已还原因子集，无业务码 |
| 引导 | assets/script.npk | 1952 n4全NXS3新变体 | F3已记，游戏码在远端 |
| wpk TOP | res/ui2.wpk 402653200 / nxparticle_cache2.wpk 402653200 / ui3 252706832 / scene2 205520912 / script1 201326608 / fx2 127926288 / chr_prop2 73400336 / chr_guanjia2 60817424 / shader2 12582928 / common2 6291472 | 15个共1756889328 (~1675M) | 占1919M包体91%，首包即含400M档 |
| 差量语义 | res48M离线兜底 → wpk400M首包直装 → cloud远端增量（thd/preload校验，不一致走_preload_temp_拷贝） | — | libclient原语见§2 |

- `formal_remote_wpk.txt`为15 wpk倒序全表；总数与formal_meta 304 assets一致。

## 2 远端路由：neox3.xml + cloud.json + pkgmapping/preload + thd

- `assets/neox3.xml` filesystems：
  - res：`discrete(os,%DOC_DIR%\res,p1)`优先 + `cloud(opener=cloud,basepath=%DOC_DIR%,pkgname="")`兜底
  - script：`discrete` + `cloud(pkgname="script")` + `npk(asset,root=script,p1)`三层，F3 script1.wpk 201M + cloud script即游戏逻辑远端位
- `assets/cloud.json`：`base_url https://h55.gsf.netease.com/nx3_release_ios_ad/` / `version_url https://h55.update.netease.com/pl/nx3_release_ios_ad_patch_list.txt` / combo_patch temp_cache/res.zip / namehash_check true
- `assets/pkgmapping.json`：default inroot depth1，mapping 14对（chr_*9 + release_2025_1217 2 + script/engine/common→script 3，见产物）
- `assets/preload.json`：50包名全`[[0,15],[0,15]]`统一预加载声明（ar_confs/builtin/chr_*/script/ui/wwise等），等价全量预载，thd一致性锚点
- thd（formal_libclient_strings 76命中，产物列全）：
  - `The thd %s is corrupted` / `The thd xhash not matched!`
  - `clear_thd_wpk` / `thd_clear` / `image_thd_preload`
  - `cloud_engine_init, static repo is updating (local thd may be not consistent dure to the broken of previous preload), continue copying from _preload_temp_ repo`
  - `[Cloud]download sync/async …` / `[Wpk]WpkCore: open idx …` / `check_pkg_encoded_hash pkgname:%s`
  - `preload.json` + `pkgmapping.json` + `cloud.json`文件名原语同在so
- dex侧thd：12dex全含（classes8 112 / classes9 73 / classes10 33 / classes.dex 25等），preload各dex 1-17处，证实Java+so双层校验。

## 3 pcap对照（SLL 113，已修14B以太假设；adb 5555噪声已滤）

| 包 | 规模 | 有效结论 |
|---|---|---|
| dwrg.pcap 1688442 | 1305包 | 仅10.0.2.2↔10.0.2.15 adb 5555（1174/131），无游戏TLS，登录前基线 |
| dwrg2.pcap 1703936 | 1314包 | 同上纯adb，无游戏流 |
| dwrg3.pcap 2071694 | 2098包 | 首游戏TLS：SNI `analytics.mpay.netease.com`3x / Host `appdump.x.netease.com POST /upload`6x + `h55.drpf.x.netease.com /`1x；443 66 + 80 50；对端45.253.117.66/223.252.194.185/124.160.141.54；TLS3.3×6+3.1×3 |
| dynamic_T4/pcap/dwrg_T4_20260926.pcap 631579147 | 采样84212包/630M | SNI `mumu.nie.netease.com`8 / `unisdk.update.netease.com`6 / `mumu.163.com` / `store-api.mumu.163.com` / `data-detect.nie.netease.com` / `dispatcher-mobile.uu.163.com` / `romsdk-mobile.uu.163.com` / `sentry.netease.com`；Host `h55.drpf.x.netease.com /`3 / `update.unisdk.163.com`2+`update.unisdk.easebar.com`2 / `protocol.unisdk.netease.com /release/r1636` / `optsdk.gameyw.netease.com /initbox_android_h55.html` / `nos.gameyw.netease.com json.ul` / `g0.gsf…/feature/query.json`+`dm0.webview_whitelist.json`；443 369 + 80 320 + 27042 frida 186；TLS3.3×44+3.1×23 |

- 路径记录：初版按以太14B解析全红（IP 2.2.10.0伪像）；查global header network=113=LINUX_SLL改16B重解即绿；tshark本机缺失改stdlib struct等价替代，已记。
- 差量对照语义：dwrg3的mpay+appdump+h55.drpf即支付/埋点/远端三分流最小闭环；T4大包的unisdk.update + protocol/release + nos.gameyw ul + g0.gsf feature即版本/协议/资源三通道，与cloud.json h55/update/gsf三URL同构。
- `formal_remote_pcap.txt`为本节SNI/Host/dport/流全量；过滤条件`dport!=5555`。

## 4 SSL支付：continuing-anyway + order链（F2 hook可直接挂）

- continuing-anyway（libclient curl内嵌3处，非游戏自写pinning）：
  - `error importing CA certificate blob, continuing anyway`
  - `error setting certificate verify locations, continuing anyway:`
  - `SSL certificate verify result: %s (%ld), continuing anyway.`
  - 另`SSL_CTX_set_verify* / load_verify_locations`全套OpenSSL原语，无`pinning/Pinning`命中 → 系统CA即通，Charles/中间人无需bypass，pcap明文Host可直接对照
  - dex侧TLS为系统conscrypt `OpenSSLEvpCipherAES/OpenSSLCipher`（logcat 3365堆栈），与so内curl双栈并存
- order链三层对齐（F2 `formal_dyn_hook_login.js` node0已覆盖）：
  - Java `com.netease.neox.PluginUniSDK`：loginDone(399)/logoutDone(442)/orderCheckDone(446)/orderConsumeDone(450)/onShareFinished(498)/startupDone(518)/onSuccess(530)/onFailure(534)/OnWebViewNativeCall(538)/ntCheckOrder(636)/ntShare(772)/ntConsume(788)/ntOpenWebView(1020)；native LoginDone91/LogoutDone93/OrderCheckDone97/OrderConsumeDone99/ShareFinished153/StartupDone165/VerifyFailure169/VerifySuccess171/WebViewNativeCall173
  - JNI：`Java_com_netease_neox_PluginUniSDK_NativeOnOrderCheckDone/…OrderConsumeDone/…VerifySuccess/…VerifyFailure/…WebViewNativeCall`
  - native：`neox::unisdk::Plugin::ntCheckOrder/ntConsume/ntVerifyOrder` + `neox::unisdk::Plugin::newShareInfo` + `callable getOnOrderCheckDone/setOnOrderCheckDone(OrderInfo)`（拼写Cosume沿用）
  - dex支付面：classes5 `https://epay.163.com/h5Main/cloud-music/auth` + OrderCheck 2/orderCheck 1；classes.dex OrderCheck5/orderCheck2 + `g0.gsf…/dm0.webview_whitelist.json`；classes9/6 `analytics.mpay.netease.com` + `sigma-androidsdk-epay.proxima.nie.netease.com`；classes6 `https://analytics.mpay.netease.com`
  - logcat（UTF16已解，7487行）：`UniSDK Mgr tmpChannel=ngshare/pharos` + `Channel.initialize:73` + `MpayApp.attachBaseContext` + `MpayDebug 2.14.1` + `project=h55 … send to drpf Activation/LoginUI`，与pcap h55.drpf + analytics.mpay互证
- `formal_remote_urls.txt`为dex 12包URL全集（76+62+…去重，interesting按netease/h55/gsf/update/cdn过滤）。

## 5 下游放行

- 挂F2 hook抓远端补齐：`frida -H 127.0.0.1:27042 -l formal_dyn_hook_login.js -n com.netease.dwrg`，过滤`orderCheck/orderConsume/Verify/WebView + Cloud/download/thd`即得wpk远端URL与订单链同包对照
- opcode新表（F3遗留）可用本报告cloud/script远端位定向dump `script1.wpk+cloud script`，不再碰Lib stdlib
- 回滚：删本节4产物即回滚；原包哈希复核一致

当前:正式版远端分包+SSL支付 / 结果:work_dwrg/F4_Remote_Verify.md+formal_remote_*3件 / 下一步:F2 hook挂正式包抓wpk远端URL+订单链同包对照
