# Minimal-diff mod APK pipeline: zip surgery -> zipalign -> v2 sign -> install -> launch
$ROOT = 'D:\APK-Reverse\projects\SUBR'
$BT   = 'D:\APK-Reverse\tools\build-tools-win\android-14'
$ADB  = 'D:\APK-Reverse\tools\platform-tools\adb.exe'
$DEV  = '127.0.0.1:7555'

Write-Output '[1/5] zip surgery (only classes4.dex + libSUBRESP.so differ from original)'
python "$ROOT\esp_mod\make_mod_apk.py"
if ($LASTEXITCODE -ne 0) { exit 1 }

Write-Output '[2/5] zipalign'
& "$BT\zipalign.exe" -f 4 "$ROOT\SUBR_esp_surgery.apk" "$ROOT\SUBR_esp_aligned.apk"

Write-Output '[3/5] apksigner v2'
$pass = "android`nandroid`n"
$pass | java -jar "$BT\lib\apksigner.jar" sign --ks "$ROOT\tools\debug.keystore" --out "$ROOT\SUBR_esp.apk" "$ROOT\SUBR_esp_aligned.apk" 2>&1 | Select-Object -First 1
java -jar "$BT\lib\apksigner.jar" verify "$ROOT\SUBR_esp.apk" 2>&1 | Select-Object -First 2

Write-Output '[4/5] install'
& $ADB -s $DEV uninstall com.pro.game.FreeSurvivalUnknownBattle | Out-Null
& $ADB -s $DEV install "$ROOT\SUBR_esp.apk"

Write-Output '[5/5] launch'
& $ADB -s $DEV logcat -c
& $ADB -s $DEV shell monkey -p com.pro.game.FreeSurvivalUnknownBattle -c android.intent.category.LAUNCHER 1 | Out-Null
Write-Output 'DONE'
