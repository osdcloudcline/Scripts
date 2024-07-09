$Media1 = "VLC Player"
$Media2 = "MediaInfo"

Write-Verbose "Checking for and processing update: $Media1 on $env:computername..." -Verbose
winget upgrade --id VideoLAN.VLC

Write-Verbose "Checking for and processing update: $Media2 on $env:computername..." -Verbose
winget upgrade --id MediaArea.MediaInfo.GUI
