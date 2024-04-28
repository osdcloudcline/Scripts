####################################################################
### SYSTEM SOFTWARE VARIABLES AND UPGRADES                     #####
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

Write-Host "Configuring Pre-Requisities for Software Installation..." -ForegroundColor Green
Set-ExecutionPolicy unrestricted -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Start-Transcript -Path "C:\Logs\Powershell\PreReqSoftwareInstall.log"
Set-ExecutionPolicy -Scope LocalMachine unrestricted -Force -ErrorAction SilentlyContinue
Set-ExecutionPolicy -Scope CurrentUser unrestricted -Force -ErrorAction SilentlyContinue

$OSDGroup1 = "OSD"
$OSDGroup2 = "OSD: Configuration"
$OSDGroup3 = "OSD: Cloud"
$OSDGroup4 = "OSD: Autopilot, Drivers, Software and Updates"
$OSDGroup5 = "OSD: Microsoft Graph"

$PSModule9 = "NuGet"
$PSModule10 = "OneGet"
$PSModule11 = "WinGet"
$PSModule12 = "Program Management Module"

Write-Host "Updating: $PSModule9..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Update-Module -Name NuGet -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule9..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name NuGet -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Updating: $PSModule10..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Update-Module -Name PackageManagement -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSModule10..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name PackageManagement -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Updating: $PSModule11..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Update-Module -Name WinGet -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host "Importing: $PSmodule11..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name WinGet -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host "Updating: $PSModule12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Update-Module -Name ProgramManagement -Repository PSGallery -Force -AllowClobber
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

Write-Host "Accessing www.powershellgallery.com package database to update Powershell Modules..." -ForegroundColor Cyan 

Write-Host "Updating: $OSDGroup1 Modules..."
Write-Verbose "Updating: $PSModule1..." -Verbose 
Update-Module -Name OSD -Repository PSGallery -Force
Start-Sleep -Seconds 5
Write-Verbose "Importing: $PSModule1..." -Verbose 
Import-Module -Name OSD -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
	
Write-Verbose "Updating: $PSModule2..." -Verbose  
Update-Module -Name OSDSUS -Repository PSGallery -Force 
Start-Sleep -Seconds 5
Write-Verbose "Importing: $PSModule2..." -Verbose 
Import-Module -Name OSDSUS -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
		
Write-Verbose  "Updating: $PSModule3..." -Verbose 
Update-Module -Name OSDBuilder -Repository PSGallery -Force 
Start-Sleep -Seconds 5
Write-Verbose  "Importing: $PSModule3..." -Verbose 
Import-Module -Name OSDBuilder -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
		


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
$CloudModule17 = "Windows 365 Cloud PC"


		
Write-Host "Updating $OSDGroup3 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Updating: $OSDModule4...Module No: 1 of 20" -Verbose
Update-Module -Name OSDCloudCLI -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name OSDCloudCLI -Force
Write-Verbose "Updating: $OSDModule5...Module No: 2 of 20" -Verbose
Update-Module -Name OSDCloudGUI -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name OSDCloudGUI -Force
Write-Verbose "Updating: $OSDModule6...Module No: 3 of 20" -Verbose
Update-Module -Name OSDCloudAzure -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name OSDCloudAzure -Force
Write-Verbose "Updating: $CloudModule1...Module No: 4 of 20" -Verbose
Update-Module -Name Azure -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Azure -Force
Write-Verbose "Updating: $CloudModule2...Module No: 5 of 20" -Verbose
Update-Module -Name Az.Accounts -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.Accounts -Force
Write-Verbose "Updating: $CloudModule3...Module No: 6 of 20" -Verbose
Update-Module -Name Azure.Storage -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Azure.Storage -Force
Write-Verbose "Updating: $CloudModule4...Module No: 7 of 20" -Verbose
Update-Module -Name Az.Resources -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.Resources -Force
Write-Verbose "Updating: $CloudModule5...Module No: 8 of 20" -Verbose
Update-Module -Name Az.KeyVault -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.KeyVault -Force
Write-Verbose "Updating: $CloudModule6...Module No: 9 of 20" -Verbose
Update-Module -Name Az.Compute -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.Compute -Force
Write-Verbose "Updating: $CloudModule7...Module No: 10 of 20" -Verbose
Update-Module -Name Az.Automation -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.Automation -Force
Write-Verbose "Updating: $CloudModule8...Module No: 11 of 20" -Verbose
Update-Module -Name Az.Network -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.Network -Force
Write-Verbose "Updating: $CloudModule9...Module No: 12 of 20" -Verbose
Update-Module -Name Az.ApiManagement -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.ApiManagement -Force
Write-Verbose "Updating: $CloudModule10...Module No: 13 of 20" -Verbose
Update-Module -Name Az.Advisor -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.Advisor -Force
Write-Verbose "Updating: $CloudModule11...Module No: 14 of 20" -Verbose
Update-Module -Name Az.AnalysisServices -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.AnalysisServices -Force
Write-Verbose "Updating: $CloudModule12...Module No: 15 of 20" -Verbose
Update-Module -Name Az.Billing -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.Billing -Force
Write-Verbose "Updating: $CloudModule13...Module No: 16 of 20" -Verbose
Update-Module -Name Az.ApplicationInsights -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.ApplicationInsights -Force
Write-Verbose "Updating: $CloudModule14...Module No: 17 of 20" -Verbose
Update-Module -Name Az.Cdn -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.Cdn -Force
Write-Verbose "Updating: $CloudModule15...Module No: 18 of 20" -Verbose
Update-Module -Name Az.Batch -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.Batch -Force
Write-Verbose "Updating: $CloudModule16...Module No: 19 of 20" -Verbose
Update-Module -Name Az.Monitor -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name Az.Monitor -Force
Write-Verbose "Updating: $CloudModule17...Module No: 20 of 20" -Verbose
Update-Module -Name PSCloudPC -Force -Repository PSGallery
Start-Sleep -Seconds 5
Import-Module -Name PSCloudPC -Force

Write-Host "Updating $OSDGroup4 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose  "Updating: $PSModule4..." -Verbose 
Update-Module -Name OSDUpdate -Repository PSGallery -Force 
Start-Sleep -Seconds 5
Write-Verbose  "Importing: $PSModule4..." -Verbose 
Import-Module -Name OSDUpdate -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Verbose  "Updating: $PSModule4..." -Verbose 		
Update-Module -Name OSDCatalog -Repository PSGallery -Force
Start-Sleep -Seconds 5		
Write-Verbose  "Importing: $PSModule4..." -Verbose 
Import-Module -Name OSDCatalog -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Verbose  "Updating: $PSModule5..." -Verbose 
Update-Module -Name OSDDrivers -Repository PSGallery -Force 
Start-Sleep -Seconds 5
Write-Verbose  "Importing: $PSModule5..." -Verbose 
Import-Module -Name OSDDrivers -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Verbose  "Updating: $PSModule7..." -Verbose 
Update-Module -Name OSDSoftware -Repository PSGallery -Force 
Start-Sleep -Seconds 5
Write-Verbose  "Importing: $PSModule7..." -Verbose 
Import-Module -Name OSDSoftware -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Verbose  "Updating: $PSModule8..." -Verbose 
Update-Module -Name OSDeploy -Repository PSGallery -Force 
Start-Sleep -Seconds 5
Write-Verbose  "Importing: $PSModule8..." -Verbose 
Import-Module -Name OSDeploy -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5		
Write-Verbose  "Updating: $PSModule13..." -Verbose 
Update-Module -Name PSWindowsUpdate -Repository PSGallery -Force 
Start-Sleep -Seconds 5
Write-Verbose  "Importing: $PSModule13..." -Verbose 
Import-Module -Name PSWindowsUpdate -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
		
$MSGraphModule1 = "MS Graph"
$MSGraphModule2 = "MS Graph Intune"
$MSGraphModule3 = "MS Graph Groups"
$MSGraphModule4 = "MS Graph Users"
$MSGraphModule5 = "MS Graph Sites"
$MSGraphModule6 = "MS Graph Mail"
$MSGraphModule7 = "MS Graph Identity Directory Management"
$MSGraphModule8 = "MS Graph Teams"
$MSGraphModule9 = "MS Graph Device Management"




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
$DellModule12 = "Dell Support Info"
$DellModule13 = "Get Dell Driver Packs"
$DellModule14 = "Dell BIOS Driver"







Stop-Transcript 


Start-Transcript -Path "C:\Logs\Powershell\ADVSoftwareUpgrades.log"

Write-Host "Beginning System Software Installation on $env:computername..." -ForegroundColor Green

Write-Host "Updating: $app1, $app1ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id  Microsoft.DotNet.Runtime.3_1 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Updating: $app2, $app2ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.DotNet.Runtime.5 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app3, $app3ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.DotNet.Runtime.6 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app4, $app4ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.DotNet.Runtime.7 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app5, $app5ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.DotNet.Runtime.8 --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app6, $app6ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Oracle.JavaRuntimeEnvironment --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app7, $app7ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2005.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app8, $app8ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2005.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app9, $app9ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2008.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app10, $app10ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2008.x86 --exact --accept-source-agreements --accept-source-agreements  --force
		
Write-Host "Updating: $app11, $app11ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2010.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app12, $app12ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2010.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app13, $app13ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2012.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app14, $app14ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2012.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app15, $app15ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2013.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app16, $app16ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2013.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app17, $app17ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade Microsoft.VCLibs.Desktop.14 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app18, $app18ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2015+.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app19, $app19ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.VCRedist.2015+.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app20, $app20ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco upgrade vcredist2017 -y
		
Write-Host "Updating: $app21, $app21ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.XNARedist --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app22, $app22ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco upgrade dotnetfx -y
		
Write-Host "Updating: $app23, $app23ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco upgrade openal -y
		
Write-Host "Updating: $app24, $app24ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.Edge --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app25, $app25ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.WindowsTerminal --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Updating: $app26, $app26ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Microsoft.PowerShell --exact --accept-source-agreements --accept-source-agreements --force
	
Write-Host "Finished updating System related software..." -ForegroundColor Yellow
