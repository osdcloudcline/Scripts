Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedCloudBackup-NextCloudClientInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Nextcloud Desktop Client"

Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Nextcloud.NextcloudDesktop --exact --accept-source-agreements  --accept-source-agreements --force
