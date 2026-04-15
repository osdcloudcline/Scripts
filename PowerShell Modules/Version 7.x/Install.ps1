# 1. Define variables first
$CloudModule1 = "Windows 365 Cloud PC"
$ModuleName = "PSCloudPC"

Write-Verbose "Installing: $CloudModule1..." -Verbose

# 2. Ensure PSResourceGet is present
Install-Module -Name Microsoft.PowerShell.PSResourceGet -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name Microsoft.PowerShell.PSResourceGet -Force

# 3. Install the Cloud PC module directly
# Using -TrustRepository and -AcceptLicense for silent automation
Install-PSResource -Name $ModuleName -Repository PSGallery -TrustRepository -AcceptLicense -Reinstall

# 4. Verification
Write-Verbose "Verifying Module: $CloudModule1..." -Verbose
$PS7 = "C:\Program Files\PowerShell\7\pwsh.exe" 
$installedModule = Get-Module -ListAvailable | Where-Object {$_.Name -eq $ModuleName}

if ($installedModule) {
    Write-Host "Successfully installed $ModuleName" -ForegroundColor Green
    
    # Launch a new PS7 window and Import the module inside it
    Start-Process -FilePath $PS7 -ArgumentList "-NoExit", "-Command", "Import-Module $ModuleName; Write-Host '$ModuleName Loaded' -Fore Cyan"
} else {
    Write-Warning "Module $ModuleName was not found after installation."
}
