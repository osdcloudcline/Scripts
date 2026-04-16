# 1. Define variables first
$CloudModule1 = "Windows 365 Cloud PC"
$ModuleName = "PSCloudPC"


$PS7 = "C:\Program Files\PowerShell\7\pwsh.exe" 


Write-Verbose "Installing: $CloudModule1..." -Verbose



Install-Module Microsoft.PowerShell.PSResourceGet -AllowClobber -SkipPublisherCheck -Force
Start-Process -FilePath $PS7 | Install-PSResource -Name PSCloudPC -Repository PSGallery -TrustRepository -AcceptLicense
Start-Sleep -Seconds 5
Start-Process -FilePath $PS7 | Import-Module -Name PSCloudPC -Force

# 4. Verification
Write-Verbose "Verifying Module: $CloudModule1..." -Verbose
$installedModule = Get-Module -ListAvailable | Where-Object {$_.Name -eq $ModuleName}

if ($installedModule) {
    Write-Host "Successfully installed $ModuleName" -ForegroundColor Green
} else {
    Write-Warning "Module $ModuleName was not found after installation."
}
