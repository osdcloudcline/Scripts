Write-Host "Beginning System Configuration..." -ForegroundColor Cyan


Write-Verbose "Step 1 -  PowerShell Package Providers..." -Verbose

$PSProviders = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Package%20Providers/Install.ps1")
Invoke-Expression $($PSProviders.Content)

Write-Verbose "Step 2 -  PowerShell 5.1 Modules..." -Verbose

$PS5Modules = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%205.1/Install.ps1")
Invoke-Expression $($PS5Modules.Content)

Write-Verbose "Step 3 - PowerShell 7.x Modules..." -Verbose 

$PS7Modules = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%207.x/Install.ps1")
Invoke-Expression $($PS7Modules.Content)

Write-Verbose "Step 4 - Windows Server RSAT Tools..." -Verbose
$ServerRSAT = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/Server%20OS%20Roles%20/InstallServerRSAT.ps1")
Invoke-Expression $($ServerRSAT.Content)

Write-Verbose "Step 5 - Merging Registry Entries..." -Verbose
$ServerRegistry = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ServerRegistry.ps1")
Invoke-Expression $($ServerRegistry.Content)

Write-Verbose "Step 6 - Mandatory OS Pre-Requirements..." -Verbose

$OS = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/SYSTEM/OS-Mandated%20Software/SYSTEM.ps1")
Invoke-Expression $($OS.Content)

Write-Verbose "Step 7 - Installing minimal software configuration..." -Verbose

$ServerSoftware = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Server%20Systems/ServerSoftware.ps1")
Invoke-Expression $($ServerSoftware.Content)

Write-Verbose "Step 8 - Windows Server Roles and Fearures..." -Verbose

$ServerRoles = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/Server%20OS%20Roles%20/ServerRolesFeaturesMain.ps1")
Invoke-Expression $($ServerRoles.Content)


