Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedCloudBackup-iCloudInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Apple iCloud"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Apple.iCloud --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
