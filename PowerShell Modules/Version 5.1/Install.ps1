$PSModsLogs = "C:\OSDCloud\DeploymentLogs\PSModules\$env:computername-PSModules.log"
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

$SYSModule1 = "NuGet"
$SYSModule2 = "OneGet"
$SYSModule3 = "WinGet"
$SYSModule4 = "Program Management"
$SYSModule5 = "Choco"

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
Write-Host
Write-Host "Installing Chocolatey Package Manager..." -ForegroundColor Cyan 
Write-Host
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Write-Host
Write-Host
Write-Host
Write-Host "Accessing www.powershellgallery.com package database to install Powershell Modules..." -ForegroundColor Green
Write-Host
Write-Host

# Package Manager Modules

Write-Host "Installing $PMGroup Package Providers and Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $SYSModule1..." -Verbose
Install-PackageProvider -Name NuGet -Force
Start-Sleep -Seconds 5
Install-Module -Name NuGet -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name NuGet -Force
Start-Sleep -Seconds 5
Write-Host

Write-Verbose "Installing: $SYSModule2..." -Verbose
Install-PackageProvider -Name PackageManagement -Force
Start-Sleep -Seconds 5
Install-Module -Name PackageManagement -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name PackageManagement -Force
Start-Sleep -Seconds 5
Write-Host

Write-Verbose "Installing: $SYSModule3..." -Verbose
Install-PackageProvider -Name WinGet -Force
Start-Sleep -Seconds 5
Install-Module -Name WinGet -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name WinGet -Force
Start-Sleep -Seconds 5
Write-Host

Write-Verbose "Installing: $SYSModule4..." -Verbose
Install-PackageProvider -Name ProgramManagement -Force
Start-Sleep -Seconds 5
Install-Module -Name ProgramManagement -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name ProgramManagement -Force
Start-Sleep -Seconds 5
Write-Host

Write-Verbose "Installing: $SYSModule5..." -Verbose
Install-PackageProvider -Name Choco -Force
Start-Sleep -Seconds 5
Install-Module -Name Choco -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Choco -Force
Start-Sleep -Seconds 5
Write-Host


# MAIN OSD PowerShell Modules

Write-Host "Installing $OSDGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $OSDModule1..." -Verbose
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

Write-Verbose "Installing: $OSDModule3..." -Verbose
Install-Module -Name OSDSUS -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDSUS -Force
Start-Sleep -Seconds 5
Write-Host

# Cloud PowerShell Modules

Write-Host "Installing and Importing: $OSDGroup3 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $OSDModule4..." -Verbose
Install-Module -Name OSDCloudCLI -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDCloudCLI -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $OSDModule5..." -Verbose
Install-Module -Name OSDCloudGUI -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDCloudGUI -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $OSDModule6..." -Verbose
Install-Module -Name OSDCloudAzure -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDCloudAzure -Force
Start-Sleep -Seconds 5
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
Write-Host
Write-Verbose "Installing: $CloudModule9..." -Verbose
Install-Module -Name Az.Network -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Network -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule10..." -Verbose
Install-Module -Name Az.ApiManagement -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.ApiManagement -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule11..." -Verbose
Install-Module -Name Az.Advisor -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Advisor -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule12..." -Verbose
Install-Module -Name Az.AnalysisServices -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.AnalysisServices -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule13..." -Verbose
Install-Module -Name Az.Billing -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Billing -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule14..." -Verbose
Install-Module -Name Az.ApplicationInsights -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.ApplicationInsights -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule15..." -Verbose
Install-Module -Name Az.Cdn -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Cdn -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule16..." -Verbose
Install-Module -Name Az.Batch -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Batch -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $CloudModule17..." -Verbose
Install-Module -Name Az.Monitor -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Az.Monitor -Force
Start-Sleep -Seconds 5
Write-Host

# OSD Autopilot, Drivers, Software and Updates PowerShell Modules

Write-Host "Installing and Importing: $OSDGroup4 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $OSDModule7..." -Verbose
Install-Module -Name OSDUpdate -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDUpdate -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $OSDModule8..." -Verbose
Install-Module -Name AutopilotOOBE -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name AutopilotOOBE -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $OSDModule9..." -Verbose
Install-Module -Name OSDDrivers -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDDrivers -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $OSDModule10..." -Verbose
Install-Module -Name OSDeploy -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDeploy -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $OSDModule11..." -Verbose
Install-Module -Name OSDSoftware -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDSoftware -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $OSDModule12..." -Verbose
Install-Module -Name OSDCatalog -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDCatalog -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $OSDModule13..." -Verbose
Install-Module -Name OSDProgress -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name OSDProgress -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $OSDModule14..." -Verbose
Install-Module -Name PSWindowsUpdate -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name PSWindowsUpdate -Force
Start-Sleep -Seconds 5
Write-Host

# Microsoft Graph PowerShell Modules

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

# VM Modules - ESXI

Write-Host "Installing $VMGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $ESXIModule1..." -Verbose
Install-Module -Name AsBuiltReport.VMware.ESXi -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name AsBuiltReport.VMware.ESXi -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $ESXIModule2..." -Verbose
Install-Module -Name EsxiInventoryTools -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name EsxiInventoryTools -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $ESXIVModule3..." -Verbose
Install-Module -Name VMwareBaselineCheck -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name VMwareBaselineCheck -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $ESXIModule4..." -Verbose
Install-Module -Name WindowsImageBuilder -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name WindowsImageBuilder -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $ESXIModule5..." -Verbose
Install-Module -Name vDocumentation -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name vDocumentation -Force
Start-Sleep -Seconds 5
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
Write-Host
Write-Verbose "Installing: $HyperVModule2..." -Verbose
Install-Module -Name Hyper-V-Backup -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Hyper-V-Backup -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $HyperVModule3..." -Verbose
Install-Module -Name Hyper-V.Tools -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Hyper-V.Tools -Force
Start-Sleep -Seconds 5
Write-Host
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
Write-Host
Write-Verbose "Installing: $HyperVModule6..." -Verbose
Install-Module -Name AutomatedLab -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name AutomatedLab -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $HyperVModule7..." -Verbose
Install-Module -Name Hyper-VAdministration -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name Hyper-VAdministration -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $HyperVModule8..." -Verbose
Install-Module -Name WindowsImageConverter -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name WindowsImageConverter -Force
Start-Sleep -Seconds 5
Write-Host

# UNIFI Module 

Write-Host "Installing $NetworkingGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $NetworkingModule1..." -Verbose
Install-Module -Name UNIFI -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name UNIFI -Force
Start-Sleep -Seconds 5
Write-Host

# WiFi Modules 

Write-Host "Installing $NetworkingGroup2 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $NetworkingModule2..." -Verbose
Install-Module -Name wifiprofilemanagement -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name wifiprofilemanagement -Force
Start-Sleep -Seconds 5
Install-Module -Name WiFiProfileManagementDsc -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name WiFiProfileManagementDsc -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $NetworkingModule3..." -Verbose
Install-Module -Name WifiTools -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name WifiTools -Force
Start-Sleep -Seconds 5
Write-Host

# MECM Modules

Write-Host "Installing $DomainDeploymentGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $MECMModule1..." -Verbose
Install-Module -Name SCClient -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name SCClient -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $MECMModule2..." -Verbose
Install-Module -Name SCCMClientActions -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name SCCMClientActions -Force
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $MECMModule3..." -Verbose
Install-Module -Name SCCMStuff -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name SCCMStuff -Force
Start-Sleep -Seconds 5
Write-Host

# Utility Modules 

Write-Host "Installing $PSUtilitiesGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $UtilityModule1..." -Verbose
Install-Module -Name 7Zip4Powershell -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name 7Zip4Powershell -Force
Start-Sleep -Seconds 5
Write-Host

$OEMManufacturer = (Get-CimInstance -Class Win32_ComputerSystemProduct).Vendor
$PCModel = (Get-CimInstance -Class Win32_ComputerSystem).Model

Write-Host "Determining PC System Vendor..." -ForegroundColor Cyan
If($OEMManufacturer -eq "Dell"){
Write-Host      "This PC is $OEMManufacturer $PCModel" -ForegroundColor DarkBlue -BackgroundColor White
$Dell = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Dell%20/Dell.ps1")
Invoke-Expression $($Dell.Content)
}
ElseIf($OEMManufacturer -eq "HP"){
Write-Host      "This PC is $OEMManufacturer $PCModel" -ForegroundColor DarkBlue -BackgroundColor White
$HP = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/HP/HP.ps1")
Invoke-Expression $($HP.Content)
}
ElseIf($OEMManufacturer -eq "ASUS"){
Write-Host      "This PC is $OEMManufacturer $PCModel" -ForegroundColor DarkBlue -BackgroundColor White
$ASUS = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/ASUS/ASUS.ps1")
Invoke-Expression $($ASUS.Content)
}
ElseIf($OEMManufacturer -eq "Acer"){
Write-Host      "This PC is $OEMManufacturer $PCModel" -ForegroundColor DarkBlue -BackgroundColor White
$Acer = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Acer/Acer.ps1")
Invoke-Expression $($Acer.Content)
}
ElseIf($OEMManufacturer -eq "Lenovo"){
Write-Host      "This PC is $OEMManufacturer $PCModel" -ForegroundColor DarkBlue -BackgroundColor White
$Lenovo = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Lenovo%20/Lenovo.ps1")
Invoke-Expression $($Lenovo.Content)
}


Stop-Transcript 

