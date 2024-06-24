Write-Host "Beginning System Configuration..." -ForegroundColor Cyan


Write-Verbose "Step 1 - PowerShell Modules..." -Verbose

$PSModules = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PS%20Modules%20/Install.ps1")
Invoke-Expression $($PSModules.Content)

Write-Verbose "Step 2 - Merging Registry Entries..." -Verbose

$ClientRegistry = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ClientRegistry.ps1")
Invoke-Expression $($ClientRegistry.Content)

Write-Verbose "Step 3 - Mandatory OS Pre-Requirements..." -Verbose

$OS = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/SYSTEM/OS-Mandated%20Software/SYSTEM.ps1")
Invoke-Expression $($OS.Content)

Write-Verbose "Step 4 - Software Installation..." -Verbose

$WinGetSoftware = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
Invoke-Expression $($WingetSoftware.Content)
