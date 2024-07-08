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

$PSProvider1 = "Package Management (Oneget)"
$PSProvider2 = "NuGet"
$PSProvider3 = "WinGet"


Write-Verbose "Installing: $PSProvider1..." -Verbose
Install-PackageProvider -Name PackageManagement -Force -Source PSGallery

Write-Verbose "Importing: $PSProvider1..." -Verbose
Import-PackageProvider -Name PackageManagement -Force -Source PSGallery

Write-Verbose "Installing: $PSProvider2..." -Verbose
Install-PackageProvider -Name nuget -Force -Source PSGallery

Write-Verbose "Importing: $PSProvider2..." -Verbose
Import-PackageProvider -Name nuget -Force -Source PSGallery

Write-Verbose "Installing: $PSProvider3..." -Verbose
Install-PackageProvider -Name WinGet -Force -Source PSGallery

Write-Verbose "Importing: $PSProvider3..." -Verbose
Import-PackageProvider -Name WinGet -Force -Source PSGallery

Stop-Transcript
