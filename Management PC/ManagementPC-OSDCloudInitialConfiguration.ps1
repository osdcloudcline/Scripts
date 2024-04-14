
Write-Host "Configuring PowerShell Execution Policy..." -ForegroundColor Cyan
Set-ExecutionPolicy unrestricted
Write-Host "Installing and Imnporting all OSD and Cloud related PowerShell Modules..." -ForegroundColor Cyan

        $PSModule1 = "OSD Powershell Module"
        $PSModule2 = "OSD SUS Powershell Module"
        $PSModule3 = "OSD Builder Powershell Module"
        $PSModule4 = "OSD Update & Update Catalog Powershell Module"
        $PSModule5 = "OSD Drivers Powershell Module"
        $PSModule6 = "OSD Cloud CLI, OSDCloud GUI, Windows 365 Cloud PC, Autopilot OOBE and Azure Powershell Module"
        $PSModule7 = "OSD Software Powershell Module"
        $PSModule8 = "OSD Deploy Powershell Module"

Write-Host "Accessing www.powershellgallery.com package database to install Powershell Modules..." -ForegroundColor Green
Write-Host
Write-Host
Write-Host "Installing: $PSModule1" -ForegroundColor Cyan
Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck 

Write-Host "Importing: $PSModule1" -ForegroundColor Cyan
Import-Module -Name OSD -Force

Write-Host "Installing: $PSModule2"  -ForegroundColor Cyan
Install-Module -Name OSDSUS -Force -AllowClobber -SkipPublisherCheck

Write-Host "Importing: $PSModule2" -ForegroundColor Cyan
Import-Module -Name OSDSUS -Force

Write-Host "Installing: $PSModule3" -ForegroundColor Cyan
Install-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck

Write-Host "Importing: $PSModule3" -ForegroundColor Cyan
Import-Module -Name OSDBuilder -Force

Write-Host "Installing: $PSModule4" -ForegroundColor Cyan
Install-Module -Name OSDUpdate -Force -AllowClobber -SkipPublisherCheck
Install-Module -Name OSDCatalog -Force -AllowClobber -SkipPublisherCheck

Write-Host "Importing: $PSModule4" -ForegroundColor Cyan
Import-Module -Name OSDUpdate -Force
Import-Module -Name OSDCatalog -Force

Write-Host "Installing: $PSModule5" -ForegroundColor Cyan
Install-Module -Name OSDDrivers -Force -AllowClobber -SkipPublisherCheck

Write-Host "Importing: $PSModule5" -ForegroundColor Cyan
Import-Module -Name OSDDrivers -Force

Write-Host "Installing: $PSModule6" -ForegroundColor Cyan
Install-Module -Name OSDCloudCLI -Force -AllowClobber -SkipPublisherCheck
Install-Module -Name OSDCloudGUI -Force -AllowClobber -SkipPublisherCheck
Install-Module -Name AutopilotOOBE -Force -AllowClobber -SkipPublisherCheck
Install-Module -Name OSDCloudAzure -Force -AllowClobber -SkipPublisherCheck
Install-Module -Name Azure -Force -AllowClobber -SkipPublisherCheck
Install-Module -Name AzureAD -Force -AllowClobber -SkipPublisherCheck
Install-Module -Name Az.Accounts -Force -AllowClobber -SkipPublisherCheck
Install-Module -Name Az.KeyVault -Force -AllowClobber -SkipPublisherCheck
Install-Module -Name Az.Resources -Force -AllowClobber -SkipPublisherCheck
Install-Module -Name Az.Storage -Force -AllowClobber -SkipPublisherCheck
Install-Module -Name Microsoft.Graph.DeviceManagement -Force -AllowClobber -SkipPublisherCheck
Install-Module -Name PSCloudPC -Force -AllowClobber -SkipPublisherCheck

Write-Host "Importing: $PSModule6" -ForegroundColor Cyan
Import-Module -Name OSDCloudCLI -Force
Import-Module -Name OSDCloudGUI -Force 
Import-Module -Name AutopilotOOBE -Force
Import-Module -Name OSDCloudAzure -Force
Import-Module -Name Azure -Force
Import-Module -Name AzureAD -Force
Import-Module -Name Az.Accounts -Force 
Import-Module -Name Az.KeyVault -Force 
Import-Module -Name Az.Resources -Force 
Import-Module -Name Az.Storage -Force  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Import-Module -Name Microsoft.Graph.DeviceManagement -Force 
Import-Module -Name PSCloudPC -Force

Write-Host "Installing: $PSModule7" -ForegroundColor Cyan
Install-Module -Name OSDSoftware -Force -AllowClobber -SkipPublisherCheck

Write-Host "Importing: $PSModule7" -ForegroundColor Cyan
Import-Module -Name OSDSoftware -Force

Write-Host "Installing: $PSModule8" -ForegroundColor Cyan
Install-Module -Name OSDeploy -Force -AllowClobber -SkipPublisherCheck

Write-Host "Importing: $PSModule8" -ForegroundColor Cyan
Import-Module -Name OSDeploy -Force


Write-Host "Installation and Import process of neccessary PowerShell Modules Completed." -ForegroundColor Green

Write-Host "Accessing OSD Cloud\User Profile Backup Restore GitHub Repo from OSDCloudCline to download User Profile Backup and Restore utility..." -ForegroundColor Cyan
Write-Host
Write-Host 
Write-Host "Processing and Downloading: User Profile Backup and Restpre..." -ForegroundColor Cyan
$UPBRUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe' -DestinationDirectory "C:\downloads"
$UPBROrgFile = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
$UPBRNewName = "C:\OSDCloud\GitHub\downloads\UPBR.exe"
Rename-Item -Path $UPBROrgFile -NewName $UPBRNewName
Copy-Item -Path $UPBRNewName -Destination "$env:username\Desktop"

Write-Host "Accessing OSD Cloud\OS Kits GitHub Repo from OSDCloudCline to download Windows SDK, ADK and PE ADK Add-On files..." -ForegroundColor Cyan
Write-Host "Processing and Downloading: Windows 11 22H2 SDK Setup File..." -ForegroundColor Cyan
$Win11_22H2SDKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe' -DestinationDirectory "C:\OSDCloud\GitHub\downloads"

Write-Host "Processing and Downloading: Windows 11 22H2 ADK Setup File..." -ForegroundColor Cyan
$Win11_22H2SDKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe' -DestinationDirectory "C:\OSDCloud\GitHub\downloads"

Write-Host "Processing and Downloading: Windows 11 22H2 PE ADK Add-On Setup File..." -ForegroundColor Cyan
$Win11_22H2PEADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe'
Save-WebFile 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe' -DestinationDirectory "C:\OSDCloud\GitHub\downloads"

Write-Host "Completed All Downloads..." -ForegroundColor Green

Get-Win11SDK

Get-Win11ADK

Get-Win11PEADK

Function Get-Win11SDK(){
$SDKSetup = "C:\downloads\winsdksetup.exe"
Write-Host "Installing Windows 11 SDK 22H2 10.0.22621" -ForegroundColor Green
Start-Process -FilePath $SDKSetup
Write-Host "Windows 11 SDK 22H2 10.0.22621 installed successfully" -ForegroundColor Green
}

Function Get-Win11ADK(){
$ADKSetup = "C:\downloads\adksetup.exe"
Write-Host "Installing Windows 11 ADK 22H2 10.0.22621" -ForegroundColor Green
Start-Process -FilePath $ADKSetup
Write-Host "Windows 11 ADK 22H2 10.0.22621 installed successfully" -ForegroundColor Green
}

Function Get-Win11PEADK(){
$ADKPESetup = "C:\downloads\adkwinpesetup.exe"
Write-Host "Installing Windows 11 ADK PE Add-On 22H2 10.0.22621" -ForegroundColor Green
Start-Process -FilePath $ADKPESetup
Write-Host "Windows 11 ADK PE Add-On 22H2 10.0.22621 installed successfully" -ForegroundColor Green
}
