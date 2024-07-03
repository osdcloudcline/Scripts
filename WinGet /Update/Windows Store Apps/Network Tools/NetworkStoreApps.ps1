$StoreApp1 = "Network Tools Desktop Edition"

Write-Verbose "Updating $StoreApp1..." -Verbose
winget upgrade --id 9NW6L8PLQMM4 --source msstore
