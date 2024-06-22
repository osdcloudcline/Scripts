Start-Transcript -Path "C:\Logs\Powershell\Standard\$env:computername-StandardProgrammingInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "VS Code"
$app2 = "AI Cursor Editor"


Write-Host "Installing Programming Applications..." -ForegroundColor Green
Write-Host
Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan

winget install --id Microsoft.VisualStudioCode --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Verbose "Processing: $app2..." -Verbose
Write-Host
Write-Host "Installing $app2..." -ForegroundColor Cyan

winget install --id CursorAI,Inc.Cursor --exact --accept-source-agreements  --accept-source-agreements --force
