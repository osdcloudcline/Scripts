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
$OSDModule6 = "OSD Update"
$OSDModule7 = "Autopilot OOBE"
$OSDModule8 = "OSD Drivers"
$OSDModule9 = "OSD CloudAzure"
$OSDModule10 ="OSD Deploy"
$OSDModule11 = "OSD Software"
$OSDModule12 = "OSD Catalog"
$OSDModule13 = "OSD Progress"

$CloudModule1 = "Azure"
$CloudModule2 = "Azure Accounts"

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
