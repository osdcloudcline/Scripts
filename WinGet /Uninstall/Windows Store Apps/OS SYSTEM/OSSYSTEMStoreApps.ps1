$StoreApp1 = "Microsoft PC Manager"
$StoreApp2 = "Windows 365"

Write-Verbose "Uninstalling $StoreApp1..." -Verbose
winget uninstall --id 9PM860492SZD --source msstore

Write-Verbose "Uninstalling $StoreApp2..." -Verbose
winget uninstall --id 9N1F85V9T8BN --source msstore
