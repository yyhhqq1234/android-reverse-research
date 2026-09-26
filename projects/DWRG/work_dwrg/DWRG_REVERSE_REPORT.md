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

## 动态门禁/下一步
1. 用户开机MuMu/雷电并进主界面, 告知adb devices
2. install work_dwrg包? 不重签直接装原包抓包: adb install + logcat + frida hook Channel.login/NativeOnLogin/getToken
3. SO深挖: libclient JNI导出 + NeoX npk/script.npk资源
4. 回滚: 删work_dwrg即可, 原包+旧解包目录未动

## DoD
- [x] 原包哈希不变, 备份可回滚 (删work_dwrg)
- [x] 产物全在work_dwrg, 报告在本文件
- [x] 失败项已记录原因+等价路径
