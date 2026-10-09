# FULL pipeline: native build -> apktool -> ZIP SURGERY -> align -> sign -> install -> launch
$ROOT = 'D:\APK-Reverse\projects\SUBR'
$BT   = 'D:\APK-Reverse\tools\build-tools-win\android-14'
$ADB  = 'D:\APK-Reverse\tools\platform-tools\adb.exe'
$DEV  = '127.0.0.1:7555'

Write-Output '=== [1/6] native + apktool rebuild ==='
cmd /c "$ROOT\esp_mod\build-subr-mod.bat" 2>&1 | Select-Object -Last 4

Write-Output '=== [2/6] verify rebuilt classes4.dex ==='
python -c @"
import zipfile
d = zipfile.ZipFile(r'$ROOT\SUBR_esp_unsigned.apk').read('classes4.dex')
print('  HIDE label:', b'HIDE' in d)
print('  MINIMIZE label:', b'MINIMIZE' in d)
print('  Ascii wired:', b'Ascii' in d)
print('  astral pair gone:', b'\xed\xa0\xb5\xed\xb9\xb7' not in d)
"@

Write-Output '=== [3/6] zip surgery ==='
python "$ROOT\esp_mod\make_mod_apk.py"

Write-Output '=== [4/6] zipalign -p 4 ==='
& "$BT\zipalign.exe" -f -p 4 "$ROOT\SUBR_esp_surgery.apk" "$ROOT\SUBR_esp_aligned.apk"

Write-Output '=== [5/6] apksigner v2/v3 ==='
if (Test-Path "$ROOT\SUBR_esp.apk") { Remove-Item "$ROOT\SUBR_esp.apk" -Force }
java -jar "$BT\lib\apksigner.jar" sign --ks "$ROOT\tools\debug.keystore" `
     --ks-pass pass:android --key-pass pass:android `
     --out "$ROOT\SUBR_esp.apk" "$ROOT\SUBR_esp_aligned.apk" 2>&1 | Select-Object -First 2
java -jar "$BT\lib\apksigner.jar" verify "$ROOT\SUBR_esp.apk" 2>&1 | Select-String -Pattern 'Verifies|DOES NOT'

Write-Output '=== [6/6] install + launch ==='
& $ADB connect $DEV | Out-Null
& $ADB -s $DEV uninstall com.pro.game.FreeSurvivalUnknownBattle 2>&1 | Select-Object -Last 1
& $ADB -s $DEV install "$ROOT\SUBR_esp.apk" 2>&1 | Select-Object -Last 1
& $ADB -s $DEV logcat -c
& $ADB -s $DEV shell monkey -p com.pro.game.FreeSurvivalUnknownBattle -c android.intent.category.LAUNCHER 1 | Out-Null
Write-Output 'LAUNCHED'
