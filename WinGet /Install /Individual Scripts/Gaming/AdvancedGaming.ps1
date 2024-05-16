Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedGamingInstall.log"

$Date = Get-Date

$app1 = "Steam"


Write-Host "Installed on: $Date"

Write-Host "Installing Gaming Applications..." -ForegroundColor Green
Write-Host
Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
