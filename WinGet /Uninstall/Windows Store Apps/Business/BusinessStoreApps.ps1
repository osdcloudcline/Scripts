$StoreApp1 = "Microsoft Office 365"
$StoreApp2 = "Company Portal"


Write-Verbose "Uninstalling $StoreApp1..." -Verbose
winget uninstall --id 9WZDNCRD29V9 --source msstore

Write-Verbose "Uninstalling $StoreApp2..." -Verbose
winget uninstall --id 9WZDNCRFJ3PZ --source msstore
