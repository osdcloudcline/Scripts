Start-Transcript -Path "C:\Logs\Powershell\IT Tech\Media\$env:computername-MediaInfoInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "MediaInfo"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
