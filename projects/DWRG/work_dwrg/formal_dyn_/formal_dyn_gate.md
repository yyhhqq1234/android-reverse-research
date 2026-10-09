## F1 正式版动态前置门禁 (2026-09-26实测)
- 通道: `adb 37.0.1` + `127.0.0.1:16384 device` (unicorn/2206122SC) 在线
- 系统: Android12 / SDK32 / 主ABI x86_64, abilist含arm64-v8a
- 存储: 原包2012889355B (~1919.6MiB); D盘可用130.45GB; /data可用123G -> 2GB安装余量充足
- 原包: `第五人格（官服正式版）.apk` 只读不重签; versionCode 262401653 / 2026.0828.1653 / com.netease.dwrg; 记录SHA256 `0683dd40...271a5c3` (formal_meta.json分块实测); 本轮仅stat未写原包
- SO/ABI: arm64-v8a-only 75个共265MB, libclient.so 175206232B -> 靠houdini转译
- houdini: `/system/lib/libhoudini.so` + `/system/lib64/libhoudini.so` 存在; `persist.sys.nativebridge=1` + `exec/exec64=1` -> 预案GREEN
- frida: PC 17.18.0 == server 17.18.0 (钉死一致); 档位x86_64 (`frida-server-x86_64` 115966424B); 27042空闲; 本机CLI全路径 `Scripts\frida.exe` (frida/frida-ls-devices不在PATH); `frida-ls-devices` 120s超时已记录,改等价路径push+起服+端口探活
- 共存: 测试版com.identityv.shrek156已装且运行(pid3365/17777), 正式版com.netease.dwrg未装 -> 可共存,动态期冻结测试版防抢占
- 2GB安装超时预案: 见 `formal_dyn_install.ps1` (双模streaming/no-streaming, 超时600-900s, -g -r, 失败转pm install / split push)
- frida起服预案: 见 `formal_dyn_frida.ps1` (push x86_64 -> chmod -> 后台起服27042 -> adb forward -> 端口探活, 不依赖ls-devices枚举)
- 产物边界: 本目录 `work_dwrg/formal_dyn_/` 唯一写区; 原包/旧解包目录未动
- 路径记录: aapt中文路径坑沿用ASCII复制等价 (T2已记); jadx/重签不碰原包; frida枚举超时改端口探活

## 下游放行
- T2 PluginUniSDK动态: 通道+houndini GREEN, 可装原包抓包+hook Channel.login/NativeOnLogin/getToken
- T3 Lib.npk Python3还原: 走Lib.npk+1952B引导, 不套测试版denpk2
- wpk远端补齐: 首包瘦身已确认 (304 assets, 顶部wpk各~400MB), 待动态期抓远端URL
