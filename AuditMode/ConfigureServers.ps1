Write-Host "Beginning System Configuration..." -ForegroundColor Cyan


Write-Verbose "Step 1 - Part 1 - PowerShell 5.1 Modules..." -Verbose 

$PS5Modules = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%205.1/Install.ps1")
Invoke-Expression $($PS5Modules.Content)

Write-Verbose "Step 1 - Part 2 - PowerShell 7.x Modules..." -Verbose 

$PS7Modules = Invoke-WebRequest("")
Invoke-Expression $($PS7Modules.Content)

Write-Verbose "Step 2 - Merging Registry Entries..." -Verbose
$ServerRegistry = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ServerRegistry.ps1")
Invoke-Expression $($ServerRegistry.Content)

Write-Verbose "Step 3 - Mandatory OS Pre-Requirements..." -Verbose

$OS = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/SYSTEM/OS-Mandated%20Software/SYSTEM.ps1")
Invoke-Expression $($OS.Content)

