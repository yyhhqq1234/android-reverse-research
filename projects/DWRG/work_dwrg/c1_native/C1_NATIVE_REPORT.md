# DWRG C1 native动态dump（libclient只钩native，不碰Java桥，不拿真机）
- 对象: `projects/DWRG/第五人格（测试版）.apk` 687172784B / `com.identityv.shrek156` / 1.5.6，只读未动（SHA256 `d1b3f51f…55dfb` 沿用T1）
- 约束: B静态smali改包由t1做；本任务C1只做native动态dump；全程不碰Java桥（无`Java.perform/use`），不拿真机（走MuMu `127.0.0.1:16384` + houdini + `frida-server-x86_64:27042`）
- 依据: `libclient.so` 30806200B armeabi-v7a（`raw/lib/armeabi-v7a`），`libclient_strings.txt` 91137串；`script.npk` 7373248B n1730（仅1明文`fb54f059 redirect.py` rotor，其余stored+`NXEncodeHook`加密）；`Documents/script.npk` 4719768B n212；`res.npk` 552M；远端`wpk script1 201M`（F4）；网络栈 `Mercury/Nub/Channel::send/EncryptionFilter/CompressionEncryptionFilter/snappy`；订单 `NativeOnOrderCheckDone/order_product/get_checked_orders`；文件栈 `NXNpk/NXFileLoader/NXDiscrete/NXPackageFileLoader/NXEncodeHook/FileLoader`

## 产物（只写 `work_dwrg/c1_native/`，零越界）
- `c1_file.js` 9303B：libc `open/open64/fopen/fread/read` 路径过滤（`script.npk/res.npk/script1/wpk/neox/Documents/script/filelist/nxnpk`）+ libclient `*crypt*/uncompress/inflate/snappy/npk/loader/encodehook/nxs/zlib/lz4/lzo/decompress*` 导出钩 + `NX*Loader` 创建日志 + 大块 magic 嗅探（NXPK/NXS/marshal-c/zlib）+ `/data/local/tmp/dwrg_dump/file_*.bin` 落盘
- `c1_net.js` 7431B：`send/sendto/sendmsg/recv/recvfrom/recvmsg` + `SSL_read/SSL_write`（libc+libclient双源）+ `Mercury/Nub/Channel/EncryptionFilter*` 导出；`order/pay/token/script1/wpk` 关键字才打屏，>4KB或命中关键字才落 `/data/local/tmp/dwrg_dump/net_*.bin`
- `c1_order.js` 8712B：JNI订单 `NativeOnOrderCheckDone/NativeOnLogin/NativeOnGMBridgeTokenOverdue`（`Module.findExportByName('libclient.so')` + `Interceptor`，读`a2..a5` cstr+backtrace）+ `order_*/get_checked_orders/remove_checked_orders/get_pay_channel/order_product*` 兜底 + 解密出口 `uncompress/inflate/snappy/RawUncompress/crypt/decrypt`（`dst,dstLenPtr,src` 约定，`ret==0 && *dstLen>1KB` 嗅探，`>100KB` 或 `NXS/marshal-c/NXPK` 即 `script1_<why>_<len>.bin` 双通道回传 `send({ev:'script1'},buf)` + 设备落盘）
- `c1_run.py` 3657B：`frida==17.18.0` 远端 `127.0.0.1:27042` attach（名挂，失败指引PID），硬门禁含`Java.perform/use`直接拒绝，`mkdir /data/local/tmp/dwrg_dump`，`send({ev:'script1'})` 二进制直写本地 `out/`，结束提示 `adb pull` 命令
- 本文件：`C1_NATIVE_REPORT.md`

## 活检门禁（2026-09-26实测）
- `adb devices -l`：`127.0.0.1:16384 device unicorn 2206122SC` 在线；`getprop release=12 sdk=32`；`houdini /system/lib/libhoudini.so` 存在；`/data/local/tmp/fs-x64` 存在（T4通道沿用）
- `pidof com.identityv.shrek156`：本轮空（游戏未在前台主门）。路径记录：未强拉进程，live-dump 需用户按T4链进主门（权限→继续→旧版确定→接受→公告确定→点击进入），再跑 runner；等价验证已做（见下）
- `node --check`：`c1_file/net/order` 全 `0`；`python -m py_compile c1_run.py` `0`；无Java桥门禁 `Select-String Java\.perform|use|enumerate` `Count=0`（仅允许 `Java_com_*` native符号名3处，属`Module.findExportByName`参数非桥）

## 跑法（进主门后三条，互斥跑避免刷屏）
```powershell
# 1) 文件加解密（含NPK/script.npk/script1路径）
python "D:\APK-Reverse\projects\DWRG\work_dwrg\c1_native\c1_run.py" --js c1_file.js --seconds 180
# 2) 网络+订单包（先跑，触发登录/订单/加载script1远端时抓）
python "D:\APK-Reverse\projects\DWRG\work_dwrg\c1_native\c1_run.py" --js c1_net.js --seconds 180
# 3) 订单JNI + script1解密体（重点：触发订单检查/加载script1时出 script1_*.bin）
python "D:\APK-Reverse\projects\DWRG\work_dwrg\c1_native\c1_run.py" --js c1_order.js --seconds 300
& "D:\APK-Reverse\tools\platform-tools\adb.exe" -s 127.0.0.1:16384 pull /data/local/tmp/dwrg_dump "D:\APK-Reverse\projects\DWRG\work_dwrg\c1_native\out"
```
- 判据：`script1_*.bin` 命中 `NXS?/marshal-c(0x63)/zlib(78 01/9c/da)/NXPK(4B 50 58 4E)` 即解密体；`net_*_ORDER/PAY/TOKEN/SCRIPT1_*.bin` 即订单/远端证据；`ORDER-JNI ENTER NativeOnOrderCheckDone a2..` 即订单点
- 回滚：删 `work_dwrg/c1_native/out/` + `adb shell rm -rf /data/local/tmp/dwrg_dump`；原包/raw/jadx未动；frida detach即净（不写盘、不重签）

## 路径记录
- `frida-server-x86看不到houdini转译进程`（T4结论）→ 改走 `x86_64:27042` 等价（本任务runner默认远端名挂即此通道）
- `denpk2旧RSA/27表不套正式版` → C1不做静态还原，只做解密出口dump，避开opcode洗牌
- `pidof空` → 不伪造live结果，交付脚本+门禁+判据，下游（B改包联调/正式版PluginUniSDK差分）可直接复用三件套
- `c1_file.js node-check Missing catch` → 已补 `catch(err)` 复检全绿

## DoD
- [x] 只钩native（`node --check` 全绿 + 无Java桥 `Count=0` + `py_compile 0`）
- [x] 覆盖文件加解密（libc路径+libclient crypt/loader）/网络（收发+SSL+Mercury/Nub/Filter）/订单（JNI+order导出）/script1解密体（大包嗅探双落盘）
- [x] 不拿真机（`16384` 模拟器门禁已验，`fs-x64` 通道沿用）
- [x] 原包只读，产物只在 `work_dwrg/c1_native/`，失败路径已记录

当前:DWGR C1 native / 结果:projects/DWRG/work_dwrg/c1_native/c1_file.js+c1_net.js+c1_order.js+c1_run.py / 下一步:进主门跑三条取script1_*.bin
