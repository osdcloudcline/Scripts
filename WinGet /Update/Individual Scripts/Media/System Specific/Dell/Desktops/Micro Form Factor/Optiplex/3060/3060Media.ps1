$Media1 = "VLC Player"
$Media2 = "MediaInfo"

Write-Verbose "Updating $Media1 on $env:computername..." -Verbose
winget upgrade --id VideoLAN.VLC

Write-Verbose "Updating $Media2 on $env:computername..." -Verbose
winget upgrade --id MediaArea.MediaInfo.GUI
