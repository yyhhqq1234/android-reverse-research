# formal_dyn_frida.ps1 — frida x86_64 27042起服 (不依赖ls-devices枚举)
param([string]$Serial="127.0.0.1:16384")
$ADB="D:\APK-Reverse\tools\platform-tools\adb.exe"
$SRV="D:\APK-Reverse\projects\DWRG\work_dwrg\frida-server-x86_64"
$SCRIPTS="$env:LOCALAPPDATA\Packages\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\LocalCache\local-packages\Python312\Scripts"
$LOG="D:\APK-Reverse\projects\DWRG\work_dwrg\formal_dyn_\formal_dyn_frida.log"
function Log($m){ $m | Tee-Object -FilePath $LOG -Append | Write-Host $m }
Log ("== frida "+(Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
& "$SCRIPTS\frida.exe" --version | ForEach-Object { Log ("PC frida="+$_) }
Get-Item $SRV | Select-Object Name,Length | Out-String | ForEach-Object { Log $_ }
& $ADB -s $Serial shell "ps -A | grep frida; ss -tlnp | grep 27042; echo --no-server-expected--" | ForEach-Object { Log $_ }
Log "[1] push: adb -s $Serial push $SRV /data/local/tmp/fs64; chmod 755"
& $ADB -s $Serial push $SRV /data/local/tmp/fs64 2>&1 | ForEach-Object { Log $_ }
& $ADB -s $Serial shell "chmod 755 /data/local/tmp/fs64; ls -l /data/local/tmp/fs64" | ForEach-Object { Log $_ }
Log "[2] start: adb shell /data/local/tmp/fs64 -l 0.0.0.0:27042 (后台, 另开窗常驻; 本脚本只做预演不常驻)"
Log "[3] forward+探活: adb -s $Serial forward tcp:27042 tcp:27042; Scripts\frida-ps.exe -H 127.0.0.1:27042 (10s超时判活, 不跑ls-devices全枚举)"
& $ADB -s $Serial forward tcp:27042 tcp:27042 2>&1 | ForEach-Object { Log $_ }
Log "[4] 版本门: server 17.18.0 == PC 17.18.0 方可hook; 不一致重传对应版本"
Log ("== end "+(Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
