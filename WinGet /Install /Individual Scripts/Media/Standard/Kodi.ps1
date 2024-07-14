Start-Transcript -Path "C:\Logs\Powershell\Standard\Media\$env:computername-KodiInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Kodi"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id XBMCFoundation.Kodi --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
