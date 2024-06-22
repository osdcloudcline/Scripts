Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedProgrammingInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "VS Code"
$app2 = "AI Cursor Editor"
$app3 = "Microsoft Visual Studio Enterprise 2022"

Write-Host "Installing Programming Applications..." -ForegroundColor Green
Write-Host
Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan



Write-Host
Write-Verbose "Processing: $app2..." -Verbose
Write-Host
Write-Host "Installing $app2..." -ForegroundColor Cyan




Write-Host
Write-Verbose "Processing: $app3..." -Verbose
Write-Host
Write-Host "Installing $app3..." -ForegroundColor Cyan
