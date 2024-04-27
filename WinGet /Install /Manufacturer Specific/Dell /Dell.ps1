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
$DellModule12 = "Dell EMC"
$DellModule13 = "Get Dell Driver Packs"
$DellModule14 = "Dell BIOS Driver"

$OSDGroup1 = "OSD"
$OSDGroup2 = "OSD: Configuration"
$OSDGroup3 = "OSD: Cloud"
$OSDGroup4 = "OSD: Software and Updates"

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

Write-Host "Installing PowerShell Modules...." -ForegroundColor Cyan
Write-Host "Installing $OSDGroup1 Modules..." -ForegroundColor Cyan
Write-Verbose "Installing: $OSDModule1..." -Verbose
Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

Write-Host "Installing $OSDGroup2 Modules..." -ForegroundColor Cyan
Write-Verbose "Installing: $OSDModule2..." -Verbose
Install-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDBuilder -Force
Write-Verbose "Installing: $OSDModule3..." -Verbose
Install-Module -Name OSDSUS -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDSUS -Force

Write-Host "Installing $OSDGroup3 Modules..." -ForegroundColor Cyan
Write-Verbose "Installing: $OSDModule4..." -Verbose
Install-Module -Name OSDCloudCLI -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDCloudCLI -Force
Write-Verbose "Installing: $OSDModule5..." -Verbose
Install-Module -Name OSDCloudGUI -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDCloudGUI -Force
Write-Verbose "Installing: $OSDModule6..." -Verbose
Install-Module -Name OSDCloudAzure -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSDCloudAzure -Force
Write-Verbose "Installing: $CloudModule1..." -Verbose
Install-Module -Name Azure -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Azure -Force
Write-Verbose "Installing: $CloudModule2..." -Verbose
Install-Module -Name Az.Accounts -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Accounts -Force
Write-Verbose "Installing: $CloudModule3..." -Verbose
Install-Module -Name Azure.Storage -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Azure.Storage -Force
Write-Verbose "Installing: $CloudModule4..." -Verbose
Install-Module -Name Az.Resources -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Resources -Force

Write-Verbose "Installing: $CloudModule5..." -Verbose
Install-Module -Name Azure -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Azure -Force
Write-Verbose "Installing: $CloudModule6..." -Verbose
Install-Module -Name Az.Accounts -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Accounts -Force
Write-Verbose "Installing: $CloudModule7..." -Verbose
Install-Module -Name Azure.Storage -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Azure.Storage -Force
Write-Verbose "Installing: $CloudModule8..." -Verbose
Install-Module -Name Az.Resources -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name Az.Resources -Force





