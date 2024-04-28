$DellModule1 = "Dell BIOS Provider"
$DellModule2 = "Get BIOS"
$DellModule3 = "Dell Warranty"
$DellModule4 = "Dell Power Store"
$DellModule5 = "Dell Open Manage"
$DellModule6 = "Dell Warranty Service Tag"
$DellModule7 = "Dell Unity"
$DellModule8 = "Dell Power Max"
$DellModule9 = "Dell BIOS"
$DellModule10 = "Set BIOS"
$DellModule11 = "Dell Warranty"
$DellModule12 = "Dell Support Info"
$DellModule13 = "Get Dell Driver Packs"
$DellModule14 = "Dell BIOS Driver"

$SYSGroup1 = "Package Managers"

$OSDGroup1 = "OSD"
$OSDGroup2 = "OSD: Configuration"
$OSDGroup3 = "OSD: Cloud"
$OSDGroup4 = "OSD: Autopilot, Drivers, Software and Updates"

$MfrGroup1 = "Dell PowerShell"
$MfrGroup2 = "VMWare PowerShell"

$OSDModule1 = "OSD"
$OSDModule2 = "OSD Builder"
$OSDModule3 = "OSD SUS"
$OSDModule4 = "OSD CloudCLI"
$OSDModule5 = "OSD CloudGUI"
$OSDModule6 = "OSD CloudAzure"
$OSDModule7 = "OSD Update"
$OSDModule8 = "Autopilot OOBE"
$OSDModule9 = "OSD Drivers"
$OSDModule10 ="OSD Deploy"
$OSDModule11 = "OSD Software"
$OSDModule12 = "OSD Catalog"
$OSDModule13 = "OSD Progress"

$CloudModule1 = "Azure"
$CloudModule2 = "Azure Accounts"
$CloudModule3 = "Azure Storage"
$CloudModule4 = "Azure Resources"
$CloudModule5 = "Azure Key Vault"
$CloudModule6 = "Azure Compute"
$CloudModule7 = "Azure Automation"
$CloudModule8 = "Azure Network"
$CloudModule9 = "Azure Api Management"
$CloudModule10 = "Azure Advisor"
$CloudModule11 = "Azure Analysis Services"
$CloudModule12 = "Azure Billing"
$CloudModule13 = "Azure Application Insights"
$CloudModule14 = "Azure CDN"
$CloudModule15 = "Azure Batch"
$CloudModule16 = "Azure Monitor"
$CloudModule17 = "Windows 365 Cloud PC"

$MSGraphModule1 = "MS Graph"
$MSGraphModule2 = "MS Graph Intune"
$MSGraphModule3 = "MS Graph Groups"
$MSGraphModule4 = "MS Graph Users"
$MSGraphModule5 = "MS Graph Sites"
$MSGraphModule6 = "MS Graph Mail"
$MSGraphModule7 = "MS Graph Identity Directory Management"
$MSGraphModule8 = "MS Graph Teams"
$MSGraphModule9 = "MS Graph Device Management"

$VMModule1 = "ESXI Windows Image Builder"

$SYSModule1 = "Package Management"
$SYSModule2 = "Chocolatey"

Write-Host "Updating PowerShell Modules...." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Host "Updating $SYSGroup1 Modules..." -ForegroundColor Cyan
Write-Verbose "Updating: $SYSModule1...Module No: 1 of 2" -Verbose
Update-Module -Name PackageManagement -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name PackageManagement -Force
Write-Verbose "Updating: $SYSModule2...Module No: 2 of 2" -Verbose
Update-Module -Name Choco -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Choco -Force

Write-Host "Updating $OSDGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule1...Module No: 1 of 1" -Verbose
Update-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

Write-Host "Updating $OSDGroup2 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule2...Module No: 1 of 2" -Verbose
Update-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDBuilder -Force
Write-Verbose "Updating: $OSDModule3...Module No: 2 of 2" -Verbose
Update-Module -Name OSDSUS -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDSUS -Force

Write-Host "Updating $OSDGroup3 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule4...Module No: 1 of 20" -Verbose
Update-Module -Name OSDCloudCLI -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDCloudCLI -Force
Write-Verbose "Updating: $OSDModule5...Module No: 2 of 20" -Verbose
Update-Module -Name OSDCloudGUI -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDCloudGUI -Force
Write-Verbose "Updating: $OSDModule6...Module No: 3 of 20" -Verbose
Update-Module -Name OSDCloudAzure -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDCloudAzure -Force

Write-Verbose "Updating: $CloudModule1...Module No: 4 of 20" -Verbose
Update-Module -Name Azure -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Azure -Force
Write-Verbose "Updating: $CloudModule2...Module No: 5 of 20" -Verbose
Update-Module -Name Az.Accounts -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Accounts -Force
Write-Verbose "Updating: $CloudModule3...Module No: 6 of 20" -Verbose
Update-Module -Name Azure.Storage -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Azure.Storage -Force
Write-Verbose "Updating: $CloudModule4...Module No: 7 of 20" -Verbose
Update-Module -Name Az.Resources -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Resources -Force

Write-Verbose "Updating: $CloudModule5...Module No: 8 of 20" -Verbose
Update-Module -Name Az.KeyVault -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.KeyVault -Force
Write-Verbose "Updating: $CloudModule6...Module No: 9 of 20" -Verbose
Update-Module -Name Az.Compute -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Compute -Force
Write-Verbose "Updating: $CloudModule7...Module No: 10 of 20" -Verbose
Update-Module -Name Az.Automation -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Automation -Force
Write-Verbose "Updating: $CloudModule8...Module No: 11 of 20" -Verbose
Update-Module -Name Az.Network -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Network -Force

Write-Verbose "Updating: $CloudModule9...Module No: 12 of 20" -Verbose
Update-Module -Name Az.ApiManagement -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.ApiManagement -Force
Write-Verbose "Updating: $CloudModule10...Module No: 13 of 20" -Verbose
Update-Module -Name Az.Advisor -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Advisor -Force
Write-Verbose "Updating: $CloudModule11...Module No: 14 of 20" -Verbose
Update-Module -Name Az.AnalysisServices -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.AnalysisServices -Force
Write-Verbose "Updating: $CloudModule12...Module No: 15 of 20" -Verbose
Update-Module -Name Az.Billing -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Billing -Force

Write-Verbose "Updating: $CloudModule13...Module No: 16 of 20" -Verbose
Update-Module -Name Az.ApplicationInsights -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.ApplicationInsights -Force
Write-Verbose "Updating: $CloudModule14...Module No: 17 of 20" -Verbose
Update-Module -Name Az.Cdn -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Cdn -Force
Write-Verbose "Updating: $CloudModule15...Module No: 18 of 20" -Verbose
Update-Module -Name Az.Batch -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Batch -Force
Write-Verbose "Updating: $CloudModule16...Module No: 19 of 20" -Verbose
Update-Module -Name Az.Monitor -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Monitor -Force
Write-Verbose "Updating: $CloudModule17...Module No: 20 of 20" -Verbose
Update-Module -Name PSCloudPC -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name PSCloudPC -Force

Write-Host "Updating $OSDGroup4 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule7...Module No: 1 of 7" -Verbose
Update-Module -Name OSDUpdate -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDUpdate -Force
Write-Verbose "Updating: $OSDModule8...Module No: 2 of 7" -Verbose
Update-Module -Name AutopilotOOBE -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name AutopilotOOBE -Force
Write-Verbose "Updating: $OSDModule9...Module No: 3 of 7" -Verbose
Update-Module -Name OSDDrivers -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDDrivers -Force
Write-Verbose "Updating: $OSDModule10...Module No: 4 of 7" -Verbose
Update-Module -Name OSDeploy -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDeploy -Force
Write-Verbose "Updating: $OSDModule11...Module No: 5 of 7" -Verbose
Update-Module -Name OSDSoftware -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDSoftware -Force
Write-Verbose "Updating: $OSDModule12...Module No: 6 of 7" -Verbose
Update-Module -Name OSDCatalog -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDCatalog -Force
Write-Verbose "Updating: $OSDModule13...Module No: 7 of 7" -Verbose
Update-Module -Name OSDProgress -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDProgress -Force

Write-Host "Updating $MfrGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $DellModule1...Module No: 1 of 14" -Verbose
Update-Module -Name DellBIOSProvider -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellBIOSProvider -Force
Write-Verbose "Updating: $DellModule2...Module No: 2 of 14" -Verbose
Update-Module -Name GetBIOS -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name GetBIOS -Force
Write-Verbose "Updating: $DellModule3...Module No: 3 of 14" -Verbose
Update-Module -Name Get-DellWarranty -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Get-DellWarranty -Force
Write-Verbose "Updating: $DellModule4...Module No: 4 of 14" -Verbose
Update-Module -Name Dell.PowerStore -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Dell.PowerStore -Force
Write-Verbose "Updating: $DellModule5...Module No: 5 of 14" -Verbose
Update-Module -Name DellOpenManage -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellOpenManage -Force
Write-Verbose "Updating: $DellModule6...Module No: 6 of 14" -Verbose
Update-Module -Name DellWarrantyServiceTag -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellWarrantyServiceTag -Force
Write-Verbose "Updating: $DellModule7...Module No: 7 of 14" -Verbose
Update-Module -Name Dell.Unity -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Dell.Unity -Force
Write-Verbose "Updating: $DellModule8...Module No: 8 of 14" -Verbose
Update-Module -Name Dell.PowerMax -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Dell.PowerMax -Force
Write-Verbose "Updating: $DellModule9...Module No: 9 of 14" -Verbose
Update-Module -Name DellBios -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellBios -Force
Write-Verbose "Updating: $DellModule10...Module No: 10 of 14" -Verbose
Update-Module -Name SetBIOS -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name SetBIOS -Force
Write-Verbose "Updating: $DellModule11...Module No: 11 of 14" -Verbose
Update-Module -Name DellWarranty -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellWarranty -Force
Write-Verbose "Updating: $DellModule12...Module No: 12 of 14" -Verbose
Update-Module -Name Get-DellSupportInfo -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Get-DellSupportInfo -Force
Write-Verbose "Updating: $DellModule13...Module No: 13 of 14" -Verbose
Update-Module -Name Get-DriversPackFromDell -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Get-DriversPackFromDell -Force
Write-Verbose "Updating: $DellModule14...Module No: 14 of 14" -Verbose
Update-Module -Name Dell-BIOSDriver -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Dell-BIOSDriver -Force

Write-Host "Updating $MfrGroup2 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $VMModule1...Module No: 1 of 1" -Verbose
Update-Module -Name WindowsImageBuilder -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name WindowsImageBuilder -Force

$DellSoftware1 = "Dell Command | Update for Windows Universal Application"
$DellSoftware2 = "Dell Command | Update"
$DellSoftware3 = "Dell Display Manager"
$DellSoftware4 = "Dell Command | Configure"
$DellSoftware5 = "Dell Digital Delivery"

$MfrSoftwareGroup1 = "Dell OEM"

Write-Host "Updating $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $DellSoftware1...OEM Software No: 1 of 5" -Verbose
winget upgrade --id Dell.CommandUpdate.Universal --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Updating: $DellSoftware2...OEM Software No: 2 of 5" -Verbose
winget upgrade --id Dell.CommandUpdate --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Updating: $DellSoftware3...OEM Software No: 3 of 5" -Verbose
winget upgrade --id Dell.DisplayManager --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Updating: $DellSoftware4...OEM Software No: 4 of 5" -Verbose
winget upgrade --id Dell.CommandConfigure --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Updating: $DellSoftware5...OEM Software No: 4 of 5" -Verbose
winget upgrade --id 9PPRLNT023WC --accept-source-agreements  --accept-source-agreements --force
