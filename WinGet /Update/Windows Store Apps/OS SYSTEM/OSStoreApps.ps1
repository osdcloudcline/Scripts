$StoreApp1 = "Microsoft PC Manager"
$StoreApp2 = "Windows 365"

Write-Verbose "Updating $StoreApp1..." -Verbose
winget upgrade --id 9PM860492SZD --source msstore

Write-Verbose "Updating $StoreApp2..." -Verbose
winget upgrade --id 9N1F85V9T8BN --source msstore
