Start-Transcript -Path "C:\Logs\Powershell\UninstallProgramming\$env:computername-VSCode.log"

$Date = Get-Date

Write-Host "Uninstalled on: $Date"

$app1 = "VS Code"

Write-Host
Write-Host "Uninstalling $app1..." -ForegroundColor Cyan
winget uninstall --id Microsoft.VisualStudioCode --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
