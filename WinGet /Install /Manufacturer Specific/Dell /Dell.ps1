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

$VMModule1 = "ESXI Windows Image Builder"

$SYSModule1 = "Package Management"
$SYSModule2 = "Chocolatey"

Write-Host "Installing PowerShell Modules...." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Host "Installing $SYSGroup1 Modules..." -ForegroundColor Cyan
Write-Verbose "Installing: $SYSModule1...Module No: 1 of 2" -Verbose
Install-Module -Name PackageManagement -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name PackageManagement -Force
Write-Verbose "Installing: $SYSModule2...Module No: 2 of 2" -Verbose
Install-Module -Name Choco -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Choco -Force

Write-Host "Installing $OSDGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $OSDModule1...Module No: 1 of 1" -Verbose
Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

Write-Host "Installing $OSDGroup2 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $OSDModule2...Module No: 1 of 2" -Verbose
Install-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDBuilder -Force
Write-Verbose "Installing: $OSDModule3...Module No: 2 of 2" -Verbose
Install-Module -Name OSDSUS -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDSUS -Force

Write-Host "Installing $OSDGroup3 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $OSDModule4...Module No: 1 of 20" -Verbose
Install-Module -Name OSDCloudCLI -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDCloudCLI -Force
Write-Verbose "Installing: $OSDModule5...Module No: 2 of 20" -Verbose
Install-Module -Name OSDCloudGUI -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDCloudGUI -Force
Write-Verbose "Installing: $OSDModule6...Module No: 3 of 20" -Verbose
Install-Module -Name OSDCloudAzure -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDCloudAzure -Force

Write-Verbose "Installing: $CloudModule1...Module No: 4 of 20" -Verbose
Install-Module -Name Azure -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Azure -Force
Write-Verbose "Installing: $CloudModule2...Module No: 5 of 20" -Verbose
Install-Module -Name Az.Accounts -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Accounts -Force
Write-Verbose "Installing: $CloudModule3...Module No: 6 of 20" -Verbose
Install-Module -Name Azure.Storage -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Azure.Storage -Force
Write-Verbose "Installing: $CloudModule4...Module No: 7 of 20" -Verbose
Install-Module -Name Az.Resources -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Resources -Force

Write-Verbose "Installing: $CloudModule5...Module No: 8 of 20" -Verbose
Install-Module -Name Az.KeyVault -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.KeyVault -Force
Write-Verbose "Installing: $CloudModule6...Module No: 9 of 20" -Verbose
Install-Module -Name Az.Compute -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Compute -Force
Write-Verbose "Installing: $CloudModule7...Module No: 10 of 20" -Verbose
Install-Module -Name Az.Automation -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Automation -Force
Write-Verbose "Installing: $CloudModule8...Module No: 11 of 20" -Verbose
Install-Module -Name Az.Network -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Network -Force

Write-Verbose "Installing: $CloudModule9...Module No: 12 of 20" -Verbose
Install-Module -Name Az.ApiManagement -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.ApiManagement -Force
Write-Verbose "Installing: $CloudModule10...Module No: 13 of 20" -Verbose
Install-Module -Name Az.Advisor -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Advisor -Force
Write-Verbose "Installing: $CloudModule11...Module No: 14 of 20" -Verbose
Install-Module -Name Az.AnalysisServices -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.AnalysisServices -Force
Write-Verbose "Installing: $CloudModule12...Module No: 15 of 20" -Verbose
Install-Module -Name Az.Billing -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Billing -Force

Write-Verbose "Installing: $CloudModule13...Module No: 16 of 20" -Verbose
Install-Module -Name Az.ApplicationInsights -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.ApplicationInsights -Force
Write-Verbose "Installing: $CloudModule14...Module No: 17 of 20" -Verbose
Install-Module -Name Az.Cdn -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Cdn -Force
Write-Verbose "Installing: $CloudModule15...Module No: 18 of 20" -Verbose
Install-Module -Name Az.Batch -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Batch -Force
Write-Verbose "Installing: $CloudModule16...Module No: 19 of 20" -Verbose
Install-Module -Name Az.Monitor -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Monitor -Force
Write-Verbose "Installing: $CloudModule17...Module No: 20 of 20" -Verbose
Install-Module -Name PSCloudPC -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name PSCloudPC -Force

Write-Host "Installing $OSDGroup4 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $OSDModule7...Module No: 1 of 7" -Verbose
Install-Module -Name OSDUpdate -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDUpdate -Force
Write-Verbose "Installing: $OSDModule8...Module No: 2 of 7" -Verbose
Install-Module -Name AutopilotOOBE -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name AutopilotOOBE -Force
Write-Verbose "Installing: $OSDModule9...Module No: 3 of 7" -Verbose
Install-Module -Name OSDDrivers -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDDrivers -Force
Write-Verbose "Installing: $OSDModule10...Module No: 4 of 7" -Verbose
Install-Module -Name OSDeploy -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDeploy -Force
Write-Verbose "Installing: $OSDModule11...Module No: 5 of 7" -Verbose
Install-Module -Name OSDSoftware -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDSoftware -Force
Write-Verbose "Installing: $OSDModule12...Module No: 6 of 7" -Verbose
Install-Module -Name OSDCatalog -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDCatalog -Force
Write-Verbose "Installing: $OSDModule13...Module No: 7 of 7" -Verbose
Install-Module -Name OSDProgress -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDProgress -Force

Write-Host "Installing $OSDGroup5 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $MSGraphModule1...Module No: 1 of 9" -Verbose
Install-Module -Name Microsoft.Graph -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph -Force
Write-Verbose "Installing: $MSGraphModule2...Module No: 2 of 9" -Verbose
Install-Module -Name Microsoft.Graph.Intune -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Intune -Force
Write-Verbose "Installing: $MSGraphModule3...Module No: 3 of 9" -Verbose
Install-Module -Name Microsoft.Graph.Groups -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Groups -Force
Write-Verbose "Installing: $MSGraphModule4...Module No: 4 of 9" -Verbose
Install-Module -Name Microsoft.Graph.Users -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Users -Force
Write-Verbose "Installing: $MSGraphModule5...Module No: 5 of 9" -Verbose
Install-Module -Name Microsoft.Graph.Sites -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Sites -Force
Write-Verbose "Installing: $MSGraphModule6...Module No: 6 of 9" -Verbose
Install-Module -Name Microsoft.Graph.Mail -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Mail -Force
Write-Verbose "Installing: $MSGraphModule7...Module No: 7 of 9" -Verbose
Install-Module -Name Microsoft.Graph.Identity.DirectoryManagement -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Identity.DirectoryManagement -Force
Write-Verbose "Installing: $MSGraphModule8...Module No: 8 of 9" -Verbose
Install-Module -Name Microsoft.Graph.Teams -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Teams -Force
Write-Verbose "Installing: $MSGraphModule9...Module No: 9 of 9" -Verbose
Install-Module -Name Microsoft.Graph.DeviceManagement -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.DeviceManagement -Force


Write-Host "Installing $MfrGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $DellModule1...Module No: 1 of 14" -Verbose
Install-Module -Name DellBIOSProvider -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellBIOSProvider -Force
Write-Verbose "Installing: $DellModule2...Module No: 2 of 14" -Verbose
Install-Module -Name GetBIOS -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name GetBIOS -Force
Write-Verbose "Installing: $DellModule3...Module No: 3 of 14" -Verbose
Install-Module -Name Get-DellWarranty -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Get-DellWarranty -Force
Write-Verbose "Installing: $DellModule4...Module No: 4 of 14" -Verbose
Install-Module -Name Dell.PowerStore -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Dell.PowerStore -Force
Write-Verbose "Installing: $DellModule5...Module No: 5 of 14" -Verbose
Install-Module -Name DellOpenManage -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellOpenManage -Force
Write-Verbose "Installing: $DellModule6...Module No: 6 of 14" -Verbose
Install-Module -Name DellWarrantyServiceTag -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellWarrantyServiceTag -Force
Write-Verbose "Installing: $DellModule7...Module No: 7 of 14" -Verbose
Install-Module -Name Dell.Unity -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Dell.Unity -Force
Write-Verbose "Installing: $DellModule8...Module No: 8 of 14" -Verbose
Install-Module -Name Dell.PowerMax -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Dell.PowerMax -Force
Write-Verbose "Installing: $DellModule9...Module No: 9 of 14" -Verbose
Install-Module -Name DellBios -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellBios -Force
Write-Verbose "Installing: $DellModule10...Module No: 10 of 14" -Verbose
Install-Module -Name SetBIOS -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name SetBIOS -Force
Write-Verbose "Installing: $DellModule11...Module No: 11 of 14" -Verbose
Install-Module -Name DellWarranty -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name DellWarranty -Force
Write-Verbose "Installing: $DellModule12...Module No: 12 of 14" -Verbose
Install-Module -Name Get-DellSupportInfo -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Get-DellSupportInfo -Force
Write-Verbose "Installing: $DellModule13...Module No: 13 of 14" -Verbose
Install-Module -Name Get-DriversPackFromDell -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Get-DriversPackFromDell -Force
Write-Verbose "Installing: $DellModule14...Module No: 14 of 14" -Verbose
Install-Module -Name Dell-BIOSDriver -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Dell-BIOSDriver -Force

Write-Host "Installing $MfrGroup2 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $VMModule1...Module No: 1 of 1" -Verbose
Install-Module -Name WindowsImageBuilder -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name WindowsImageBuilder -Force

$DellSoftware1 = "Dell Command | Update for Windows Universal Application"
$DellSoftware2 = "Dell Command | Update"
$DellSoftware3 = "Dell Display Manager"
$DellSoftware4 = "Dell Command | Configure"
$DellSoftware5 = "Dell Digital Delivery"

$MfrSoftwareGroup1 = "Dell OEM"

Write-Host "Installing $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $DellSoftware1...OEM Software No: 1 of 5" -Verbose
winget install --id Dell.CommandUpdate.Universal --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $DellSoftware2...OEM Software No: 2 of 5" -Verbose
winget install --id Dell.CommandUpdate --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $DellSoftware3...OEM Software No: 3 of 5" -Verbose
winget install --id Dell.DisplayManager --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $DellSoftware4...OEM Software No: 4 of 5" -Verbose
winget install --id Dell.CommandConfigure --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $DellSoftware5...OEM Software No: 5 of 5" -Verbose
winget install --id 9PPRLNT023WC --accept-source-agreements  --accept-source-agreements --force
