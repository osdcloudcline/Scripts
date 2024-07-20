Start-Transcript -Path "C:\Logs\Powershell\Advanced\Media\$env:computername-HandbrakeInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Handbrake"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
