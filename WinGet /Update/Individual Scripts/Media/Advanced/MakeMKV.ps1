$app1 = "MakeMKV"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id GuinpinSoft.MakeMKV
