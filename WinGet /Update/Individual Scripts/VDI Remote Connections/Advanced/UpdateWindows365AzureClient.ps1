$app1 = "Windows 365 Azure Virtual Desktop"

Write-Host "Processing updates: $app1 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget upgrade --id 9N1F85V9T8BN --source msstore
