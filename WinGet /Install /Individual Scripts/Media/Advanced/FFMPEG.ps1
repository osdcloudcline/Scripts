Start-Transcript -Path "C:\Logs\Powershell\Advanced\Media\$env:computername-FFMPEGInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "FFMPEG for Audacity"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
choco install audacity-ffmpeg -y

Stop-Transcript
