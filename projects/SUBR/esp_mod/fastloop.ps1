# Fast loop for Java-only changes: recompile Ascii -> d8 -> surgery -> align -> sign -> install
$ROOT = 'D:\APK-Reverse\projects\SUBR'
$BT   = 'D:\APK-Reverse\tools\build-tools-win\android-14'
$JDK  = 'C:\Program Files\Microsoft\jdk-17.0.20.101-hotspot\bin'
$ADB  = 'D:\APK-Reverse\tools\platform-tools\adb.exe'
$DEV  = '127.0.0.1:7555'

Write-Output '[1/4] javac + d8 (Ascii helper only)'
Remove-Item "$ROOT\esp_mod\classes" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "$ROOT\esp_mod\dexout\classes.dex" -Force -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force -Path "$ROOT\esp_mod\classes" | Out-Null
& "$JDK\javac.exe" -encoding UTF-8 --release 8 -d "$ROOT\esp_mod\classes" "$ROOT\esp_mod\java\com\android\support\Ascii.java"
if ($LASTEXITCODE -ne 0) { exit 1 }
& "$BT\d8.bat" --min-api 22 --output "$ROOT\esp_mod\dexout" "$ROOT\esp_mod\classes\com\android\support\Ascii.class" 2>&1 | Select-Object -First 3
if (-not (Test-Path "$ROOT\esp_mod\dexout\classes.dex")) { exit 1 }

Write-Output '[2/4] surgery + align'
python "$ROOT\esp_mod\make_mod_apk.py"
& "$BT\zipalign.exe" -f -p 4 "$ROOT\SUBR_esp_surgery.apk" "$ROOT\SUBR_esp_aligned.apk"

Write-Output '[3/4] sign'
if (Test-Path "$ROOT\SUBR_esp.apk") { Remove-Item "$ROOT\SUBR_esp.apk" -Force }
if (-not $env:SUBR_KEYSTORE_PASS) { throw 'set SUBR_KEYSTORE_PASS before signing (local keystore pass; not stored in repo)' }
java -jar "$BT\lib\apksigner.jar" sign --ks "$ROOT\tools\debug.keystore" `
     --ks-pass "pass:$env:SUBR_KEYSTORE_PASS" --key-pass "pass:$env:SUBR_KEYSTORE_PASS" `
     --out "$ROOT\SUBR_esp.apk" "$ROOT\SUBR_esp_aligned.apk" 2>&1 | Select-Object -First 2
java -jar "$BT\lib\apksigner.jar" verify "$ROOT\SUBR_esp.apk" 2>&1 | Select-String -Pattern 'Verifies|DOES NOT'

Write-Output '[4/4] install + launch'
& $ADB connect $DEV | Out-Null
& $ADB -s $DEV uninstall com.pro.game.FreeSurvivalUnknownBattle 2>&1 | Select-Object -Last 1
& $ADB -s $DEV install "$ROOT\SUBR_esp.apk" 2>&1 | Select-Object -Last 1
& $ADB -s $DEV logcat -c
& $ADB -s $DEV shell monkey -p com.pro.game.FreeSurvivalUnknownBattle -c android.intent.category.LAUNCHER 1 | Out-Null
Write-Output 'LAUNCHED'
