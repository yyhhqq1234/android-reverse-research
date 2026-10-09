@echo off
REM WZRY mod rebuild one-click (run in foreground, takes minutes for 2GB)
java -jar "D:\APK-Reverse\tools\_unified\jars\apktool.jar" b "D:\APK-Reverse\projects\WZRY\_unpacked\apktool" -o D:\tmp\wzry-mod.apk -f
if errorlevel 1 (echo BUILD-FAIL & pause & exit /b 1)
"D:\APK-Reverse\tools\build-tools-win\android-14\zipalign.exe" -f 4 D:\tmp\wzry-mod.apk D:\tmp\wzry-aligned.apk
"D:\APK-Reverse\tools\build-tools-win\android-14\apksigner.bat" sign --ks TARGET.jks --v1-signing-enabled true --v2-signing-enabled true D:\tmp\wzry-aligned.apk
"D:\APK-Reverse\tools\platform-tools\adb.exe" install -r D:\tmp\wzry-aligned.apk
echo DONE & pause
