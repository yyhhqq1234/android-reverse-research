#Requires -Version 5.1
<#
.SYNOPSIS
  接法A一键脚本：把 ceserver 推入 MuMu12 测试机并拉起，PC 版 CE 连 127.0.0.1:52734 即用。
.DESCRIPTION
  流程：adb 在线检查(掉线自动试连 127.0.0.1:16384) → adb root 提权 → push → chmod → forward → 后台拉起 → 端口验活。
  提权走 adb root（实测 MuMu12 可用）；su -c 非交互下静默失败，已弃用。
  ceserver 二进制自备(x86_64 构建)：官方下载页 https://www.cheatengine.org/downloads.php
  或 magisk-cheat-engine 模块内提取 https://github.com/phudev95/magisk-cheat-engine
  MuMu 官方 CE 用法另见 https://mumu.163.com/help/20240807/40912_1171082.html
  注意：本文件必须带 UTF-8 BOM 保存，否则 WinPS 5.1 按 GBK 解码报幻影语法错。
.EXAMPLE
  powershell -ExecutionPolicy Bypass -File "D:\APK-Reverse\tools\connect-ceserver.ps1" -CeserverBin "D:\APK-Reverse\tools\installers\ceserver75\ceserver_x86_64"
#>
[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string]$CeserverBin,
  [string]$Adb = "D:\APK-Reverse\tools\platform-tools\adb.exe",
  [string]$RemotePath = "/data/local/tmp/ceserver",
  [int]$Port = 52734,
  [string]$EmuAddr = "127.0.0.1:16384"
)

$ErrorActionPreference = "Stop"

function Invoke-Adb($Arguments) {
  # adb 把成功信息也写 stderr（如 1 file pushed），函数内降为 Continue，只认 $LASTEXITCODE
  $prev = $ErrorActionPreference
  $ErrorActionPreference = "Continue"
  try {
    $out = & $Adb "-s" $EmuAddr @Arguments 2>&1 | Out-String
    $code = $LASTEXITCODE
  } finally {
    $ErrorActionPreference = $prev
  }
  return @{ Exit = $code; Out = $out }
}

# 0. 二进制存在检查
if (!(Test-Path $CeserverBin -PathType Leaf)) { throw "ceserver 二进制不存在: $CeserverBin" }

# 1. 设备在线检查，掉线则试连（connect 不吃 -s，用裸 adb）
$devList = & $Adb devices 2>&1 | Out-String
if ($devList -notmatch "$([regex]::Escape($EmuAddr))\s+device" -and $devList -notmatch "emulator-\d+\s+device") {
  Write-Host "[1/6] 设备不在线，试连 $EmuAddr ..."
  $c = & $Adb connect $EmuAddr 2>&1 | Out-String
  Write-Host $c
  $devList = & $Adb devices 2>&1 | Out-String
  if ($devList -notmatch "$([regex]::Escape($EmuAddr))\s+device") { throw "测试机仍不在线：先在 MuMu12 里开机并确认 adb 调试开" }
}
Write-Host "[1/6] 设备在线:"
Write-Host $devList

# 2. 提权：adb root（MuMu12 实测可用；su -c 非交互静默失败不用）
Invoke-Adb @("root") | Out-Null
$root = Invoke-Adb @("shell", "id")
if ($root.Out -notmatch "uid=0") { throw "提权失败：adb root 后仍非 uid=0。回显: $($root.Out)" }
Write-Host "[2/6] root 通过: $($root.Out.Trim())"

# 3. push + chmod（shell 已是 root，无需 su）
Write-Host "[3/6] push $CeserverBin -> $RemotePath ..."
$p = Invoke-Adb @("push", $CeserverBin, $RemotePath)
Write-Host $p.Out
if ($p.Exit -ne 0) { throw "push 失败" }
Invoke-Adb @("shell", "chmod 755 $RemotePath") | Out-Null
Write-Host "[3/6] push+chmod 完成"

# 4. 端口转发（幂等，先清后加）
Invoke-Adb @("forward", "--remove", "tcp:$Port") | Out-Null
$f = Invoke-Adb @("forward", "tcp:$Port", "tcp:$Port")
if ($f.Exit -ne 0) { throw "forward 失败: $($f.Out)" }
Write-Host "[4/6] forward tcp:$Port 完成"

# 5. 后台拉起（已在跑则先杀，避免双实例占口）
Invoke-Adb @("shell", "pkill -f $RemotePath") | Out-Null
Start-Sleep -Seconds 1
Invoke-Adb @("shell", "$RemotePath > /dev/null 2>&1 &") | Out-Null
Write-Host "[5/6] ceserver 已拉起"

# 6. 验活：最多等 10 秒连 127.0.0.1:Port
$ok = $false
for ($i = 0; $i -lt 10; $i++) {
  Start-Sleep -Seconds 1
  $tcp = New-Object System.Net.Sockets.TcpClient
  try {
    $iar = $tcp.BeginConnect("127.0.0.1", $Port, $null, $null)
    $connected = $iar.AsyncWaitHandle.WaitOne(1000)
    if ($connected) {
      $tcp.EndConnect($iar)
      $ok = $true
    }
    $tcp.Close()
  } catch {
    Write-Verbose "port not ready, retry"
  }
  if ($ok) { break }
}
if (!$ok) { throw "ceserver 验活失败：10 秒连不上 127.0.0.1:$Port。进 shell 手动跑一次看报错。" }
Write-Host "[6/6] 验活通过。PC 版 CE → 连接网络进程 → 主机 127.0.0.1 端口 $Port"
Write-Host "停服：adb -s $EmuAddr shell 'pkill -f $RemotePath'；撤转发：adb -s $EmuAddr forward --remove tcp:$Port"
