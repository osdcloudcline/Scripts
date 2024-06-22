Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$SMSource = "OSDCloud Cline\Scripts\Start Menu Configurations\Standard"

Write-Host "This computer has been installed with the Standard Configuration of software" -ForgroundColor Green
Write-Host
Write-Host "The STANDARD Start Menu layout will now be downloaded from $SMSource to $env:userprofile and configured on $env:computername..." -ForegroundColor Cyan
