$StoreApp1 = "Netflix"
$StoreApp2 = "ESPN"
$StoreApp3 = "Amazon Prime Video"
$StoreApp4 = "Disney +"
$StoreApp5 = "Hulu"
$StoreApp6 = "Apple TV +"
$StoreApp7 = "Paramount +"


Write-Verbose "Installing $StoreApp1..." -Verbose
winget install --id 9WZDNCRFJ3TJ --source msstore
