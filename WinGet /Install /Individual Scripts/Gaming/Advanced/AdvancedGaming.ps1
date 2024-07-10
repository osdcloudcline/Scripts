Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedGamingInstall.log"

$Date = Get-Date

$app1 = "Steam"


Write-Host "Installed on: $Date"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Valve.Steam --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
