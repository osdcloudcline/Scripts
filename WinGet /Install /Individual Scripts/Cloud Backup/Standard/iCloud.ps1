Start-Transcript -Path "C:\Logs\Powershell\Standard\Cloud Backup\$env:computername-iCloudInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Apple iCloud"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Apple.iCloud --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript