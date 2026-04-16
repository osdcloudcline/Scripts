# Define variables
$ModuleName = "PSCloudPC"

# Ensure PSResourceGet is available and trust the gallery
Set-PSResourceRepository -Name PSGallery -Trusted

Write-Verbose "Installing: $ModuleName..." -Verbose

# Install the PSResourceGet package manager itself if needed
Install-Module -Name Microsoft.PowerShell.PSResourceGet -Force -AllowClobber
Import-Module Microsoft.PowerShell.PSResourceGet

# Reinstall the PSCloudPC module using the new package manager
# The -Reinstall parameter ensures a fresh copy even if it already exists
Install-PSResource -Name $ModuleName -Reinstall

# Verify installation
Get-Module -ListAvailable -Name $ModuleName

