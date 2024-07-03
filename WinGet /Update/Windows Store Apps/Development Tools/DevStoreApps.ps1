$StoreApp1 = "Python 3.12"

Write-Verbose "Updating $StoreApp1..." -Verbose
winget upgrade --id 9NCVDN91XZQP --source msstore
