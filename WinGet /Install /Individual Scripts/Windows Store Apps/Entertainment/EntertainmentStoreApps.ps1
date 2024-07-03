$StoreApp1 = "Netflix"
$StoreApp2 = "ESPN"
$StoreApp3 = "Amazon Prime Video"
$StoreApp4 = "Disney +"
$StoreApp5 = "Hulu"
$StoreApp6 = "Apple TV +"
$StoreApp7 = "Paramount +"
$StoreApp8 = "Peacock TV"

Write-Verbose "Installing $StoreApp1..." -Verbose
winget install --id 9WZDNCRFJ3TJ --source msstore

Write-Verbose "Installing $StoreApp2..." -Verbose
winget install --id 9NWD3S85MTFB --source msstore

Write-Verbose "Installing $StoreApp3..." -Verbose
winget install --id 9P6RC76MSMMJ --source msstore

Write-Verbose "Installing $StoreApp4..." -Verbose
winget install --id 9NXQXXLFST89 --source msstore

Write-Verbose "Installing $StoreApp5..." -Verbose
winget install --id 9WZDNCRFJ3L1 --source msstore

Write-Verbose "Installing $StoreApp6..." -Verbose
winget install --id 9NM4T8B9JQZ1 --source msstore

Write-Verbose "Installing $StoreApp7..." -Verbose
winget install --id 9WZDNCRFJ0WK --source msstore

Write-Verbose "Installing $StoreApp7..." -Verbose
winget install --id 9PL67R4P9PG5 --source msstore
