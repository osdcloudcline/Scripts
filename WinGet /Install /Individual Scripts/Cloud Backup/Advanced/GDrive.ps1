Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedCloudBackup-GDriveInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Google Drive"


Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Google.GoogleDrive --exact --accept-source-agreements  --accept-source-agreements --force
