Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedProgramming-VSEnterprise2022Install.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Microsoft Visual Studio Enterprise 2022"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id CursorAI,Inc.Cursor --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
