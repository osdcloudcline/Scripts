Start-Transcript -Path "C:\Logs\Powershell\Standard\$env:computername-StandardFileTransferInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "FileZilla"



Write-Host "Installing File Transfer Applications..." -ForegroundColor Green
Write-Host
Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan

choco install filezilla  -y

Stop-Transcript
