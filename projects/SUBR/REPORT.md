# SUBR 完全逆向报告 — Free Survival Unknown Battle (MOD 嫁接包)

- 文件: `SUBR.apk` (348MB) → 包名 `com.pro.game.FreeSurvivalUnknownBattle`
- 应用名 SUBR, versionCode 55 / versionName 5.3.0, minSdk 22 / targetSdk 34 / compileSdk 34
- Unity 2020.3.42f1, IL2CPP, 单架构 arm64-v8a
- 结论: 原游戏 + LGL/Titanic 风格 mod menu 嫁接包, 游戏本体离线 bot 大逃杀, 无实时多人 netcode

## 1. 引擎与结构

- `lib/arm64-v8a/`: libil2cpp.so 36MB / libunity.so 18.7MB / libMyLibName.so 1MB(hook 引擎) / libapplovin-native-crash-reporter.so / libmain.so
- `assets/bin/Data/`: data.unity3d 0.5MB + datapack.unity3d 254MB(主场景包) + sharedassets*.resource
- `Managed/`: 仅 PDB, 无 DLL → IL2CPP 全 strip; `Metadata/global-metadata.dat` 6.7MB, version 27 → Il2CppDumper v6.7.46 成功 dump
- `ScriptingAssemblies.json`: 122 assemblies; 游戏逻辑 Assembly-CSharp + 第一方: A* pathfinding, Bakery, MeshBaker, EasyRoads3Dv3, AmplifyColor, TerrainToMesh, FinalIK(RootMotion), RCC 车辆物理, RMC 摩托
- 入口: `com.unity3d.player.UnityPlayerActivity` (MAIN/LAUNCHER), overlay 权限 SYSTEM_ALERT_WINDOW, 位置 COARSE, 读写存储, READ_PHONE_STATE

## 2. Java 层: mod menu 嫁接 (classes4.dex, 95KB)

- `com.android.support.Main`: `<clinit>` loadLibrary("MyLibName"); `Start()`→CrashHandler.init+CheckOverlayPermission(native); `StartWithoutPermission()`→ 直接建 Menu
- 注入点: `UnityPlayerActivity.smali:72` 在 `onCreate` 首行插入 `Main;->StartWithoutPermission` (smali patch 痕迹)
- `Menu.java` (1784 行, TAG="Mod_Menu"): WindowManager overlay 菜单; `GetFeatureList()/SettingsList()/Icon()/Init()/IsGameLibLoaded()` 全 native, 功能表由 so 下发
- `Launcher` service (exported=true): overlay 常驻 + 每秒 Thread() 保活; ADRTLogCatReader 引用 `com.aide.ui.goxome` (AIDE 改包工具指纹)
- `CrashHandler`: 全局 uncaught handler, 崩溃日志写 `/Documents/mod_menu_crash_<ts>.txt` (SDK30+) 明文含设备/版本/堆栈
- jadx 反编译 10558 类, 133 错误 (混淆/版本原因, 主体可用)

## 3. Native 层: libMyLibName.so (And64InlineHook 引擎 + 加密 payload)

- 导出仅 3 个: JNI_OnLoad / A64HookFunction / A64HookFunctionV; 其余 1292 导出全是静态链接 libc++ (ndk116)
- 无 Java_ 静态注册 → RegisterNatives 或纯 native hook 线程; 引用 libil2cpp.so
- 字符串 XOR/NEON-EOR 运行时解密 (LGL 典型): eor 密钥 0xB5/0xC9/0xB1/0x23/0xEF/0xA9/0xD1/0x4B…, 解密槽位基址 0x117000 段
- JNI_OnLoad: GetEnv(JNI 1.6) → sub_418c4 (解密+初始化) → sub_424b4 (pthread 相关); 全程 mprotect 改页属性, `XA64_HOOK` 标记
- 结论: 功能开关/hook 偏移全部加密, 静态只见引擎骨架; 真实 hook 目标需动态 (Frida hook A64HookFunction 打印 target/hook fn, 或 dump 解密后内存)

## 4. IL2CPP 游戏逻辑 (dump.cs 13.6MB, DummyDll 89)

核心战斗 (全局命名空间, MonoBehaviour):
- `HealthManager.TakeDamage(int)/TakeDamageData(loc,damage,name,weaponID,skipExHealth,bone,team)` ← mod 锁血/改伤 hook 第一候选
- `PlayerHealthManager`: Health(float,0x18) / helmet/vest / AidKitPower / KILLED / KillerName / Killer_WEPAON_ID / TakeZoneDamage
- `ShootBehaviour`: 武器槽位/后座 shotDecay/散布 shotErrorRate / 弹孔池 / SHOOT 开关
- `AimBehaviour / AimPoser / RedDotAim / crosshairController / Recoil / GunShotFlash`
- `InteractiveWeapon / WeaponData / WeaponItemSpawner / AutoWeaponSpawner / PickableItem/PickupManager / Invectory`
- `Bullet / Grenade / GrenadeThrow / MeleeFight / MeleeHit`
- AI: `ZombieHealth:MeleeHit` ← `ZombieEnemyAI / EnemyAIBoss / AIController:MeleeHit / MonsterEnemy / ZombieController`; 载具 AI RCC_* 全套; `Zone : MonoBehaviour` (毒圈) + `TakeZoneDamage`
- 局内外: `GameController / UIGameController / MainMenuV8 / KillFEED / Killer / PlayerScore / SavePlayerData / AirDrop / MapController / EmotesController`
- 网络: 零 NetworkBehaviour / 零 RPC → 离线 bot 对战; 唯一后端: dreamlo 排行榜 (公钥 665f56f08f40bb12c8643f0b + 私钥 XGAs6IoJEEC3… 硬编码, 可写榜) 与 S3 `freesurvival.s3.ap-south-1.amazonaws.com/Ads/MyAds.txt` (adManager 远程广告配置)
- 变现: AppLovin MAX + AdMob + IronSource/LevelPlay + UnityAds; 推送 OneSignal+FCM; 统计 Firebase/UnityAnalytics/RemoteConfig 3.1.3/Auth 2.0.0; 登录 Google Play Games

## 5. 敏感点清单

1. dreamlo 私钥硬编码 → 排行榜可任意读写 (stringliteral.json)
2. `com.android.support.Launcher` service exported=true → 外部可拉起 overlay menu
3. mod menu 请求 SYSTEM_ALERT_WINDOW 悬浮窗 + 常驻 service, 崩溃日志明文落盘
4. S3 明文 http(s) 拉取 MyAds.txt → 可劫持改广告/解锁逻辑 (adManager.ReqUnlockAd/CompleteMethod)
5. `TestMode` (PlayerHealthManager 0x100)、IngameDebugConsole 随包 → 调试面未裁
6. 无 SSL pin 痕迹 (OkHttp 标准栈, 可常规 MitM); 无 root/反调试痕迹 (Java/native 均未见)

## 6. 产物位置 (D:\APK-Reverse\projects\SUBR\)

- apktool_out/ (smali+res+manifest) | jadx_out/ (java) | il2cpp_dump/ (dump.cs/script.json/stringliteral.json/DummyDll89)
- hook_analysis.txt (so 反汇编片段) | core_classes.txt (37 核心类定义) | elf_exports.py/dis_hook.py/dump_core.py (复现脚本) | tools/il2cppdumper/

## 7. 下一步 (动态验证, 需设备/模拟器)

1. Frida hook A64HookFunction 打印 (target, hookFn) → 锁定 mod 改的具体 il2cpp 函数与偏移
2. Frida hook TakeDamageData/Health 字段 → 验证锁血/秒杀开关
3. MitM 跑一局 → 确认 dreamlo 上报时机与 MyAds.txt 拉取点
4. datapack.unity3d 解包 (AssetStudio) → 地图/场景/武器数值表
