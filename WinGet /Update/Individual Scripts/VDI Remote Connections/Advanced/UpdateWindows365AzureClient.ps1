$app1 = "Windows 365 Azure Virtual Desktop"

Write-Host "Checking for and processing update: $app1 ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget upgrade --id 9N1F85V9T8BN --source msstore
