$StoreApp1 = "Microsoft Office 365"
$StoreApp2 = "Company Portal"


Write-Verbose "Updating $StoreApp1..." -Verbose
winget upgrade --id 9WZDNCRD29V9 --source msstore

Write-Verbose "Updating $StoreApp2..." -Verbose
winget upgrade --id 9WZDNCRFJ3PZ --source msstore
