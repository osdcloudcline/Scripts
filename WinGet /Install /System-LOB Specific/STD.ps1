Start-Transcript -Path "C:\Logs\Powershell\Standard\$env:computername-PreReqInstall.log"

####################################################################
### SYSTEM SOFTWARE VARIABLES AND INSTALL                      #####
####################################################################

$app1 = ".NET Runtime 3.1"
$app1ver = "Version: 3.1.32"
$app2 = ".NET Runtime 5.0"
$app2ver = "Version: 5.0.17"
$app3 = ".NET Runtime 6.0"
$app3ver = "Version: 6.0.26"
$app4 = ".NET Runtime 7.0"
$app4ver = "Version: 7.0.15"
$app5 = ".NET Runtime 8.0"
$app5ver = "Version: 8.0.1"
$app6 = "Oracle JAVA Runtime Environment 8.0"
$app6ver = "Version: 8.0.4010.10"
$app7 = "MS VS C++ Redistributable 2005 x64"
$app7ver = "Version: 8.0.61000"
$app8 = "MS VS C++ Redistributable 2005 x86"
$app8ver = "Version: 8.0.61001"
$app9 = "MS VS C++ Redistributable 2008 x64"
$app9ver = "Version: 9.0.30729.6161"
$app10 = "MS VS C++ Redistributable 2008 x86"
$app10ver = "Version: 9.0.30729.6161"
$app11 = "MS VS C++ Redistributable 2010 x64"
$app11ver = "Version: 10.0.40219"
$app12 = "MS VS C++ Redistributable 2010 x86"
$app12ver = "Version: 10.0.40219"
$app13 = "MS VS C++ Redistributable 2012 x64"
$app13ver = "Version: 11.0.61030.0"
$app14 = "MS VS C++ Redistributable 2012 x86"
$app14ver = "Version: 11.0.61030.0"
$app15 = "MS VS C++ Redistributable 2013 x64"
$app15ver = "Version: 12.040664.0"
$app16 = "MS VS C++ Redistributable 2013 x86"
$app16ver = "Version: 12.040664.0"
$app17 = "MS VS C++ Redistributable 2015 UWP Desktop"
$app17ver = "Version: 14.0.33321.0"
$app18 = "MS VS C++ Redistributable 2015-2022 x64"
$app18ver = "Version: 14.38.33135.0"
$app19 = "MS VS C++ Redistributable 2015-2022 x86"
$app19ver = "Version: 14.38.33130.0"
$app20 = "MS VS C++ Redistributable 2017"
$app20ver = "Version: 14.16.27033"
$app21 = "MS XNA Redistributable Framework"
$app21ver = "Version: 4.0.30901.0"
$app22 = ".NET Framework"
$app22ver = "Version: 4.8.1"
$app23 = "OpenAL Framework"
$app23ver = "Version: 1.1"
$app24 = "Microsoft Edge"
$app24ver = "Version: Latest"
$app25 = "Microsoft Windows Terminal"
$app25ver = "Version: 1.19.10302.0"
$app26 = "Microsoft Windows Powershell"
$app26ver = "Version: 7.4.1.0"	



# WinGet Mandatory Software Install

Write-Host "Processing Step 1 of 4: System Pre-Requisities, including PowerShell Package Management Modules..." -Foreground Color Yellow
Write-Host
Write-Host
Write-Host
Set-ExecutionPolicy unrestricted -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


Set-ExecutionPolicy -Scope LocalMachine unrestricted -Force -ErrorAction SilentlyContinue
Set-ExecutionPolicy -Scope CurrentUser unrestricted -Force -ErrorAction SilentlyContinue

$PSModule9 = "NuGet"
$PSModule10 = "OneGet"
$PSModule11 = "WinGet"
$PSModule12 = "Program Management Module"


Write-Host
Write-Host 
Write-Host "Installing: $PSModule9..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name NuGet -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule9..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name NuGet -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule10..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name PackageManagement -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule10..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name PackageManagement -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule11..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name WinGet -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSmodule11..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name WinGet -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name ProgramManagement -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name ProgramManagement -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Stop-Transcript

Start-Transcript -Path "C:\Logs\Powershell\Standard\$env:computername-OSDPowerShellModules.log"
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host "Processing Step 2 of 4: OSD PowerShell Modules..." -Foreground Color Yellow
Write-Host


$PSModule1 = "OSD Module"
$PSModule2 = "OSD SUS Module"
$PSModule3 = "OSD Builder Module"
$PSModule4 = "OSD Update & Update Catalog Module"
$PSModule5 = "OSD Drivers Module"
$PSModule6 = "OSD Cloud Modules"
$PSModule7 = "OSD Software Module"
$PSModule8 = "OSD Deploy Module"
$PSModule13 = "Windows Update Module"


Write-Host
Write-Host
Write-Host "Accessing www.powershellgallery.com package database to install Powershell Modules..." -ForegroundColor Green
Write-Host
Write-Host
Write-Host "Installing: $PSModule1..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSD -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule1..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSD -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host	
Write-Host "Installing: $PSModule2..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSDSUS -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule2..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDSUS -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host		
Write-Host "Installing: $PSModule3..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSDBuilder -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule3..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDBuilder -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host		
Write-Host "Installing: $PSModule4..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSDUpdate -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule4..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDUpdate -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule4..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 		
Install-Module -Name OSDCatalog -Repository PSGallery -Force -AllowClobber 
Start-Sleep -Seconds 5		
Write-Host
Write-Host "Importing: $PSModule4..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDCatalog -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule5..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSDDrivers -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule5..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDDrivers -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host		
Write-Host "Installing: $PSModule6 - 1 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name OSDCloudCLI -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule6 - 2 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan		
Install-Module -Name OSDCloudGUI -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule6 - 3 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan		
Install-Module -Name AutopilotOOBE -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule6 - 4 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan	
Install-Module -Name OSDCloudAzure -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule6 - 5 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan		
Install-Module -Name Azure -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule6 - 6 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan		
Install-Module -Name AzureAD -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule6 - 7 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name Az.Accounts -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule6 - 8 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name Az.KeyVault -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule6 - 9 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name Az.Resources -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule6 - 10 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name Az.Storage -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule6 - 11 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name Microsoft.Graph.DeviceManagement -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5	
Write-Host
Write-Host "Installing: $PSModule6 - 12 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Install-Module -Name PSCloudPC -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule6 - 1 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name OSDCloudCLI -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule6 - 2 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name OSDCloudGUI -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule6 - 3 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name AutopilotOOBE -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule6 - 4 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name OSDCloudAzure -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule6 - 5 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name Azure -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule6 - 6 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name AzureAD -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule6 - 7 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name Az.Accounts -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule6 - 8 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name Az.KeyVault -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule6 - 9 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name Az.Resources -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule6 - 10 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name Az.Storage -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule6 - 11 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name Microsoft.Graph.DeviceManagement -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule6 - 12 of 12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan
Import-Module -Name PSCloudPC -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host		
Write-Host "Installing: $PSModule7..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSDSoftware -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule7..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDSoftware -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host		
Write-Host "Installing: $PSModule8..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name OSDeploy -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule8..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name OSDeploy -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host		
Write-Host "Installing: $PSModule13..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name PSWindowsUpdate -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule13..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name PSWindowsUpdate -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Stop-Transcript 


Start-Transcript -Path "C:\Logs\Powershell\Standard\$env:computername-SoftwareInstall.log"

Write-Host "Processing Step 3 of 4: Software Installation..." -Foreground Color Yellow  
Write-Host
Write-Host
Write-Host "Processing: Mandatory System Software Pre-Requisites" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host "Installing: $app1, $app1ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id  Microsoft.DotNet.Runtime.3_1 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing: $app2, $app2ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.DotNet.Runtime.5 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app3, $app3ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.DotNet.Runtime.6 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app4, $app4ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.DotNet.Runtime.7 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app5, $app5ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.DotNet.Runtime.8 --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app6, $app6ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Oracle.JavaRuntimeEnvironment --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app7, $app7ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2005.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app8, $app8ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2005.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app9, $app9ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2008.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app10, $app10ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2008.x86 --exact --accept-source-agreements --accept-source-agreements  --force
		
Write-Host "Installing: $app11, $app11ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2010.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app12, $app12ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2010.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app13, $app13ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2012.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app14, $app14ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2012.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app15, $app15ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2013.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app16, $app16ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2013.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app17, $app17ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install Microsoft.VCLibs.Desktop.14 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app18, $app18ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2015+.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app19, $app19ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2015+.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app20, $app20ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco install vcredist2017 -y
		
Write-Host "Installing: $app21, $app21ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.XNARedist --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app22, $app22ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco install dotnetfx -y
		
Write-Host "Installing: $app23, $app23ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco install openal -y
	
Write-Host "Installing: $app24, $app24ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.Edge --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app25, $app25ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.WindowsTerminal --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app26, $app26ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.PowerShell --exact --accept-source-agreements --accept-source-agreements --force
	
Write-Host "Finished Installing System related software..." -ForegroundColor Yellow

####################################################################
### STANDARD SYSTEM SOFTWARE VARIABLES AND INSTALL             #####
####################################################################

$app27 = "Google Chrome for Enterprise"
$app28 = "Mozilla Firefox"
$app29 = "Google Drive"
$app30 = "Nextcloud Desktop Client"
$app31 = "DropBox"
$app32 = "Microsoft OneDrive"
$app33 = "User Profile Backup and Restore"
$app34 = "FileZilla"
$app35 = "PuTTy"
$app36 = "WinSCP"
$app37 = "Steam"
$app38 = "VLC Media Player"
$app39 = "MediaInfo"
$app40 = "MakeMKV"
$app41 = "Handbrake"
$app42 = "PowerISO"
$app43 = "Audacity and FFMPEG"
$app44 = "Logitech MyHarmony"
$app45 = "MKVToolNix"
$app46 = "Apple iTunes"
$app47 = "GIMP"
$app48 = "VS Code"
$app50 = "Notepad ++"
$app51 = "CCleaner"
$app52 = "7-Zip"
$app53 = "Driver Booster"
$app54 = "VMWare Horizon Remote Desktop Connection Client"
$app55 = "AnyDesk"
$app56 = "Windows 22H2 SDK"
$app57 = "Windows 22H2 ADK"
$app58 = "Windows 22H2 PE Add-On"
$app59 = "Microsoft Office 2021 LTSC"
$app60 = "Adobe Acrobat Reader DC 64-Bit"
$app61 = "Malwarebytes Anti-Malware"
$app62 = "CMTrace"


# Web Browsers
Write-Host
Write-Host
Write-Host
Write-Host "Processing: Web Browsers" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host	
Write-Host "Installing: $app27 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app28 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Mozilla.Firefox --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host
Write-Host
Write-Host
Write-Host "Processing: Cloud Backup Software" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host

# Cloud Backup Software

Write-Host "Installing: $app30 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Google.GoogleDrive --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app31 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Nextcloud.NextcloudDesktop --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app32 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Dropbox.Dropbox --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app33 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.OneDrive --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host
Write-Host
Write-Host
Write-Host "Processing: File Transfer Software" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host

# File Transfer Software 

Write-Host "Installing: $app34 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco install filezilla  -y

Write-Host "Installing: $app35 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id PuTTY.PuTTY --exact --accept-source-agreements --architecture x64  --accept-source-agreements --force

Write-Host "Installing: $app36 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id WinSCP.WinSCP --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host
Write-Host
Write-Host
Write-Host "Processing: Gaming Software" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host

# Gaming Software

Write-Host "Installing: $app37 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Valve.Steam --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host
Write-Host
Write-Host
Write-Host "Processing: Media Software" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host


# Media-related software

Write-Host "Installing: $app38 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app39 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app40 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id GuinpinSoft.MakeMKV --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app41 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app42 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id PowerSoftware.PowerISO --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app43 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id Audacity.Audacity --exact --accept-source-agreements  --accept-source-agreements --force
choco install audacity-ffmpeg -y

Write-Host "Installing: $app44 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app45 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app46 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app47 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id GIMP.GIMP --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host
Write-Host
Write-Host
Write-Host "Processing: Programming Software" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host

# Programming Software

Write-Host "Installing $app48 on $env:computername ..." -ForegroundColor Yellow
winget install --id Microsoft.VisualStudioCode --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host
Write-Host
Write-Host
Write-Host "Processing: System Utilities Software" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host

# Utilities Software

Write-Host "Installing: $app50 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Piriform.CCleaner --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app51 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Notepad++.Notepad++ --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app52 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id 7zip.7zip --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing: $app53 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id IObit.DriverBooster --exact --accept-source-agreements --accept-source-agreements --force
Write-Host
Write-Host
Write-Host
Write-Host "Processing: Remote Desktop Access Software" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host

# Remote Desktop Software
Write-Host "Installing: $app54 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id VMware.HorizonClient --exact --accept-source-agreements --accept-source-agreements --force
choco install vmware-horizon-client -y

Write-Host "Installing: $app55 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id AnyDeskSoftwareGmbH.AnyDesk --exact --accept-source-agreements --accept-source-agreements --force

# Utilities Software

Write-Host
Write-Host
Write-Host
Write-Host "Processing: Downloading Files" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host
Write-Host "Accessing OSD Cloud\User Profile Backup Restore GitHub Repo from OSDCloudCline to download User Profile Backup and Restore utility..." -ForegroundColor Cyan
Write-Host
Write-Host 
Write-Host "Processing and Downloading: User Profile Backup and Restpre..." -ForegroundColor Cyan

$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$UPBRUrl = "https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"
$UPBROrgFile = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
$UPBRNewName = "C:\OSDCloud\GitHub\downloads\UPBR.exe"

Write-Output "Download URL: $UPBRUrl" -Verbose
Write-Output "Local Folder: $OSDCloudGHdownloads" -Verbose
Write-Output "Original Filename: $UPBROrgFile" -Verbose
Write-Output "New Filename: $UPBRNewName" -Verbose

Save-WebFile -SourceUrl $UPBRUrl -DestinationDirectory $OSDCloudGHdownloads
Rename-Item -Path $UPBROrgFile -NewName $UPBRNewName
Copy-Item -Path $UPBRNewName -Destination "$env:username\Desktop"

Write-Host
Write-Host
Write-Host
Write-Host "Acquiring $app56 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -ForegroundColor Cyan 
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2SDK = "C:\OSDCloud\GitHub\downloads\winsdksetup.exe"
$Win11_22H2SDKUrl = "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe"


Write-Host "Processing and Downloading: $app56 Setup File..." -ForegroundColor Cyan

Write-Output "Download URL: $Win11_22H2SDKUrl" -Verbose
Write-Output "Local Folder: $OSDCloudGHdownloads" -Verbose
Write-Output "Filename: $Win11_22H2SDK" -Verbose

Save-WebFile -SourceUrl $Win11_22H2SDKUrl -DestinationDirectory $OSDCloudGHdownloads
Write-Host
Write-Host
Write-Host
Write-Host "Acquiring $app57 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -ForegroundColor Cyan 

$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2ADK = "C:\OSDCloud\GitHub\downloads\adksetup.exe"
$Win11_22H2ADKUrl = "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe"

Write-Host "Processing and Downloading: $app57 Setup File..." -ForegroundColor Cyan

Write-Output "Download URL: $Win11_22H2ADKUrl" -Verbose
Write-Output "Local Folder: $OSDCloudGHdownloads" -Verbose
Write-Output "Filename: $Win11_22H2ADK" -Verbose

Save-WebFile -SourceUrl $Win11_22H2ADKUrl -DestinationDirectory $OSDCloudGHdownloads
Write-Host
Write-Host
Write-Host
Write-Host "Acquiring $app58 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -ForegroundColor Cyan 

$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2PEADK = "C:\OSDCloud\GitHub\downloads\adkwinpesetup.exe"
$Win11_22H2PEADKUrl = "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe"

Write-Host "Processing and Downloading: $app58 Setup File..." -ForegroundColor Cyan

Write-Output "Download URL: $Win11_22H2PEADKUrl" -Verbose
Write-Output "Local Folder: $OSDCloudGHdownloads" -Verbose
Write-Output "Filename: $Win11_22H2PEADK" -Verbose

Save-WebFile -SourceUrl $Win11_22H2PEADKUrl -DestinationDirectory $OSDCloudGHdownloads
Write-Host
Write-Host
Write-Host

Write-Host "Acquiring: $app59..." -ForegroundColor Cyan 
$Office = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Office2021.ps1")
Invoke-Expression $($Office.Content)

Write-Host
Write-Host
Write-Host
Write-Host "Processing: $app62..." -ForegroundColor Cyan 

$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$CMTraceUrl = "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/CMTrace.exe"
$CMTrace = "C:\OSDCloud\GitHub\downloads\CMTrace.exe"

Write-Output "Download URL: $CMTraceUrl" -Verbose
Write-Output "Local Folder: $OSDCloudGHdownloads" -Verbose
Write-Output "Filename: $CMTrace" -Verbose

Save-WebFile -SourceUrl $CMTraceUrl -DestinationDirectory $OSDCloudGHdownloads
Write-Host
Write-Host
Write-Host "Processing: Installing Windows 11 22H2 SDK, ADK, and PE ADK Add-On" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host
Start-Process -FilePath $Win11_22H2SDK
pause


Start-Process -FilePath $Win11_22H2ADK
pause


Start-Process -FilePath $Win11_22H2PEADK
pause

Write-Host
Write-Host
Write-Host
Write-Host "Processing: Productivity Software" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host

Write-Host "Processing: $app59..." -ForegroundColor Cyan 
$OfficeExtract = "C:\OSDCloud\GitHub\downloads\Office"
$OfficeSetupCMD = "C:\OSDCloud\GitHub\downloads\Office\OfficeCDNSetup.cmd"
$Office2021DL = "C:\OSDCloud\GitHub\downloads\Office\OfficeCDNDownload.cmd"

Write-Host "Downloading $app59 installation files..." -ForegroundColor Cyan
Start-Process -FilePath $Office2021DL
pause
Write-Host "Installing $app59..." -ForegroundColor Cyan 
Start-Process -FilePath $OfficeSetupCMD
pause

Write-Host "Processing: $app60..." -ForegroundColor Cyan 
winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements --accept-source-agreements --force
Write-Host
Write-Host
Write-Host "Processing: Security Software" -ForegroundColor Yellow
Write-Host
Write-Host

Write-Host "Processing: $app61..." -ForegroundColor Cyan 
winget install --id Malwarebytes.Malwarebytes --exact --accept-source-agreements --accept-source-agreements --force
Stop-Transcript



Start-Transcript -Path "C:\Logs\Powershell\Standard\$env:computername-RegistryImports.log"
Write-Host
Write-Host
Write-Host
Write-Host "Processing Step 4 of 4: System Customizations..." -Foreground Color Yellow 
Write-Host
Write-Host
Write-Host
Write-Host "Importing Registry entries..." -ForegroundColor Cyan

$Regedit = "$env:windir\regedit.exe"

$OSDRegLocalPath = "C:\OSDCloud\GitHub\downloads\Registry"

$OSDRegPath1 = "$OSDRegLocalPath\AcrobatDisableCloudServices.reg"
$OSDRegPath2 = "$OSDRegLocalPath\AdobeCC2019.reg"
$OSDRegPath3 = "$OSDRegLocalPath\AdobeCC2019-AcrobatREGEntries.reg"
$OSDRegPath4 = "$OSDRegLocalPath\AdobeReg1.reg"
$OSDRegPath5 = "$OSDRegLocalPath\AdobeReg2.reg"
$OSDRegPath6 = "$OSDRegLocalPath\PCMark10.reg"
$OSDRegPath7 = "$OSDRegLocalPath\AddCopyToMoveTo.reg"
$OSDRegPath8 = "$OSDRegLocalPath\AddSafeMode.reg"
$OSDRegPath9 = "$OSDRegLocalPath\CheckForUpdates.reg"
$OSDRegPath10 = "$OSDRegLocalPath"

$OSDRegFileName1 = "AcrobatDisableCloudServices.reg"
$OSDRegFileName2 = "AdobeCC2019.reg"
$OSDRegFileName3 = "AdobeCC2019-AcrobatREGEntries.reg"
$OSDRegFileName4 = "AdobeReg1.reg"
$OSDRegFileName5 = "AdobeReg2.reg"
$OSDRegFileName6 = "PCMark10.reg"
$OSDRegFileName7 = "AddCopyToMoveTo.reg"
$OSDRegFileName8 = "AddSafeMode.reg"
$OSDRegFileName9 = "CheckForUpdates.reg"
$OSDRegFileName10 = ""

$OSDRegType1 = "SYSTEM"
$OSDRegType2 = "SOFTWARE"

$SYSOSDREGUrl = ""
$SOFTOSDRegUrl = ""

$ArgsList1 = '/s{0}'-f$OSDRegPath1
$ArgsList2 = '/s{0}'-f$OSDRegPath2
$ArgsList3 = '/s{0}'-f$OSDRegPath3
$ArgsList4 = '/s{0}'-f$OSDRegPath4
$ArgsList5 = '/s{0}'-f$OSDRegPath5
$ArgsList6 = '/s{0}'-f$OSDRegPath6
$ArgsList7 = '/s{0}'-f$OSDRegPath7
$ArgsList8 = '/s{0}'-f$OSDRegPath8
$ArgsList9 = '/s{0}'-f$OSDRegPath9
$ArgsList10 = '/s{0}'-f$OSDRegPath10

Write Host "Processing Registry Entry 1 of 10..." -ForegroundColor Yellow 
Write-Output "Download URL: $SOFTOSDRegUrl" -Verbose
Write-Output "Registry File Name: $OSDRegFileName1" -Verbose
Write-Output "Registry File: $OSDRegPath1" -Verbose
Write-Output "Registry Import Type: SOFTWARE" -Verbose
Write-Output "Local Path: $OSDRegLocalPath" -Verbose
Write-Output "Args Applied: $ArgsList1" -Verbose
Start-Process -FilePath $Regedit -ArgumentList $ArgsList1

Write Host "Processing Registry Entry 2 of 10..." -ForegroundColor Yellow 
Write-Output "Download URL: $SOFTOSDRegUrl" -Verbose
Write-Output "Registry File Name: $OSDRegFileName2" -Verbose
Write-Output "Registry File: $OSDRegPath2" -Verbose
Write-Output "Registry Import Type: SOFTWARE" -Verbose
Write-Output "Local Path: $OSDRegLocalPath" -Verbose
Write-Output "Args Applied: $ArgsList2" -Verbose
Start-Process -FilePath $Regedit -ArgumentList $ArgsList2

Write Host "Processing Registry Entry 3 of 10..." -ForegroundColor Yellow 
Write-Output "Download URL: $SOFTOSDRegUrl" -Verbose
Write-Output "Registry File Name: $OSDRegFileName3" -Verbose
Write-Output "Registry File: $OSDRegPath4" -Verbose
Write-Output "Registry Import Type: SOFTWARE" -Verbose
Write-Output "Local Path: $OSDRegLocalPath" -Verbose
Write-Output "Args Applied: $ArgsList3" -Verbose
Start-Process -FilePath $Regedit -ArgumentList $ArgsList3

Write Host "Processing Registry Entry 4 of 10..." -ForegroundColor Yellow 
Write-Output "Download URL: $SOFTOSDRegUrl" -Verbose
Write-Output "Registry File Name: $OSDRegFileName4" -Verbose
Write-Output "Registry File: $OSDRegPath4" -Verbose
Write-Output "Registry Import Type: SOFTWARE" -Verbose
Write-Output "Local Path: $OSDRegLocalPath" -Verbose
Write-Output "Args Applied: $ArgsList4" -Verbose
Start-Process -FilePath $Regedit -ArgumentList $ArgsList4

Write Host "Processing Registry Entry 5 of 10..." -ForegroundColor Yellow 
Write-Output "Download URL: $SOFTOSDRegUrl" -Verbose
Write-Output "Registry File Name: $OSDRegFileName5" -Verbose
Write-Output "Registry File: $OSDRegPath5" -Verbose
Write-Output "Registry Import Type: SOFTWARE" -Verbose
Write-Output "Local Path: $OSDRegLocalPath" -Verbose
Write-Output "Args Applied: $ArgsList5" -Verbose
Start-Process -FilePath $Regedit -ArgumentList $ArgsList5

Write Host "Processing Registry Entry 6 of 10..." -ForegroundColor Yellow 
Write-Output "Download URL: $SOFTOSDRegUrl" -Verbose
Write-Output "Registry File Name: $OSDRegFileName6" -Verbose
Write-Output "Registry File: $OSDRegPath6" -Verbose
Write-Output "Registry Import Type: SOFTWARE" -Verbose
Write-Output "Local Path: $OSDRegLocalPath" -Verbose
Write-Output "Args Applied: $ArgsList6" -Verbose
Start-Process -FilePath $Regedit -ArgumentList $ArgsList6

Write Host "Processing Registry Entry 7 of 10..." -ForegroundColor Yellow 
Write-Output "Download URL: $OSDRegUrl" -Verbose
Write-Output "Registry File Name: $OSDRegFileName7" -Verbose
Write-Output "Registry File: $OSDRegPath7" -Verbose
Write-Output "Registry Import Type: " -Verbose
Write-Output "Local Path: $OSDRegLocalPath" -Verbose
Write-Output "Args Applied: $ArgsList7" -Verbose
Start-Process -FilePath $Regedit -ArgumentList $ArgsList7

Write Host "Processing Registry Entry 8 of 10..." -ForegroundColor Yellow 
Write-Output "Download URL: $OSDRegUrl" -Verbose
Write-Output "Registry File Name: $OSDRegFileName8" -Verbose
Write-Output "Registry File: $OSDRegPath8" -Verbose
Write-Output "Registry Import Type: " -Verbose
Write-Output "Local Path: $OSDRegLocalPath" -Verbose
Write-Output "Args Applied: $ArgsList8" -Verbose
Start-Process -FilePath $Regedit -ArgumentList $ArgsList8

Write Host "Processing Registry Entry 9 of 10..." -ForegroundColor Yellow 
Write-Output "Download URL: $OSDRegUrl" -Verbose
Write-Output "Registry File Name: $OSDRegFileName9" -Verbose
Write-Output "Registry File: $OSDRegPath9" -Verbose
Write-Output "Registry Import Type: " -Verbose
Write-Output "Local Path: $OSDRegLocalPath" -Verbose
Write-Output "Args Applied: $ArgsList9" -Verbose
Start-Process -FilePath $Regedit -ArgumentList $ArgsList9

Write Host "Processing Registry Entry 10 of 10..." -ForegroundColor Yellow 
Write-Output "Download URL: $OSDRegUrl" -Verbose
Write-Output "Registry File Name: $OSDRegFileName10" -Verbose
Write-Output "Registry File: $OSDRegPath10" -Verbose
Write-Output "Registry Import Type: " -Verbose
Write-Output "Local Path: $OSDRegLocalPath" -Verbose
Write-Output "Args Applied: $ArgsList10" -Verbose
Start-Process -FilePath $Regedit -ArgumentList $ArgsList10
Write-Host
Write-Host
Write-Host "Registry Imports completed..." -ForegroundColor Green
Stop-Transcript

Start-Transcript -Path "C:\Logs\Powershell\Standard\$env:computername-WindowsFeatures-RSAT.log"
Write-Host
Write-Host
Write-Host
Write-Host "Processing Step 4 of 4: System Customizations..." -Foreground Color Yellow 
Write-Host
Write-Host
Write-Host

$OSFeature1 = "Windows RSAT Tools"
Write-Host "Processing: $OSFeature1..." -ForegroundColor Cyan
Get-WindowsCapability -Name RSAT* -Online | Add-WindowsCapability -Online
Start-Process ms-settings:optionalfeatures
Stop-Transcript


exit
