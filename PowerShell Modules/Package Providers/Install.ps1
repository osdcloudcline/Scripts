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


