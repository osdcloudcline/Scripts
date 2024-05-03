Write-Host
Write-Host
Write-Host "Step 1 : Media Software" -ForegroundColor Cyan
Write-Host
Write-Host

$app1 = "VLC Media Player"
$app2 = "MediaInfo"
$app3 = "MakeMKV"
$app4 = "Handbrake"
$app5 = "PowerISO"
$app6 = "Audacity and FFMPEG"
$app7 = "Logitech MyHarmony"
$app8 = "MKVToolNix"
$app9 = "Apple iTunes"

Write-Verbose "Installing Media Software 1 of 9..." -Verbose
Write-Verbose "Installing $app1 on $env:computername..." -Verbose
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 2 of 9..." -Verbose
Write-Verbose "Installing $app2 on $env:computername..." -Verbose
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 3 of 9..." -Verbose
Write-Verbose "Installing $app3 on $env:computername..." -Verbose
winget install --id GuinpinSoft.MakeMKV --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 4 of 9..." -Verbose
Write-Verbose "Installing $app4 on $env:computername..." -Verbose
winget install --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 5 of 9..." -Verbose
Write-Verbose "Installing $app5 on $env:computername..." -Verbose
winget install --id PowerSoftware.PowerISO --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 6 of 9..." -Verbose
Write-Verbose "Installing $app6 on $env:computername..." -Verbose
winget install --id Audacity.Audacity --exact --accept-source-agreements  --accept-source-agreements --force
choco install audacity-ffmpeg -y

Write-Verbose "Installing Media Software 7 of 9..." -Verbose
Write-Verbose "Installing $app7 on $env:computername..." -Verbose
winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 8 of 9..." -Verbose
Write-Verbose "Installing $app8 on $env:computername..." -Verbose
winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing Media Software 9 of 9..." -Verbose
Write-Verbose "Installing $app9 on $env:computername..." -Verbose
winget install --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host
Write-Host
Write-Host "Step 2 : Web Browsing Software" -ForegroundColor Cyan
Write-Host
Write-Host

Write-Host
Write-Host
Write-Host "Step 3 : Sytem Utilities Software" -ForegroundColor Cyan
Write-Host
Write-Host


Write-Host
Write-Host
Write-Host "Step 4 : Programming Software" -ForegroundColor Cyan
Write-Host
Write-Host

Write-Host
Write-Host
Write-Host "Step 5 : Productivity Software" -ForegroundColor Cyan
Write-Host
Write-Host


Write-Host
Write-Host
Write-Host "Step 6 : Remote Desktop / IT Software" -ForegroundColor Cyan
Write-Host
Write-Host

Write-Host
Write-Host
Write-Host "Step 7 : Gaming Software" -ForegroundColor Cyan
Write-Host
Write-Host


Write-Host
Write-Host
Write-Host "Step 8 : Security Software" -ForegroundColor Cyan
Write-Host
Write-Host
