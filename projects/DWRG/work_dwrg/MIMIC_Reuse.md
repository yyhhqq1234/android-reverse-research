# idv-mimic-direct 复用清单（2026-09-26）

源：https://github.com/PomeloHa77/idv-mimic-direct（已克隆 work_dwrg/idv-mimic-direct/）
版本对齐：2026.0828.1653 / versionCode 262401653 / 12 dex / arm64-only（同正式版）

## 直接复用
1. `tools/patch_dex.py` — 注入+签名回填管线：UFProxyApplication.attachBaseContext/onCreate
   注入 `z.a.a`；全树 `PackageInfo->signatures`→`SigFix`（12处：UniFixUtils 4 + hotfix l 4 +
   mpay/d 1 + mpay/p 1 + mpay/login/c$c 1 + Logger 1）；SigningInfo 链；ngplugin C.l/C.m/C.r 桥
2. `tools/repack.py` — 保序 zip 手术：只换 classes.dex（+可选 extra dex），其余条目字节不动，
   中央目录重建，v1/v2 丢弃后 apksigner 重签（B2 打包范式）
3. `src/z/a/b.java` — SigFix：官方 Signature[] DER 硬编码回填（B1 缺这块；B1 的 7 布尔只是显示层）
4. `src/native/nrt.c` — 进程内自读原理：`process_vm_readv(getpid())` 读自己免审计
   → B2 焊料递送思路：注入 dex 在进程内自写 native 心跳标志（免 root，不经 ptrace）
5. 注入点：`com/netease/ntunisdk/unifix_hotfix_library/proxyApplication/UFProxyApplication.smali`

## B1 漏检（对照）
- `classes7.dex`：`OpenUi, validateAppSignatureForPackage` 独立签名校验（12处之外第13条）
- `ZipPrint.getApkHash`（unifix/Tinker 同源）：zip 条目指纹，改包物理必变，伪造不了
- native：`libsec-lib.so`（Xposed/Substrate/root/双开/ptrace/maps/模拟器 goldfish/vbox）+
  `libenvsdk.so`（加固看不见内容）；`libmagtsdk/libpharos` 不是反外挂

## 红线（实验B闭环：干净机+新号+改包→仍封）
- 改包 = 包体指纹 + 自签证书，两条改不掉；检测在首次启动登录即触发，与用没用功能无关
- B1 已装机在线：主号（克士TC巴迪尔）有风险；后续对照实验只用一次性小号
- 止损：`adb uninstall com.netease.dwrg` 后装回官方包
- 唯一余地：root + 完全不改客户端 + 外部 `process_vm_readv`（无 TracerPid，不用 Frida/Xposed）
