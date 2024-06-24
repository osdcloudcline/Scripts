Write-Host "Beginning System Configuration..." -ForegroundColor Cyan


Write-Verbose "Step 1 - PowerShell Modules..." -Verbose

$PSModules = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PS%20Modules%20/Install.ps1")
Invoke-Expression $($PSModules.Content)

Write-Verbose "Step 2 - Merging Registry Entries..." -Verbose
$ServerRegistry = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ServerRegistry.ps1")
Invoke-Expression $($ServerRegistry.Content)

