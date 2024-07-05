$app1 = "WinSCP"

Write-Host "Processing updates: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id WinSCP.WinSCP
