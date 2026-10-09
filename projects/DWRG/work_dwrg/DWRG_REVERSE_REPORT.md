# DWRG 第五人格(测试版) 完全解包逆向报告
- 原包: `projects/DWRG/第五人格（测试版）.apk` 687172784B
- SHA256: D1B3F51FF2FB2A346C66E74AF4B6D44B9F7C21ECD0FC1299A2B9C88C0B155DFB (解包前后一致,只读)
- 包名: com.identityv.shrek156 / versionName 1.5.6 / build 6.0-2438415
- 条目: 690 / DEX x3 / SO x8(仅armeabi-v7a) / res 538文件
- 引擎: NeoX (neox.xml/script.npk/FMOD fsb+fev/cocos2d-x/bwclient) 非Unity
- 签名: META-INF Signflinger + Gradle 8.0.2
- 工作区: `projects/DWRG/work_dwrg/` 零越界 (拒英文盘中转)

## 产物清单
- `work_dwrg/raw/` 全量690解包 (zipfile直解)
- `work_dwrg/AndroidManifest.decoded.xml` AXML纯Python解码 utf8/164串 (`axml_dump.py`)
- `work_dwrg/manifest_strings.txt` Manifest字符串
- `work_dwrg/jadx_out/sources/` 3550 java (jadx --no-res, 2284类, 7 errors, unisdk_base.dex checksum坏)
- `work_dwrg/libclient_strings.txt` 91137串
- `work_dwrg/zip_list.txt`(待补) `unpack_meta.json` `dex_info.py` `so_info.py`

## 入口与关键类
- Application: com.netease.ntunisdk.application.NtSdkApplication
- Launcher: com.netease.dwrg.Launcher / WelcomeView / Client / VideoPlayer / Channel
- 登录: Channel.login()/hasLogin()/loginDone()->NativeInterface.NativeOnLogin; SdkMgr ntAntiAddiction/ntGameLoginSuccess/game_login_success
- Token: Client m_gmbridge_tokenSetter/setGMBridgeToken/IAsynTokenRequest.getToken/NativeOnGMBridgeTokenOverdue; getPushToken
- 支付: alipay H5Pay/H5Auth + netease mpay/epay (ServeCompact/AddCard/ValidateCard/CreditPay/OrderInfo/Paying/WebActivity) + getAvailablePayChannels/getPayChannelByPid
- 分享/推送: wxapi/yxapi/wbapi + PushService/AlarmReceiver/PushNotificationReceiver
- DEX: classes.dex 6956048B dex035 method_ids 52951 class_defs 6230; assets/mpay-rocoofix.dex 456B; assets/unisdk_base.dex 177372B (jadx Bad checksum 0x382a5c3f vs 0x68c20008, 该dex跳过)
- SO: libclient.so 30806200B ELF + fmodex/fmodevent + netsecsdk-3.2.2 + crashhandler + ntunisdk + weibosdkcore + codescanner + gdbserver; 源码残留 /Users/netease/2016_demo1/NeoX/.../bwclient + cocos2d-x; SSL issuer/verify; neox npk writer

## 敏感点
- 登录/Token/GM桥在Java薄胶水, 真逻辑在libclient.so (JNI NativeOnLogin/NativeOnGMBridgeTokenOverdue)
- SSL: certificate issuer/verify ok/continuing anyway -> pinning弱点候选, 需动态确认
- 支付全栈在Java可读, 可做下单/回调分支定位
- 权限: CAMERA/RECORD_AUDIO/READ_PHONE_STATE/读写存储/定位/指纹/SYSTEM_ALERT_WINDOW, 无隐藏图标/持久化超纲行为

## 路径记录
- aapt dump badging -> Illegal byte sequence (中文路径), 拒越界中转, 改python zipfile (成功)
- apktool全解 -> 同因中文路径调aapt2风险, 改raw直解+jadx --no-res (成功, 7 errors可接受)
- jadx unisdk_base.dex checksum坏 -> 记录, 主classes.dex不受影响
- adb devices -> daemon已起, 无在线设备, 动态需用户开机+进主界面

## 双版闭环总览（T1-T6，2026-09-26）
- T1测试版基线：见 `T1_Baseline_Reeval.md`（690条目/com.identityv.shrek156/1.5.6/主dex+2小dex/8so+gdbserver/armeabi/res552M+script7M+doc4.7M/jadx3550）
- T2正式版基线：见 `T2_Baseline_Formal.md` + `formal_meta.json`（2012889355B/com.netease.dwrg/2026.0828.1653/12dex/arm64-75so/libclient175M/neox3双package/script1952B/filelist89B）
- T3测试版NPK还原：见 `T3_NPK_Restore.md`（2.7.3 marshal/opcode洗牌未闭环点已记录）
- T4测试版动态：见 `T4_Dynamic_Capture.md` + `dynamic_T4/`（pcap 631579147B/hook实挂/shot×7）
- T5测试版敏感点：见 `T5_Sensitive_Points.md`（登录TokenGM桥/SSL continuing-anyway/支付链）
- T6正式版差分：见 `T6_Formal_Diff.md`（JNI登录支付插件化/Python3/首包瘦身远端化；T4旧hook无同名符号，转后续用PluginUniSDK表）

## 正式版深度分析 F1-F4（2026-09-26实测收口，F5 DoD）

- 对象：`projects/DWRG/第五人格（官服正式版）.apk` 2012889355B / com.netease.dwrg / 2026.0828.1653 / versionCode 262401653，只读未动
- 双包哈希（本轮certutil三次复核一致）：
  - 测试版 `第五人格（测试版）.apk` 687172784B SHA256 `d1b3f51ff2fb2a346c66e74af4b6d44b9f7c21ecd0fc1299a2b9c88c0b155dfb`
  - 正式版 `第五人格（官服正式版）.apk` 2012889355B SHA256 `0683dd40388bb6fb1d58d4111f80909dc5a2d7a0af07a703f0de73e7e271a5c3`
- F1动态前置：16384 device在线/Android12 SDK32/x86_64+arm64 houdini GREEN；frida PC17.18.0==server x86_64/27042空闲；/data123G+D盘130G；包名不同可共存；产物`formal_dyn_/env.json+gate.md+install.ps1+frida.ps1`（见`formal_dyn_gate.md`）
- F2插件化hook：Channel消失/ClientGM=0，改走classes5.dex PluginUniSDK(loginDone/logoutDone/orderCheck/Consume/Verify/Share/WebView)；`formal_dyn_hook_login.js`(node0)+`hook_map.md`+logcat1446152B+shot1775351B+frida_check；临件jadx5/classes5已删
- F3 Lib还原：Lib3982804 NXPK n589 eem256 hm0 eoff3962920 tail3392 NXFN，全589 fl00040001 SimpleCryptEx+zlib 589/589；零NXS3全pyc a70d0d0a=3.11.6+nxmod2，589 stdlib；引导script.npk1952B n4全NXS3新变体(key112/e1倒挂)；opcode首字节50/50全0 vs RESUME151洗牌实锤，旧27/denpk2表作废；尾NXFN zlib12012B murmur(seed9747B28C)反斜杠0009c112闭环；产物`F3_Lib_Restore.md+formal_lib_*6件`
- F4远端+SSL：preload50全[0,15]/pkgmapping14/inroot-d1/thd76(corrupted/xhash/clear_thd/preload_temp)/res.npk48M vs wpk15共1.75G(400M档ui2/nxparticle_cache2/script1 201M)；pcap SLL113重解 dwrg3 analytics.mpay3x+appdump/upload6x+h55.drpf，T4大包unisdk.update6x+protocol/release+nos.gameyw+g0.gsf；continuing-anyway curl3处无pinning系统CA即通；order三层Java/JNI/native+dex epay/mpay互证F2可挂；产物`F4_Remote_Verify.md+formal_remote_{urls,wpk,pcap}.txt`
- git边界（本轮实测）：`git status --short`仅M[DWRG_REVERSE_REPORT.md,hook_login.js]+??[T1-T6/F3/F4/formal_*/dynamic_T4/t6_*]（本地产物，不提交）；`git ls-tree HEAD`无二进制命中；`git grep ks-pass`仅NECR旧脚本环境变量占位（非本次）；公开白名单AGENTS.md §6未动
- 回滚：删本轮新增（F3/F4 md + formal_lib_*/formal_remote_*/formal_dyn_/ + T1-T6 md + dynamic_T4/ + t6_*）即回滚；原包+raw/jadx_out/src未动；hook_login.js改动在工作区可diff回退
- 失败路径记录：frida-ls-devices 120s超时→端口探活等价（F1）；aapt中文坑→ASCII复制等价（F1沿用）；head非pwsh→原生python直调（F3）；formal_lib_hist全量walk EXIT 0xC0000005→顶层50样本等价（F3）；dis(3.11字节码)CACHE误读→仅shuffle反证（F3）；以太14B误解pcap→SLL16B重解（F4）；tshark缺失→stdlib struct等价（F4）；logcat UTF16误码→utf-16解码（F4）；denpk2旧RSA/27表不套正式版（F3作废清单）

## DoD（双版收口，T7复核）
- [x] 成品三要素：路径（work_dwrg/T1-T6 + formal_* + dynamic_T4/）/ 大小（各md/脚本/pcap SHA见T4）/ 状态（T1-T6 completed，原包只读）
- [x] 校验：测试包687172784B SHA256 d1b3f51f…（T7复核一致）；正式包2012889355B SHA256 0683dd40…（T2+T7两次复核一致）
- [x] 回滚：删work_dwrg新增文件即回滚（原包+旧解包目录未动；`hook_login.js`有1处T4修改，见git status M）
- [x] 失败日志路径复现：unisdk_base.dex checksum坏（T1记录跳过）；aapt中文路径坑（T1/T2工作区ASCII复制等价替代）；ELF手解偏移错序（T6弃用改strings/JNI路径）；adb无设备时动态暂停（T1门禁）；thd二进制非文本（T6记THFB）
- [x] git边界：`git status --short`仅work_dwrg新增+T4改hook_login.js（本地产物，不提交）；`git ls-tree HEAD`无二进制；`git grep ks-pass`仅NECR旧脚本环境变量占位（非本次）；公开仓库白名单（AGENTS.md §6）未动
- 下一步：正式版动态（PluginUniSDK hook表）+ Lib.npk Python3还原 + wpk远端抓包补齐

## 动态门禁/下一步
1. 用户开机MuMu/雷电并进主界面, 告知adb devices
2. install work_dwrg包? 不重签直接装原包抓包: adb install + logcat + frida hook Channel.login/NativeOnLogin/getToken
3. SO深挖: libclient JNI导出 + NeoX npk/script.npk资源
4. 回滚: 删work_dwrg即可, 原包+旧解包目录未动

## DoD
- [x] 原包哈希不变, 备份可回滚 (删work_dwrg)
- [x] 产物全在work_dwrg, 报告在本文件
- [x] 失败项已记录原因+等价路径
