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

Write-Verbose "Installing: $OSDModule3..." -Verbose
Install-Module -Name OSDSUS -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $OSDModule4..." -Verbose
Install-Module -Name OSDCloudCLI -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $OSDModule5..." -Verbose
Install-Module -Name OSDCloudGUI -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $OSDModule6..." -Verbose
Install-Module -Name OSDCloudAzure -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $OSDModule7..." -Verbose
Install-Module -Name OSDUpdate -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $OSDModule8..." -Verbose
Install-Module -Name AutopilotOOBE -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $OSDModule9..." -Verbose
Install-Module -Name OSDDrivers -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $OSDModule10..." -Verbose
Install-Module -Name OSDeploy -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $OSDModule11..." -Verbose
Install-Module -Name OSDSoftware -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $OSDModule12..." -Verbose
Install-Module -Name OSDCatalog -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $OSDModule13..." -Verbose
Install-Module -Name OSDProgress -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $OSDModule14..." -Verbose
Install-Module -Name PSWindowsUpdate -Force -AllowClobber -SkipPublisherCheck

Write-Verbose "Installing: $CloudModule1..." -Verbose	
Install-Module -Name Azure -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $MSGraphModule1..." -Verbose
Install-Module -Name Microsoft.Graph -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $CloudModule1..." -Verbose	
Install-Module -Name Azure -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $CloudModule2..." -Verbose			
Install-Module -Name AzureAD -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $CloudModule3..." -Verbose	
Install-Module -Name Az.Accounts -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $CloudModule4..." -Verbose
Install-Module -Name Az.Storage -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $CloudModule5..." -Verbose
Install-Module -Name Az.Resources -Force -AllowClobber -SkipPublisherCheck

Write-Host
Write-Verbose "Installing: $CloudModule6..." -Verbose
Install-Module -Name Az.KeyVault -Force -AllowClobber -SkipPublisherCheck
