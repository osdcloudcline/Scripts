$PSProvidersLogs = "C:\OSDCloud\DeploymentLogs\PSProviders\$env:computername-PSProviders.log"
Start-Transcript -Path $PSProvidersLogs
Get-Date 

############################
### PS Module Group Names ##
############################

$PMGroup = "Operating System Package Providers"

#############################
## PS Package Providers   ##
#############################

$PSPackageModule = "Package Management"
$PSProvider1 = "PowerShellGet (Oneget)"
$PSProvider2 = "NuGet"
$PSProvider3 = "WinGet"
$PSProvider4 = "Chocolatey"



Write-Verbose "Installing: $PSPackageModule..." -Verbose
Install-Module -Name PackageManagement -Force -Source PSGallery
Start-Sleep -Seconds 5
Write-Host

Write-Verbose "Installing: $PSProvider1..." -Verbose
Install-PackageProvider -Name PowerShellGet -RequiredVersion 2.2.5.0 -Force -Source PSGallery
Start-Sleep -Seconds 5
Write-Host

Write-Verbose "Importing: $PSProvider1..." -Verbose
Import-PackageProvider -Name PowerShellGet -Force 
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $PSProvider2..." -Verbose
Install-PackageProvider -Name NuGet -RequiredVersion 3.0.0.1 -Force -Source PSGallery
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Importing: $PSProvider2..." -Verbose
Import-PackageProvider -Name NuGet -Force 
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $PSProvider3..." -Verbose
Install-PackageProvider -Name WinGet -RequiredVersion 0.0.8.0 -Force 
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Importing: $PSProvider3..." -Verbose
Import-PackageProvider -Name WinGet -Force 
Start-Sleep -Seconds 5
Write-Host
Write-Verbose "Installing: $PSProvider4..." -Verbose
Set-ExecutionPolicy unrestricted -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Start-Sleep -Seconds 5
Write-Host

Stop-Transcript
