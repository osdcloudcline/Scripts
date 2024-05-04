Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$ADVLogFileFolder = (Test-Path -Path "C:\OSDCloud\DeploymentLogs\ADV" -IsValid){
Write-Host "This computer has been installed with the Advanced Configuration of software" -ForgroundColor Green
Write-Host
Write-Host "The Advanced Start Menu layout will not be acquired from OSDCloud Cline\Scripts\Start Menu Configurations and configured on $env:computername..." -ForegroundColor Cyan

