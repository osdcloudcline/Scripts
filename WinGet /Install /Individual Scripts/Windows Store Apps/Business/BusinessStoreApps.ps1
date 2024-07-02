$StoreApp1 = "Microsoft Office 365"

Write-Verbose "Installing $StoreApp1..." -Verbose
winget install --id 9WZDNCRD29V9 --source msstore
