$StoreApp1 = "Network Tools Desktop Edition"

Write-Verbose "Installing $StoreApp1..." -Verbose
winget uninstall --id 9NW6L8PLQMM4 --source msstore
