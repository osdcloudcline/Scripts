$SYSGroup1 = "Package Managers"

$OSDGroup1 = "OSD"
$OSDGroup2 = "OSD: Configuration"
$OSDGroup3 = "OSD: Cloud"
$OSDGroup4 = "OSD: Autopilot, Drivers, Software and Updates"
$OSDGroup5 = "OSD: Microsoft Graph"

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
Update-Module -Name PackageManagement -Force 
Import-Module -Name PackageManagement -Force
Write-Verbose "Updating: $SYSModule2...Module No: 2 of 2" -Verbose
Update-Module -Name Choco -Force 
Import-Module -Name Choco -Force

Write-Host "Updating $OSDGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule1...Module No: 1 of 1" -Verbose
Update-Module -Name OSD -Force 
Import-Module -Name OSD -Force

Write-Host "Updating $OSDGroup2 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule2...Module No: 1 of 2" -Verbose
Update-Module -Name OSDBuilder -Force 
Import-Module -Name OSDBuilder -Force
Write-Verbose "Updating: $OSDModule3...Module No: 2 of 2" -Verbose
Update-Module -Name OSDSUS -Force 
Import-Module -Name OSDSUS -Force

Write-Host "Updating $OSDGroup3 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule4...Module No: 1 of 20" -Verbose
Update-Module -Name OSDCloudCLI -Force 
Import-Module -Name OSDCloudCLI -Force
Write-Verbose "Updating: $OSDModule5...Module No: 2 of 20" -Verbose
Update-Module -Name OSDCloudGUI -Force 
Import-Module -Name OSDCloudGUI -Force
Write-Verbose "Updating: $OSDModule6...Module No: 3 of 20" -Verbose
Update-Module -Name OSDCloudAzure -Force 
Import-Module -Name OSDCloudAzure -Force
Write-Verbose "Updating: $CloudModule1...Module No: 4 of 20" -Verbose
Update-Module -Name Azure -Force 
Import-Module -Name Azure -Force
Write-Verbose "Updating: $CloudModule2...Module No: 5 of 20" -Verbose
Update-Module -Name Az.Accounts -Force 
Import-Module -Name Az.Accounts -Force
Write-Verbose "Updating: $CloudModule3...Module No: 6 of 20" -Verbose
Update-Module -Name Azure.Storage -Force 
Import-Module -Name Azure.Storage -Force
Write-Verbose "Updating: $CloudModule4...Module No: 7 of 20" -Verbose
Update-Module -Name Az.Resources -Force 
Import-Module -Name Az.Resources -Force
Write-Verbose "Updating: $CloudModule5...Module No: 8 of 20" -Verbose
Update-Module -Name Az.KeyVault -Force 
Import-Module -Name Az.KeyVault -Force
Write-Verbose "Updating: $CloudModule6...Module No: 9 of 20" -Verbose
Update-Module -Name Az.Compute -Force 
Import-Module -Name Az.Compute -Force
Write-Verbose "Updating: $CloudModule7...Module No: 10 of 20" -Verbose
Update-Module -Name Az.Automation -Force 
Import-Module -Name Az.Automation -Force
Write-Verbose "Updating: $CloudModule8...Module No: 11 of 20" -Verbose
Update-Module -Name Az.Network -Force 
Import-Module -Name Az.Network -Force
Write-Verbose "Updating: $CloudModule9...Module No: 12 of 20" -Verbose
Update-Module -Name Az.ApiManagement -Force 
Import-Module -Name Az.ApiManagement -Force
Write-Verbose "Updating: $CloudModule10...Module No: 13 of 20" -Verbose
Update-Module -Name Az.Advisor -Force 
Import-Module -Name Az.Advisor -Force
Write-Verbose "Updating: $CloudModule11...Module No: 14 of 20" -Verbose
Update-Module -Name Az.AnalysisServices -Force 
Import-Module -Name Az.AnalysisServices -Force
Write-Verbose "Updating: $CloudModule12...Module No: 15 of 20" -Verbose
Update-Module -Name Az.Billing -Force 
Import-Module -Name Az.Billing -Force
Write-Verbose "Updating: $CloudModule13...Module No: 16 of 20" -Verbose
Update-Module -Name Az.ApplicationInsights -Force
Import-Module -Name Az.ApplicationInsights -Force
Write-Verbose "Updating: $CloudModule14...Module No: 17 of 20" -Verbose
Update-Module -Name Az.Cdn -Force
Import-Module -Name Az.Cdn -Force
Write-Verbose "Updating: $CloudModule15...Module No: 18 of 20" -Verbose
Update-Module -Name Az.Batch -Force
Import-Module -Name Az.Batch -Force
Write-Verbose "Updating: $CloudModule16...Module No: 19 of 20" -Verbose
Update-Module -Name Az.Monitor -Force
Import-Module -Name Az.Monitor -Force
Write-Verbose "Updating: $CloudModule17...Module No: 20 of 20" -Verbose
Update-Module -Name PSCloudPC -Force
Import-Module -Name PSCloudPC -Force




Write-Host "Updating $OSDGroup5 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $MSGraphModule1...Module No: 1 of 9" -Verbose
Update-Module -Name Microsoft.Graph -Force
Import-Module -Name Microsoft.Graph -Force
Write-Verbose "Updating: $MSGraphModule2...Module No: 2 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Intune -Force
Import-Module -Name Microsoft.Graph.Intune -Force
Write-Verbose "Updating: $MSGraphModule3...Module No: 3 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Groups -Force
Import-Module -Name Microsoft.Graph.Groups -Force
Write-Verbose "Updating: $MSGraphModule4...Module No: 4 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Users -Force
Import-Module -Name Microsoft.Graph.Users -Force
Write-Verbose "Updating: $MSGraphModule5...Module No: 5 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Sites -Force
Import-Module -Name Microsoft.Graph.Sites -Force
Write-Verbose "Updating: $MSGraphModule6...Module No: 6 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Mail -Force
Import-Module -Name Microsoft.Graph.Mail -Force
Write-Verbose "Updating: $MSGraphModule7...Module No: 7 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Identity.DirectoryManagement -Force 
Import-Module -Name Microsoft.Graph.Identity.DirectoryManagement -Force
Write-Verbose "Updating: $MSGraphModule8...Module No: 8 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Teams -Force
Import-Module -Name Microsoft.Graph.Teams -Force
Write-Verbose "Updating: $MSGraphModule9...Module No: 9 of 9" -Verbose
Update-Module -Name Microsoft.Graph.DeviceManagement -Force 
Import-Module -Name Microsoft.Graph.DeviceManagement -Force

Write-Host "Updating $OSDGroup4 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule7...Module No: 1 of 7" -Verbose
Update-Module -Name OSDUpdate -Force -
Import-Module -Name OSDUpdate -Force
Write-Verbose "Updating: $OSDModule8...Module No: 2 of 7" -Verbose
Update-Module -Name AutopilotOOBE -Force 
Import-Module -Name AutopilotOOBE -Force
Write-Verbose "Updating: $OSDModule9...Module No: 3 of 7" -Verbose
Update-Module -Name OSDDrivers -Force 
Import-Module -Name OSDDrivers -Force
Write-Verbose "Updating: $OSDModule10...Module No: 4 of 7" -Verbose
Update-Module -Name OSDeploy -Force 
Import-Module -Name OSDeploy -Force
Write-Verbose "Updating: $OSDModule11...Module No: 5 of 7" -Verbose
Update-Module -Name OSDSoftware -Force 
Import-Module -Name OSDSoftware -Force
Write-Verbose "Updating: $OSDModule12...Module No: 6 of 7" -Verbose
Update-Module -Name OSDCatalog -Force 
Import-Module -Name OSDCatalog -Force
Write-Verbose "Updating: $OSDModule13...Module No: 7 of 7" -Verbose
Update-Module -Name OSDProgress -Force 
Import-Module -Name OSDProgress -Force


Write-Host "Updating $MfrGroup2 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $VMModule1...Module No: 1 of 1" -Verbose
Update-Module -Name WindowsImageBuilder -Force 
Import-Module -Name WindowsImageBuilder -Force
