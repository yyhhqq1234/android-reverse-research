# B1 静态smali改包（classes5.dex PluginUniSDK L1-L7 回真）

- 对象（自有测试包，只读未动）：
  - 测试版 `projects/DWRG/第五人格（测试版）.apk` 687172784B SHA256 `d1b3f51ff2fb2a346c66e74af4b6d44b9f7c21ecd0fc1299a2b9c88c0b155dfb`（复核一致，已封存）
  - 正式版 `projects/DWRG/第五人格（官服正式版）.apk` 2012889355B SHA256 `0683dd40388bb6fb1d58d4111f80909dc5a2d7a0af07a703f0de73e7e271a5c3`（复核一致，只读）
  - 包名 `com.netease.dwrg` / versionCode 262401653 / versionName 2026.0828.1653 / targetSdk 30（aapt实测）
- 反编：`classes5.dex` 4631676B（formal 12dex之一）→ mini5.apk中转 → apktool 3.0.3 Baksmaling成功（manifest文本中转致ResXml解码失败，已记录，smali不受影响）→ `b_static/mini5_out/smali/com/netease/neox/PluginUniSDK.smali` 158836B / 6609行
- L1-L7 smali直改回真（全部 `const/4 v0,0x1; return v0`，去SdkMgr委托）：
  - L1 `isInit()Z` :3261 `iget-boolean m_is_init` → `const/4 v0,0x1`
  - L2 `hasLogin()Z` :3116 `SdkMgr.hasLogin` → 回真
  - L3 `hasFeature(Ljava/lang/String;)Z` :3101 → 回真
  - L4 `isBinded(Ljava/lang/String;)Z` :3168 → 回真
  - L5 `ntHasChannelConnected()Z` :3908 → 回真
  - L6 `ntHasNotification()Z` :3923 → 回真
  - L7 `ntHasPlatform(Ljava/lang/String;)Z` :3938 → 回真
- 回编：apktool b Smaling成功 → `b_static/mini5_out/build/apk/classes.dex` 4594884B；jadx复核 `PluginUniSDK_patched.java` L1-L7全部 `return true`
- 重打包：python zip替换 `classes5.dex`（deflated，保持compress=8）→ `dwrg_B1_unaligned.apk` 2012815228B SHA256 `302f9b2a28b8f098b7db55da45522f35ab80b8b34aa8c598b877f18865cf09fc`
- 对齐签名：`zipalign -f 4` → `dwrg_B1_aligned.apk` 2012818299B（`zipalign -c -p 4`通过，无输出即绿）；`apksigner sign --ks BREM/debug.jks (androiddebugkey, pass:android)` v1+v2 → `dwrg_B1_signed.apk` 2012815017B；`apksigner verify --verbose`：v1 true / v2 true / v3 true；`aapt dump badging`包名版本与原包一致
- 装机logcat验：
  - 设备 `127.0.0.1:16384` SDK32在线；已装 `com.netease.dwrg` 262401653与基线一致（dumpsys实测）
  - logcat现网基线：`ProtocolLauncher START` + `init_unisdk mode=1` + `OrbitSDK 3.10.0` + `UniSDK NeteaseDouyinLink`，确认PluginUniSDK/UniSDK链活着（见本轮取证）
  -  patched包未直接覆盖安装：同包名不同签名需先卸载原2GB包（`INSTALL_FAILED_UPDATE_INCOMPATIBLE`等价路径），本轮以`verify v1+v2 true + aapt包名版本一致 + dex回真jadx实锤`作装机就绪判据；卸载重装2GB待操作者确认后执行
- 测试版封存：原包哈希如上，raw/jadx_out/src未动；回滚=删`work_dwrg/b_static/`即回滚
- 产物（全在work_dwrg/b_static，只写工作区）：`classes5.dex/classes.dex/PluginUniSDK.java/PluginUniSDK_patched.java/mini5_out/smali/.../PluginUniSDK.smali(L1-L7已改)/mini5_out/build/apk/classes.dex/dwrg_B1_unaligned.apk/dwrg_B1_aligned.apk/dwrg_B1_signed.apk` + 本文件
- 路径记录：apktool.jar无独立baksmali Main → mini apk中转等价；manifest文本致ResXml失败 → smali已出不阻塞；apktool b资源段EOF → dex已出取build/apk/classes.dex等价；2GB直装签名冲突 → verify+aapt+dex三证等价，待卸载确认
- 下游：C native只挂libclient文件加解密网络订单点dump script1解密体，不碰Java桥；BC汇合用本包dex+dump对照+离线Hall判据

当前:正式版B1静态改包 / 结果:projects/DWRG/work_dwrg/b_static/dwrg_B1_signed.apk(2012815017B,v1+v2) / 下一步:BC汇合对照dump
