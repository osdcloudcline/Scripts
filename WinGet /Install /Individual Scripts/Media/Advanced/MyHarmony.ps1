Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedMedia-MyHarmonyInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Logitech MyHarmony"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
