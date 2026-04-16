# 1. Define variables first
$CloudModule1 = "Windows 365 Cloud PC"
$ModuleName = "PSCloudPC"


$PS7 = "C:\Program Files\PowerShell\7\pwsh.exe" 


Write-Verbose "Installing: $CloudModule1..." -Verbose


# 2. Ensure PSResourceGet is present
Install-Module -Name Microsoft.PowerShell.PSResourceGet -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name Microsoft.PowerShell.PSResourceGet -Force

# 3. Install the Cloud PC module directly
# Using -TrustRepository and -AcceptLicense for silent automation
Start-Process -FilePath $PS7 | Install-PSResource -Name PSCloudPC -Version 1.0.17

# 4. Verification
Write-Verbose "Verifying Module: $CloudModule1..." -Verbose
$installedModule = Get-Module -ListAvailable | Where-Object {$_.Name -eq $ModuleName}

if ($installedModule) {
    Write-Host "Successfully installed $ModuleName" -ForegroundColor Green
} else {
    Write-Warning "Module $ModuleName was not found after installation."
}
