Start-Transcript -Path "C:\Logs\Powershell\Advanced\Cloud Backup\$env:computername-OneDriveInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Microsoft OneDrive"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Microsoft.OneDrive --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
