Start-Transcript -Path "C:\Logs\Powershell\Corporate\$env:computername-CorporateMediaInstall.log"

$app1 = "VLC Media Player"
$app2 = "MediaInfo"


# Media-related software
Write-Host "Installing Media Applications..." -ForegroundColor Green
Write-Host
Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan

winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force
