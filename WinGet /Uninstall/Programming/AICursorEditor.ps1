Start-Transcript -Path "C:\Logs\Powershell\Uninstall\Programming\$env:computername-AICursorEditor.log"

$Date = Get-Date

Write-Host "Uninstalled on: $Date"


$app1 = "AI Cursor Editor"

Write-Host
Write-Host "Uninnstalling $app1..." -ForegroundColor Cyan
winget uninstall --id CursorAI,Inc.Cursor --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
