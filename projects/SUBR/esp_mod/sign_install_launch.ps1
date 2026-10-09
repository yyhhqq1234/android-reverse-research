$pass = "android`nandroid`n"
& 'D:\APK-Reverse\tools\build-tools-win\android-14\zipalign.exe' -f 4 'D:\APK-Reverse\projects\SUBR\SUBR_esp_unsigned.apk' 'D:\APK-Reverse\projects\SUBR\SUBR_esp_aligned.apk'
$pass | java -jar 'D:\APK-Reverse\tools\build-tools-win\android-14\lib\apksigner.jar' sign --ks 'D:\APK-Reverse\projects\SUBR\tools\debug.keystore' --out 'D:\APK-Reverse\projects\SUBR\SUBR_esp.apk' 'D:\APK-Reverse\projects\SUBR\SUBR_esp_aligned.apk' 2>&1 | Select-Object -First 2
java -jar 'D:\APK-Reverse\tools\build-tools-win\android-14\lib\apksigner.jar' verify 'D:\APK-Reverse\projects\SUBR\SUBR_esp.apk' 2>&1 | Select-Object -First 3
Write-Output SIGN_DONE
$adb = 'D:\APK-Reverse\tools\platform-tools\adb.exe'
& $adb -s 127.0.0.1:7555 install -r 'D:\APK-Reverse\projects\SUBR\SUBR_esp.apk'
& $adb -s 127.0.0.1:7555 logcat -c
& $adb -s 127.0.0.1:7555 shell monkey -p com.pro.game.FreeSurvivalUnknownBattle -c android.intent.category.LAUNCHER 1 | Select-Object -First 2
Write-Output LAUNCH_DONE
