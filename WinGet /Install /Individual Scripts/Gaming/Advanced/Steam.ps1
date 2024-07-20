Start-Transcript -Path "C:\Logs\Powershell\Advanced\Gaming\$env:computername-SteamInstall.log"

$Date = Get-Date

$app1 = "Steam"


Write-Host "Installed on: $Date"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Valve.Steam --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
