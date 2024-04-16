$app1 = "VLC Media Player"
$app2 = "MediaInfo"
$app3 = "MakeMKV"
$app4 = "Handbrake"
$app5 = "PowerISO"
$app6 = "Audacity and FFMPEG"
$app7 = "Logitech MyHarmony"
$app8 = "VMWare Workstation Professional"
$app9 = "MKVToolNix"
$app10 = "Apple iTunes"

Write-Host "Beginning Application Upgrades on $env:computername..." -ForegroundColor Green

# Media-related software
Write-Host "Upgrading Media Applications on $env:computername..." -ForegroundColor Green

Write-Host "Upgrading: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app2 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app3 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id GuinpinSoft.MakeMKV --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app4 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget upgrade --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app5 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget upgrade --id PowerSoftware.PowerISO --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app6 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id Audacity.Audacity --exact --accept-source-agreements  --accept-source-agreements --force
choco upgrade audacity-ffmpeg -y

Write-Host "Upgrading: $app7 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget upgrade --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app8 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget upgrade --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app9 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget upgrade --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force
