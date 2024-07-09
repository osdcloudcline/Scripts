$PSModsLogs = "C:\OSDCloud\DeploymentLogs\PSModules\Updates\Version5\$env:computername-PSModules.log"
Start-Transcript -Path $PSModsLogs
Get-Date 

############################
### PS Module Group Names ##
############################

$PMGroup = "Operating System Package Managers"

$OSDGroup1 = "OSD"
$OSDGroup2 = "OSD: Configuration"
$OSDGroup3 = "OSD: Cloud"
$OSDGroup4 = "OSD: Autopilot, Drivers, Software and Updates"
$OSDGroup5 = "OSD: Microsoft Graph"

$VMGroup1 = "VMWare ESXI"
$VMGroup2 = "VMWare Workstation Pro"
$VMGroup3 = "Microsoft Hyper-V"

$NetworkingGroup1 = "Ubiquiti"
$NetworkingGroup2 = "WiFi"

$DomainDeploymentGroup1 = "Microsoft Endpoint Configuration Manager" 

$PSUtilitiesGroup1 = "File Archiving"

$OEMManufacturer1 = "DELL"
$OEMManufacturer2 = "HP"
$OEMManufacturer3 = "Hewlett Packard"
$OEMManufacturer4 = "Lenovo"
$OEMManufacturer5 = "VMWare, Inc"

#################################
## PS Modules to be installed ###
#################################

$OSDModule1 = "OSD"
$OSDModule2 = "OSD Builder"
$OSDModule3 = "OSD SUS"
$OSDModule4 = "OSD CloudCLI"
$OSDModule5 = "OSD CloudGUI"
$OSDModule6 = "OSD CloudAzure"
$OSDModule7 = "OSD Update"
$OSDModule8 = "Autopilot OOBE"
$OSDModule9 = "OSD Drivers"
$OSDModule10 = "OSD Deploy"
$OSDModule11 = "OSD Software"
$OSDModule12 = "OSD Catalog"
$OSDModule13 = "OSD Progress"
$OSDModule14 = "PS Windows Update"

$MSGraphModule1 = "Microsoft Graph"
$MSGraphModule2 = "MS Graph Intune"
$MSGraphModule3 = "MS Graph Groups"
$MSGraphModule4 = "MS Graph Users"
$MSGraphModule5 = "MS Graph Sites"
$MSGraphModule6 = "MS Graph Mail"
$MSGraphModule7 = "MS Graph Identity Directory Management"
$MSGraphModule8 = "MS Graph Teams"
$MSGraphModule9 = "Microsoft Graph Device Management"

$CloudModule1 = "Azure"
$CloudModule2 = "Azure AD"
$CloudModule3 = "Azure Accounts"
$CloudModule4 = "Azure Storage"
$CloudModule5 = "Azure Resources"
$CloudModule6 = "Azure Key Vault"
$CloudModule7 = "Azure Compute"
$CloudModule8 = "Azure Automation"
$CloudModule9 = "Azure Network"
$CloudModule10 = "Azure Api Management"
$CloudModule11 = "Azure Advisor"
$CloudModule12 = "Azure Analysis Services"
$CloudModule13 = "Azure Billing"
$CloudModule14 = "Azure Application Insights"
$CloudModule15 = "Azure CDN"
$CloudModule16 = "Azure Batch"
$CloudModule17 = "Azure Monitor"


$ESXIModule1 = "ESXI Report Generator"
$ESXIModule2 = "ESXI Inventory Tools"
$ESXIModule3 = "VMWare ESXI Baseline Check"
$ESXIModule4 = "Windows Image Builder"
$ESXIModule5 = "vDocumentation"



$HyperVModule1 = "Lab Builder"
$HyperVModule2 = "Hyper-V Backup"
$HyperVModule3 = "Hyper-V Tools"
$HyperVModule4 = "Image Factory"
$HyperVModule5 = "Hyper-V Lab"
$HyperVModule6 = "Automated Lab"
$HyperVModule7 = "Hyper-V Administration"
$HyperVModule8 = "Windows Image Converter"

$NetworkingModule1 = "UNIFI"
$NetworkingModule2 = "WiFi Profile Management"
$NetworkingModule3 = "WiFi Tools"

$MECMModule1 = " System Center Client"
$MECMModule2 = "System Center Client Actions"
$MECMModule3 = "SCCM Stuff"

$UtilityModule1 = "7-Zip"

Write-Host
Write-Host "Accessing www.powershellgallery.com package database to install Powershell Modules..." -ForegroundColor Green
Write-Host
Write-Host

# MAIN OSD PowerShell Modules

Write-Host "Updating $OSDGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule1..." -Verbose
Update-Module -Name OSD -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSD -Force
Start-Sleep -Seconds 5
Write-Host

Write-Host "Updating $OSDGroup2 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule2..." -Verbose 
Update-Module -Name OSDBuilder -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDBuilder -Force
Start-Sleep -Seconds 5
Write-Host

Write-Verbose "Updating: $OSDModule3..." -Verbose
Update-Module -Name OSDSUS -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDSUS -Force
Start-Sleep -Seconds 5
Write-Host

# Cloud PowerShell Modules

Write-Host "Updating and Importing: $OSDGroup3 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule4..." -Verbose
Update-Module -Name OSDCloudCLI -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDCloudCLI -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $OSDModule5..." -Verbose
Update-Module -Name OSDCloudGUI -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDCloudGUI -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $OSDModule6..." -Verbose
Update-Module -Name OSDCloudAzure -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDCloudAzure -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule1..." -Verbose	
Update-Module -Name Azure -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule2..." -Verbose			
Update-Module -Name AzureAD -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule3..." -Verbose	
Update-Module -Name Az.Accounts -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule4..." -Verbose
Update-Module -Name Az.Storage -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule5..." -Verbose
Update-Module -Name Az.Resources -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule6..." -Verbose
Update-Module -Name Az.KeyVault -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule7..." -Verbose
Update-Module -Name Az.Compute -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule8..." -Verbose
Update-Module -Name Az.Automation -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Automation -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule9..." -Verbose
Update-Module -Name Az.Network -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Network -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule10..." -Verbose
Update-Module -Name Az.ApiManagement -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.ApiManagement -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule11..." -Verbose
Update-Module -Name Az.Advisor -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Advisor -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule12..." -Verbose
Update-Module -Name Az.AnalysisServices -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.AnalysisServices -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule13..." -Verbose
Update-Module -Name Az.Billing -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Billing -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule14..." -Verbose
Update-Module -Name Az.ApplicationInsights -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.ApplicationInsights -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule15..." -Verbose
Update-Module -Name Az.Cdn -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Cdn -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule16..." -Verbose
Update-Module -Name Az.Batch -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Batch -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $CloudModule17..." -Verbose
Update-Module -Name Az.Monitor -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Monitor -Force
Start-Sleep -Seconds 5
Write-Host

# OSD Autopilot, Drivers, Software and Updates PowerShell Modules

Write-Host "Updating and Importing: $OSDGroup4 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule7..." -Verbose
Update-Module -Name OSDUpdate -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDUpdate -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $OSDModule8..." -Verbose
Update-Module -Name AutopilotOOBE -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name AutopilotOOBE -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $OSDModule9..." -Verbose
Update-Module -Name OSDDrivers -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDDrivers -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $OSDModule10..." -Verbose
Update-Module -Name OSDeploy -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDeploy -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $OSDModule11..." -Verbose
Update-Module -Name OSDSoftware -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDSoftware -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $OSDModule12..." -Verbose
Update-Module -Name OSDCatalog -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDCatalog -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $OSDModule13..." -Verbose
Update-Module -Name OSDProgress -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDProgress -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $OSDModule14..." -Verbose
Update-Module -Name PSWindowsUpdate -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name PSWindowsUpdate -Force
Start-Sleep -Seconds 5
Write-Host

# Microsoft Graph PowerShell Modules

Write-Host "Updating $OSDGroup5 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $MSGraphModule1...Module No: 1 of 9" -Verbose
Update-Module -Name Microsoft.Graph -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph -Force
Write-Verbose "Updating: $MSGraphModule2...Module No: 2 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Intune -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Intune -Force
Write-Verbose "Updating: $MSGraphModule3...Module No: 3 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Groups -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Groups -Force
Write-Verbose "Updating: $MSGraphModule4...Module No: 4 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Users -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Users -Force
Write-Verbose "Updating: $MSGraphModule5...Module No: 5 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Sites -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Sites -Force
Write-Verbose "Updating: $MSGraphModule6...Module No: 6 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Mail -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Mail -Force
Write-Verbose "Updating: $MSGraphModule7...Module No: 7 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Identity.DirectoryManagement -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Identity.DirectoryManagement -Force
Write-Verbose "Updating: $MSGraphModule8...Module No: 8 of 9" -Verbose
Update-Module -Name Microsoft.Graph.Teams -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.Teams -Force
Write-Verbose "Updating: $MSGraphModule9...Module No: 9 of 9" -Verbose
Update-Module -Name Microsoft.Graph.DeviceManagement -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Microsoft.Graph.DeviceManagement -Force

# VM Modules - ESXI

Write-Host "Updating $VMGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $ESXIModule1..." -Verbose
Update-Module -Name AsBuiltReport.VMware.ESXi -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name AsBuiltReport.VMware.ESXi -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $ESXIModule2..." -Verbose
Update-Module -Name EsxiInventoryTools -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name EsxiInventoryTools -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $ESXIVModule3..." -Verbose
Update-Module -Name VMwareBaselineCheck -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name VMwareBaselineCheck -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $ESXIModule4..." -Verbose
Update-Module -Name WindowsImageBuilder -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name WindowsImageBuilder -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $ESXIModule5..." -Verbose
Update-Module -Name vDocumentation -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name vDocumentation -Force
Start-Sleep -Seconds 5
Write-Host

# VM Modules - Hyper-V

Write-Host "Updating $VMGroup3 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $HyperVModule1..." -Verbose
Update-Module -Name LabBuilder -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name LabBuilder -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $HyperVModule2..." -Verbose
Update-Module -Name Hyper-V-Backup -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Hyper-V-Backup -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $HyperVModule3..." -Verbose
Update-Module -Name Hyper-V.Tools -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Hyper-V.Tools -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $HyperVModule4..." -Verbose
Update-Module -Name Image-Factory -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Image-Factory -Force
Start-Sleep -Seconds 5
Write-Verbose "Updating: $HyperVModule5..." -Verbose
Update-Module -Name HyperVLab -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name HyperVLab -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $HyperVModule6..." -Verbose
Update-Module -Name AutomatedLab -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name AutomatedLab -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $HyperVModule7..." -Verbose
Update-Module -Name Hyper-VAdministration -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Hyper-VAdministration -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $HyperVModule8..." -Verbose
Update-Module -Name WindowsImageConverter -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name WindowsImageConverter -Force
Start-Sleep -Seconds 5
Write-Host

# UNIFI Module 

Write-Host "Updating $NetworkingGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $NetworkingModule1..." -Verbose
Update-Module -Name UNIFI -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name UNIFI -Force
Start-Sleep -Seconds 5
Write-Host

# WiFi Modules 

Write-Host "Updating $NetworkingGroup2 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $NetworkingModule2..." -Verbose
Update-Module -Name wifiprofilemanagement -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name wifiprofilemanagement -Force
Start-Sleep -Seconds 5
Update-Module -Name WiFiProfileManagementDsc -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name WiFiProfileManagementDsc -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $NetworkingModule3..." -Verbose
Update-Module -Name WifiTools -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name WifiTools -Force
Start-Sleep -Seconds 5
Write-Host

# MECM Modules

Write-Host "Updating $DomainDeploymentGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $MECMModule1..." -Verbose
Update-Module -Name SCClient -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name SCClient -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $MECMModule2..." -Verbose
Update-Module -Name SCCMClientActions -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name SCCMClientActions -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Updating: $MECMModule3..." -Verbose
Update-Module -Name SCCMStuff -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name SCCMStuff -Force
Start-Sleep -Seconds 5
Write-Host

# Utility Modules 

Write-Host "Updating $PSUtilitiesGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $UtilityModule1..." -Verbose
Update-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name 7Zip4Powershell -Force
Start-Sleep -Seconds 5
Write-Host


Stop-Transcript 
