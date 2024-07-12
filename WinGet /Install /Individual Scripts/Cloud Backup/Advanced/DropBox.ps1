Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedCloudBackup-DropBoxInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "DropBox"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Dropbox.Dropbox --exact --accept-source-agreements  --accept-source-agreements --force
