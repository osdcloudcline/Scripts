Start-Transcript -Path "C:\Logs\Powershell\Management PC\File Transfer\$env:computername-WinSCPInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "WinSCP"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id WinSCP.WinSCP --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
