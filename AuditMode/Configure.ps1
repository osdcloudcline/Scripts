Write-Host "Beginning System Configuration..." -ForegroundColor Cyan


Write-Verbose "Step 1 - PowerShell Modules..." -Verbose

$PSModules = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PS%20Modules%20/Install.ps1")
Invoke-Expression $($PSModules.Content)

Write-Verbose "Step 2 - Merging Registry Entries..." -Verbose

$Registry = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Registry.ps1")
Invoke-Expression $($Registry.Content)

Write-Verbose "Step 3 - Mandatory OS Pre-Requirements..." -Verbose

$OS = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/SYSTEM.ps1")
Invoke-Expression $($OS.Content)
