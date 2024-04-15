# WinGet Mandatory Software Install

Write-Host "Configuring Pre-Requisities for Software Installation..." -ForegroundColor Green
Set-ExecutionPolicy unrestricted -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Start-Transcript -Path "C:\Logs\Powershell\SoftwareInstall.log"
Set-ExecutionPolicy -Scope LocalMachine unrestricted -Force -ErrorAction SilentlyContinue
Set-ExecutionPolicy -Scope CurrentUser unrestricted -Force -ErrorAction SilentlyContinue


$PSModule9 = "NuGet"
$PSModule10 = "OneGet"
$PSModule11 = "WinGet"
$PSModule12 = "Program Management Module"

Write-Host "Installing: $PSModule9..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name NuGet -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule9..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name NuGet -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule10..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name PackageManagement -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule10..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name PackageManagement -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule11..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name WinGet -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSmodule11..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name WinGet -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name ProgramManagement -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name ProgramManagement -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5


$PSModule1 = "OSD Module"
$PSModule2 = "OSD SUS Module"
$PSModule3 = "OSD Builder Module"
$PSModule4 = "OSD Update & Update Catalog Module"
$PSModule5 = "OSD Drivers Module"
$PSModule6 = "OSD Cloud Modules"
$PSModule7 = "OSD Software Module"
$PSModule8 = "OSD Deploy Module"
$PSModule13 = "Windows Update Module"

Write-Host "Accessing www.powershellgallery.com package database to install Powershell Modules..." -ForegroundColor Cyan 
		
Write-Host "Installing: $PSModule1..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSD -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule1..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSD -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
	
Write-Host "Installing: $PSModule2..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSDSUS -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule2..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDSUS -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
		
Write-Host "Installing: $PSModule3..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSDBuilder -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule3..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDBuilder -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
		
Write-Host "Installing: $PSModule4..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSDUpdate -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule4..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDUpdate -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule4..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 		
Install-Module -Name OSDCatalog -Repository PSGallery -Force -AllowClobber 
Start-Sleep -Seconds 5		
Write-Host "Importing: $PSModule4..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDCatalog -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5

Write-Host "Installing: $PSModule5..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSDDrivers -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule5..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDDrivers -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
		
Write-Host "Installing: $PSModule6 - 1 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name OSDCloudCLI -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule6 - 2 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan		
Install-Module -Name OSDCloudGUI -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule6 - 3 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan		
Install-Module -Name AutopilotOOBE -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule6 - 4 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan	
Install-Module -Name OSDCloudAzure -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule6 - 5 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan		
Install-Module -Name Azure -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule6 - 6 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan		
Install-Module -Name AzureAD -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule6 - 7 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name Az.Accounts -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule6 - 8 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name Az.KeyVault -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule6 - 9 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name Az.Resources -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule6 - 10 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name Az.Storage -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host "Installing: $PSModule6 - 11 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name Microsoft.Graph.DeviceManagement -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5		
Write-Host "Installing: $PSModule6 - 12 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name PSCloudPC -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5

Write-Host "Importing: $PSModule6 - 1 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name OSDCloudCLI -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule6 - 2 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name OSDCloudGUI -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule6 - 3 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name AutopilotOOBE -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule6 - 4 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name OSDCloudAzure -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule6 - 5 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name Azure -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule6 - 6 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name AzureAD -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule6 - 7 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name Az.Accounts -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule6 - 8 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name Az.KeyVault -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule6 - 9 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name Az.Resources -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule6 - 10 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name Az.Storage -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule6 - 11 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name Microsoft.Graph.DeviceManagement -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule6 - 12 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name PSCloudPC -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
		
Write-Host "Installing: $PSModule7..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSDSoftware -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule7..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDSoftware -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
		
Write-Host "Installing: $PSModule8..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSDeploy -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule8..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDeploy -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
		
Write-Host "Installing: $PSModule13..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name PSWindowsUpdate -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule13..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name PSWindowsUpdate -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
