$ErrorActionPreference = 'Stop'
$d = 'D:\安卓逆向\NECR\work_necr\tools\asmod\AssetStudioModGUI_net472_win32_64'
Add-Type -Path "$d\AssetStudio.dll"
Add-Type -Path "$d\AssetStudioUtility.dll"
$am = New-Object AssetStudio.AssetsManager
$am.LoadFilesAndFolders(@('D:\安卓逆向\NECR\work_necr\src\assets\bin\Data\level2'))
Write-Host "files:" $am.assetsFileList.Count
foreach ($f in $am.assetsFileList) {
    Write-Host " objects:" $f.Objects.Count "path:" $f.filePath
    foreach ($o in $f.Objects.Values) {
        $t = $o.GetType().Name
        if ($t -eq 'MonoScript') {
            try {
                if ($o.m_ClassName -eq 'GambleManager') {
                    Write-Host "SCRIPT GambleManager pathID=" $o.m_PathID
                }
            } catch {}
        }
    }
}
