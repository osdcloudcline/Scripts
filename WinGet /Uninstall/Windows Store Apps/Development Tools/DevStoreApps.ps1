$StoreApp1 = "Python 3.12"

Write-Verbose "Installing $StoreApp1..." -Verbose
winget uninstall --id 9NCVDN91XZQP --source msstore
