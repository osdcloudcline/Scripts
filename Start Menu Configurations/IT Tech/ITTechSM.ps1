Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$SMSource = "OSDCloud Cline\Scripts\Start Menu Configurations\IT Tech"

Write-Host "This computer has been installed with the IT TECH Configuration of software" -ForgroundColor Green
Write-Host
Write-Host "The IT Tech Start Menu layout will now be downloaded from $SMSource to $env:userprofile and configured on $env:computername..." -ForegroundColor Cyan
