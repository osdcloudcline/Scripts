$StoreApp1 = "Microsoft PC Manager"
$StoreApp2 = "Windows 365 Azure Virtual Desktop"

Write-Verbose "Installing $StoreApp1..." -Verbose
winget install --id 9PM860492SZD --source msstore

Write-Verbose "Installing $StoreApp2..." -Verbose
winget install --id 9N1F85V9T8BN --source msstore
