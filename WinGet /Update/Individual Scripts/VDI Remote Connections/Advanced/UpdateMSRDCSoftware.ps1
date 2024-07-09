$app1 = "Microsoft Remote Desktop Client"

Write-Host "Checking for and processing update: $app1..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.RemoteDesktopClient 
