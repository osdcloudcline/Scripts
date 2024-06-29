Start-Transcript -Path "C:\Logs\Powershell\Management PC\$env:computername-ManagementPCFileTransferInstall.log"

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

choco install filezilla  -y

Write-Verbose "Processing: $app2..." -Verbose
Write-Host
Write-Host "Installing $app2..." -ForegroundColor Cyan

winget install --id PuTTY.PuTTY --exact --accept-source-agreements --architecture x64  --accept-source-agreements --force

Write-Verbose "Processing: $app3..." -Verbose
Write-Host
Write-Host "Installing $app3..." -ForegroundColor Cyan

winget install --id WinSCP.WinSCP --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
