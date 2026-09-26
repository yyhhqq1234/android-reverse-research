# 03 用法 — 安装/启动/常用命令

> 路径含中文处用双引号包裹；apktool/Il2CppDumper 失败时换英文暂存路径中转。

## 设备确认

```powershell
D:\APK-Reverse\tools\platform-tools\adb.exe devices
# 预期：List of devices attached（实测：daemon 拉起后空表，退出 0）
```

## 安装/拉取

```powershell
D:\APK-Reverse\tools\platform-tools\adb.exe install "D:\APK-Reverse\projects\NECR\work_necr\repack\necr_unshelled.apk"
D:\APK-Reverse\tools\platform-tools\adb.exe pull /sdcard/Download "D:\APK-Reverse\projects\NECR\work_necr\prod\"
# 未验证：需用户先开机并手动进主界面；先跑 devices 确认在线
```

## 反编译/回编（apktool 3.0.3，已验证版本）

```powershell
java -jar "D:\APK-Reverse\projects\NECR\work_necr\tools\apktool.jar" --version
# 预期：3.0.3（实测通过）
java -jar "D:\APK-Reverse\projects\NECR\work_necr\tools\apktool.jar" d "D:\APK-Reverse\projects\NECR\Necromancer.apk" -o D:\tmp\necr_src
java -jar "D:\APK-Reverse\projects\NECR\work_necr\tools\apktool.jar" b D:\tmp\necr_src -o D:\tmp\necr_repack.apk
# 注意：D:\tmp 为英文中转示例；中文原路径会调 aapt2 风险
```

## G1 校验门

```powershell
python "D:\APK-Reverse\projects\NECR\work_necr\tools\g1_gate.py" "D:\APK-Reverse\projects\NECR\work_necr\prod\"
# 用法：后跟文件或目录；只读不改输入；--help 不存在（传 --help 会 FileNotFound，属预期）
python -m py_compile "D:\APK-Reverse\projects\NECR\work_necr\tools\g1_gate.py"
# 预期：退出码 0（实测通过）
```

## 去壳组装/IAP（按 PATCHES 来）

```powershell
python "D:\APK-Reverse\projects\NECR\work_necr\tools\assemble_unshelled.py" build/dex/classes.dex
python "D:\APK-Reverse\projects\NECR\work_necr\tools\patch_iap.py"
# 未验证：assemble 硬编码 D:\安卓逆向，需先批量改 D:\APK-Reverse 才能跑；另需 NECR_KEYSTORE_PASS
```

## 签名对齐链

```powershell
.\build-tools-win\android-14\zipalign.exe -f 4 in.apk aligned.apk
.\build-tools-win\android-14\apksigner.bat sign --ks <keystore> --v1-signing-enabled true --v2-signing-enabled true aligned.apk
# 铁律：先 zipalign 再 apksigner；targetSdk 31 必须 v1+v2；v2 不覆盖 EOCD 注释
```

## frida（版本钉死 17.18.0）

```powershell
python -m frida --version
# 本机 pip：frida-tools 14.10.4 + frida-py 17.18.0；CLI 不在 PATH，用 python -m frida
# frida-server 必须用 tools/ 下 17.18.0（x86/x86_64/arm64），PC 与 server 必须一致
```
