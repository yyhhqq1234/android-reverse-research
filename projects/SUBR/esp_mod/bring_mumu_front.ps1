$sig = @'
using System;
using System.Runtime.InteropServices;
public class Win {
  [DllImport("user32.dll")] public static extern bool ShowWindow(IntPtr h, int n);
  [DllImport("user32.dll")] public static extern bool SetForegroundWindow(IntPtr h);
  [DllImport("user32.dll")] public static extern bool IsIconic(IntPtr h);
}
'@
Add-Type -TypeDefinition $sig

$procs = Get-Process MuMuPlayer, MuMuPlayerRemote, MuMuPlayerService -ErrorAction SilentlyContinue
if (-not $procs) { Write-Output 'MuMu not running'; exit 0 }
foreach ($p in $procs) {
    $h = $p.MainWindowHandle
    Write-Output ("{0} pid={1} hwnd={2} title='{3}'" -f $p.ProcessName, $p.Id, $h, $p.MainWindowTitle)
    if ($h -ne [IntPtr]::Zero) {
        if ([Win]::IsIconic($h)) { [Win]::ShowWindow($h, 9) | Out-Null }   # SW_RESTORE
        [Win]::ShowWindow($h, 5) | Out-Null                                 # SW_SHOW
        [Win]::SetForegroundWindow($h) | Out-Null
    }
}
Write-Output 'foreground attempted'
