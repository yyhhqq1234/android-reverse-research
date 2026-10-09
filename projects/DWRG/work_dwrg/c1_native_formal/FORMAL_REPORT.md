# DWRG C1正式版移植（arm64 175M + PluginUniSDK native + script1/NXCloud/thd-preload）
- 纠偏: `c1_native/` 是测试版靶（`com.identityv.shrek156` / 32位 `libclient 30806200B` / `script.npk 7373248B n1730`），按封存令不可用于BC；本目录为正式版移植（`com.netease.dwrg` / `2026.0828.1653` / arm64 `libclient 175206232B`），只读未动（SHA `0683dd40…71a5c` 沿用T2）
- 约束: 只钩native（`Java.perform/use/enumerate` 全0），不拿真机（`127.0.0.1:16384` + `27042`，`fs-x64` 沿用；arm64转译若缺则换arm64模拟器占位，不碰真机）
- 依據: `formal_libclient_strings 253134串`（`ntCheckOrder/ntConsume/ntVerifyOrder/newOrderInfo` 各3-4 + `PluginUniSDK 56` + `NXCloudFileLoader 6` + `WpkCore 61` + `murmur 9` + `thd 193/preload 500`）；F3（`Lib.npk 589 SimpleCryptEx+zlib全通/NXS3零命中/引导n4全NXS3新变体112B/3.11头a70d0d0a/NXFN murmur闭环`）；F4（`script1.wpk 201326608 + cloud pkgname=script + thd/preload/pkgmapping/cloud.json + continuing-anyway + order三层对齐`）

## 产物（只写 `work_dwrg/c1_native_formal/`）
- `formal_file.js` 7935B：libc路径（`script1/0.wpk/Lib.npk/script.npk/res.npk/.wpk/thd/preload.json/pkgmapping/cloud.json/neox3.xml/packages`）+ `WpkCore/open-idx/ReadFileHeader/ReCreateIdx/DumpIdx/GetTotalSpace/NXNpk/NXCloud/cloud_engine_init/murmur/setopencodehook/check_pkg_encoded_hash/uncompress/inflate/snappy/NXS` 导出 + FKPW/SKPW窗口出口（`*dstLen` 大包嗅探 `>100KB或NXS3/pyc3.11/NXPK/NXFN` 即 `/data/local/tmp/dwrg_dump_formal/file_*.bin`）
- `formal_net.js` 5668B：收发+SSL双源 + `Mercury/Nub/Channel/Filter/CloudDownloader/collect_sub_tasks/check_pkg/download/preload/thd/wpk/cache`；`ORDER/PAY/TOKEN/SCRIPT(wpk/script/thd/preload/cloud)` 关键字才打屏落盘
- `formal_order.js` 7820B：JNI `PluginUniSDK_NativeOnOrderCheckDone/OrderConsumeDone/VerifySuccess/VerifyFailure/WebViewNativeCall/LoginDone`（`findExportByName+Interceptor` 读a2..a5+bt）+ native `ntCheckOrder/ntConsume/ntVerifyOrder/newOrderInfo×2/ntVerifyMobile/getOn-setOnOrderCheckDone/CONSUMEORDER_URL` + script1链（uncompress/NXS/NXCloud/Wpk/murmur/opencodehook/thd/preload/check_hash 80上限，`SCRIPT1-OUT>100KB` 双通道 `send({ev:script1},buf)` + 设备落盘）
- `formal_run.py` 2992B：`com.netease.dwrg` 名挂 + Java桥硬拒绝 + `mkdir dwrg_dump_formal` + `out_formal/` 二进制直写 + pull提示
- 本文件

## 门禁（本轮实测）
- `node --check formal_file/net/order` 全 `0`；`py_compile` `0`；`Java.perform|use|enumerate` `Count=0`（仅 `Java_com_*` native符号参数，属native非桥）
- `adb devices` `127.0.0.1:16384 device` 在线；正式包未启动为预期（需进主门后再跑，见下）；原包+raw未动
- FKPW/SKPW口径：正式 `SimpleCrypt 0命中`（符号裁剪），按F3公式（`psz<0x81全片 else off=(rsz>>1)%(psz-0x80) len=((c<<1)&..)%0x60+0x20 key=(rsz^c)&0xFF`）作FKPW首窗/SKPW中段窗假设，C1不硬解只在解密出口dump，以 `NXS3/pyc3.11/zlib` 判据收口；NXS3新变体（112B非128/`771vs932倒挂`）同样只dump不定key

## 跑法（正式进主门后）
```powershell
python "D:\APK-Reverse\projects\DWRG\work_dwrg\c1_native_formal\formal_run.py" --js formal_file.js --seconds 180
python "D:\APK-Reverse\projects\DWRG\work_dwrg\c1_native_formal\formal_run.py" --js formal_net.js --seconds 180
python "D:\APK-Reverse\projects\DWRG\work_dwrg\c1_native_formal\formal_run.py" --js formal_order.js --seconds 300
& "D:\APK-Reverse\tools\platform-tools\adb.exe" -s 127.0.0.1:16384 pull /data/local/tmp/dwrg_dump_formal "D:\APK-Reverse\projects\DWRG\work_dwrg\c1_native_formal\out_formal"
```
- 判据：`script1_*_NXS3/pyc3.11_*.bin` 即script1解密体；`ORDER-JNI/NATIVE ntCheckOrder/ntConsume/ntVerifyOrder/newOrderInfo` 即订单点；`SCRIPT-CHAIN thd/preload/check_pkg/Wpk/Cloud` 即远端链；`continuing-anyway` 链路系统CA即通无需bypass
- 回滚：删 `c1_native_formal/out_formal/` + `adb shell rm -rf /data/local/tmp/dwrg_dump_formal`；detach即净

## 路径记录
- 测试版 `NXEncodeHook/stored+Hook` 分叉不可复用 → 正式改 `WpkCore+murmur+opencodehook+check_hash` 等价
- `opcode27/py27dis/denpk2 mapping` 三件作废 → 正式只认 `3.11+NXS3+NXFN`，不做静态还原
- `SKPW 0命中/FKPW仅.fkpW` → 记为符号裁剪，改出口dump等价，不谎称已定位key地址
- `arm64 houdini` 若在x86_64 MuMu缺转译 → 换arm64模拟器（占位），不拿真机；当前16384 `abilist` 含arm64，沿用27042通道

当前:DWGR C1正式版 / 结果:projects/DWRG/work_dwrg/c1_native_formal/formal_file.js+formal_net.js+formal_order.js+formal_run.py / 下一步:BC凭此收口（B1完成后进主门跑三条）
