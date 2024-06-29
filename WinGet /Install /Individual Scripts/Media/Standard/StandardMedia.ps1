Start-Transcript -Path "C:\Logs\Powershell\Standard\$env:computername-StandardMediaInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "VLC Media Player"
$app2 = "MediaInfo"
$app3 = "MKVToolNix"
$app4 = "Apple iTunes"
$app5 = "Kodi"

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

winget install --id XBMCFoundation.Kodi --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript