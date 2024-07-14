Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedMedia-MediaInfoInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "MediaInfo"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
