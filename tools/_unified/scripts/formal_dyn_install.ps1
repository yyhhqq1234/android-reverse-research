# formal_dyn_install.ps1 — 2GB原包安装超时与houdini预案 (只读不重签)
param([string]$Serial="127.0.0.1:16384", [int]$TimeoutSec=900)
$ADB="D:\APK-Reverse\tools\platform-tools\adb.exe"
$APK="D:\APK-Reverse\projects\DWRG\第五人格（官服正式版）.apk"
$LOG="D:\APK-Reverse\projects\DWRG\work_dwrg\formal_dyn_\formal_dyn_install.log"
function Log($m){ $m | Tee-Object -FilePath $LOG -Append | Write-Host $m }
Log ("== install "+(Get-Date -Format "yyyy-MM-dd HH:mm:ss")+" serial="+$Serial)
Get-Item $APK | Select-Object Length,LastWriteTime | Out-String | ForEach-Object { Log $_ }
& $ADB -s $Serial shell "df -h /data | tail -1; getprop persist.sys.nativebridge; ls -l /system/lib64/libhoudini.so" | ForEach-Object { Log $_ }
# A计划: streaming (2GB默认流式, 超时放宽)
Log "[A] streaming install -g (TimeoutSec=$TimeoutSec)"
$job=Start-Job -ScriptBlock { param($a,$s,$p) & $a -s $s install -g --streaming $p } -ArgumentList $ADB,$Serial,$APK
if(-not (Wait-Job $job -Timeout $TimeoutSec)){ Stop-Job $job; Log "[A] TIMEOUT>${TimeoutSec}s -> 转B计划"; }
else { Receive-Job $job | ForEach-Object { Log $_ } }
& $ADB -s $Serial shell "pm path com.netease.dwrg" | ForEach-Object { Log ("[check] "+$_) }
# B计划: 非流式 (push后pm安装, 断点可续查)
Log "[B] 如A未出pm path, 手动执行: adb -s $Serial install -g --no-streaming `$APK (超时同上)"
Log "[C] houdini兜底: 若INSTALL_FAILED_NO_MATCHING_ABIS -> 核查 abilist含arm64-v8a + nativebridge=1; 仍失败则转arm64真机, 本x86_64通道判红"
Log "[D] 共存: com.identityv.shrek156 与 com.netease.dwrg 包名不同; 安装前 am force-stop com.identityv.shrek156 防抢占"
Log ("== end "+(Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
