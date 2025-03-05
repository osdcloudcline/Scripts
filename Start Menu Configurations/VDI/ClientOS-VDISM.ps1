
Import-Module -Name OSD -Force


$SMSource = "OSDCloud Cline\Scripts\Start Menu Configurations\Client OS\VDI"

Write-Host "This computer has been installed with the VDI Remote Desktop Configuration of software" -ForgroundColor Green
Write-Host
Write-Host "The VDI Start Menu layout will now be downloaded from $SMSource to $env:userprofile and configured on $env:computername..." -ForegroundColor Cyan
