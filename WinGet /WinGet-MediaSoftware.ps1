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

Write-Host "Beginning Application Installation on $env:computername..." -ForegroundColor Green

# Media-related software
Write-Host "Installing Media Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app2 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app3 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id GuinpinSoft.MakeMKV --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app4 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app5 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id PowerSoftware.PowerISO --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app6 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id Audacity.Audacity --exact --accept-source-agreements  --accept-source-agreements --force
choco install audacity-ffmpeg -y

Write-Host "Installing: $app7 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app8 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app9 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force
