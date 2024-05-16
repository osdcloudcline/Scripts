Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedFileTransferInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "FileZilla"
$app2 = "PuTTy"
$app3 = "WinSCP"


Write-Host "Installing File Transfer Applications..." -ForegroundColor Green
Write-Host
Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan

