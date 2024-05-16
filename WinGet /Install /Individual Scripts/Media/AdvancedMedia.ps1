Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedMediaInstall.log"

$app1 = "VLC Media Player"
$app2 = "MediaInfo"
$app3 = "MKVToolNix"
$app4 = "Apple iTunes"
$app5 = "MakeMKV"
$app6 = "Handbrake"
$app7 = "PowerISO"
$app8 = "Audacity and FFMPEG"
$app9 = "Logitech MyHarmony"


# Media-related software
Write-Host "Installing Media Applications..." -ForegroundColor Green
Write-Host
Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan

winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force


Write-Verbose "Processing: $app2..." -Verbose
Write-Host
Write-Host "Installing $app2..." -ForegroundColor Cyan

winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Processing: $app3..." -Verbose
Write-Host
Write-Host "Installing $app3..." -ForegroundColor Cyan

winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Processing: $app4..." -Verbose
Write-Host
Write-Host "Installing $app4..." -ForegroundColor Cyan

winget install --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Processing: $app5..." -Verbose
Write-Host
Write-Host "Installing $app5..." -ForegroundColor Cyan

winget install --id GuinpinSoft.MakeMKV --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Processing: $app6..." -Verbose
Write-Host
Write-Host "Installing $app6..." -ForegroundColor Cyan

winget install --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Processing: $app7..." -Verbose
Write-Host
Write-Host "Installing $app7..." -ForegroundColor Cyan

winget install --id PowerSoftware.PowerISO --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Processing: $app8..." -Verbose
Write-Host
Write-Host "Installing $app8..." -ForegroundColor Cyan

winget install --id Audacity.Audacity --exact --accept-source-agreements  --accept-source-agreements --force
choco install audacity-ffmpeg -y

Write-Verbose "Processing: $app9..." -Verbose
Write-Host
Write-Host "Installing $app9..." -ForegroundColor Cyan

winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
