$app1 = "VLC Media Player"
$app2 = "MediaInfo"
$app3 = "MKVToolNix"
$app4 = "Apple iTunes"
$app5 = "MakeMKV"
$app6 = "Handbrake"
$app7 = "PowerISO"
$app8 = "Audacity and FFMPEG"
$app9 = "Logitech MyHarmony"
$app10 = "GIMP"
$app11 = "Kodi"
$app12 = "HD Video Converter Factory Pro"

Write-Verbose "Updating Media-related software..." -Verbose
Write-Host
Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget upgrade --id VideoLAN.VLC

Write-Host "Processing: $app2..." -ForegroundColor Cyan
winget upgrade --id MediaArea.MediaInfo.GUI

Write-Host "Processing: $app3..." -ForegroundColor Cyan
winget upgrade --id MoritzBunkus.MKVToolNix
