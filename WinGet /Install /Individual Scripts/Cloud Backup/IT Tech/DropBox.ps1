Start-Transcript -Path "C:\Logs\Powershell\IT Tech\Cloud Backup\$env:computername-DropBoxInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "DropBox"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Dropbox.Dropbox --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
