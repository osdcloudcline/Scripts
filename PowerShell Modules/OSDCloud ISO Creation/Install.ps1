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

$CloudModule1 = "Azure"
$CloudModule2 = "Azure AD"
$CloudModule3 = "Azure Accounts"
$CloudModule4 = "Azure Storage"
$CloudModule5 = "Azure Resources"
$CloudModule6 = "Azure Key Vault"

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

Write-Host
Write-Verbose "Installing: $OSDModule1..." -Verbose
Install-Module -Name OSD -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $OSDModule2..." -Verbose 
Install-Module -Name OSDBuilder -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
