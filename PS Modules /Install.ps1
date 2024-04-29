############################
### PS Module Group Names ##
############################

$OSDGroup1 = "OSD"
$OSDGroup2 = "OSD: Configuration"
$OSDGroup3 = "OSD: Cloud"
$OSDGroup4 = "OSD: Autopilot, Drivers, Software and Updates"
$OSDGroup5 = "OSD: Microsoft Graph"
$VMGroup1 = "VMWare ESXI"
$VMGroup2 = "VMWare Workstation Pro"
$VMGroup3 = "Microsoft Hyper-V"
$NetworkingGroup1 = "Ubiquiti"

#################################
## PS Modules to be installed ###
#################################

$PSModule9 = "NuGet"
$PSModule10 = "OneGet"
$PSModule11 = "WinGet"
$PSModule12 = "Program Management Module"

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
$CloudModule18 = "Windows 365 Cloud PC"

$ESXIModule1 = "ESXI Report Generator"
$ESXIModule2 = "ESXI Inventory Tools"
$ESXIModule3 = "VMWare ESXI Baseline Check"
$ESXIModule4 = "Windows Image Builder"
$ESXIModule5 = "vDocumentation"

$WorkstationProModules

$HyperVModule1 = "Lab Builder"
$HyperVModule2 = "Hyper-V Backup"
$HyperVModule3 = "Hyper-V Tools"
$HyperVModule4 = "Image Factory"
$HyperVModule5 = "Hyper-V Lab"
$HyperVModule6 = "Automated Lab"
$HyperVModule7 = "Hyper-V Administration"
$HyperVModule8 = "Windows Image Converter"

Write-Host
Write-Host
Write-Host "Accessing www.powershellgallery.com package database to install Powershell Modules..." -ForegroundColor Green
Write-Host
Write-Host

# MAIN OSD PowerShell Modules

Write-Host "Installing $OSDGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $OSDModule1..." Verbose
Install-Module -Name OSD -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSD -Force
Start-Sleep -Seconds 5
Write-Host

Write-Host "Installing $OSDGroup2 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $OSDModule2..." -Verbose 
Install-Module -Name OSDBuilder -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDBuilder -Force
Start-Sleep -Seconds 5
Write-Host

Write-Verbose "Installing: $OSDModule3...Module No: 2 of 2" -Verbose
Install-Module -Name OSDSUS -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDSUS -Force
Start-Sleep -Seconds 5
Write-Host

# Cloud PowerShell Modules

Write-Host "Installing and Importing: $OSDGroup3 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $CloudModule1..." -Verbose	
Install-Module -Name Azure -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule2..." -Verbose			
Install-Module -Name AzureAD -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule3..." -Verbose	
Install-Module -Name Az.Accounts -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule4..." -Verbose
Install-Module -Name Az.Storage -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule5..." -Verbose
Install-Module -Name Az.Resources -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule6..." -Verbose
Install-Module -Name Az.KeyVault -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule7..." -Verbose
Install-Module -Name Az.Compute -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule8..." -Verbose
Install-Module -Name Az.Automation -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Automation -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $CloudModule9..." -Verbose
Install-Module -Name Az.Network -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Network -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $CloudModule10..." -Verbose
Install-Module -Name Az.ApiManagement -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.ApiManagement -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $CloudModule11..." -Verbose
Install-Module -Name Az.Advisor -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Advisor -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $CloudModule12..." -Verbose
Install-Module -Name Az.AnalysisServices -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.AnalysisServices -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $CloudModule13..." -Verbose
Install-Module -Name Az.Billing -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Billing -Force
Write-Verbose "Installing: $CloudModule14..." -Verbose
Install-Module -Name Az.ApplicationInsights -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.ApplicationInsights -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $CloudModule15..." -Verbose
Install-Module -Name Az.Cdn -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Cdn -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $CloudModule16..." -Verbose
Install-Module -Name Az.Batch -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Batch -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $CloudModule17..." -Verbose
Install-Module -Name Az.Monitor -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Monitor -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $CloudModule18..." -Verbose
Install-Module -Name PSCloudPC -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name PSCloudPC -Force
Start-Sleep -Seconds 5


# VM Modules - ESXI

Write-Host "Installing $VMGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $ESXIVModule1..." -Verbose
Install-Module -Name AsBuiltReport.VMware.ESXi -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name AsBuiltReport.VMware.ESXi -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $ESXIVModule2..." -Verbose
Install-Module -Name EsxiInventoryTools -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name EsxiInventoryTools -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $ESXIVModule3..." -Verbose
Install-Module -Name VMwareBaselineCheck -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name VMwareBaselineCheck -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $ESXIVModule4..." -Verbose
Install-Module -Name WindowsImageBuilder -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name WindowsImageBuilder -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $ESXIVModule5..." -Verbose
Install-Module -Name vDocumentation -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name vDocumentation -Force
Start-Sleep -Seconds 5

# VM Modules - VMWare Workstation Pro

Write-Host "Installing $VMGroup2 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host

# VM Modules - Hyper-V

Write-Host "Installing $VMGroup3 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $HyperVModule1..." -Verbose
Install-Module -Name LabBuilder -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name LabBuilder -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $HyperVModule2..." -Verbose
Install-Module -Name Hyper-V-Backup -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Hyper-V-Backup -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $HyperVModule3..." -Verbose
Install-Module -Name Hyper-V.Tools -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Hyper-V.Tools -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $HyperVModule4..." -Verbose
Install-Module -Name Image-Factory -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Image-Factory -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $HyperVModule5..." -Verbose
Install-Module -Name HyperVLab -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name HyperVLab -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $HyperVModule6..." -Verbose
Install-Module -Name AutomatedLab -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name AutomatedLab -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $HyperVModule7..." -Verbose
Install-Module -Name Hyper-VAdministration -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Hyper-VAdministration -Force
Start-Sleep -Seconds 5
Write-Verbose "Installing: $HyperVModule8..." -Verbose
Install-Module -Name WindowsImageConverter -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name WindowsImageConverter -Force
Start-Sleep -Seconds 5
