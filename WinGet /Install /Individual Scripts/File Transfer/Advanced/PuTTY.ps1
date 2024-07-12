Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedFileTransfer-PuTTYInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "PuTTy"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id PuTTY.PuTTY --exact --accept-source-agreements --architecture x64  --accept-source-agreements --force
