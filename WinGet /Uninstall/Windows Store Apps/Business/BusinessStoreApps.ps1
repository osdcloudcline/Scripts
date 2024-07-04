$StoreApp1 = "Microsoft Office 365"
$StoreApp2 = "Company Portal"


Write-Verbose "Installing $StoreApp1..." -Verbose
winget install --id 9WZDNCRD29V9 --source msstore

Write-Verbose "Installing $StoreApp2..." -Verbose
winget install --id 9WZDNCRFJ3PZ --source msstore
