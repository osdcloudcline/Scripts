Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$CORPLogFileFolder = (Test-Path -Path "C:\OSDCloud\DeploymentLogs\Corporate" -IsValid){
Write-Host "This computer has been installed with the Corporate Configuration of software" -ForgroundColor Green
Write-Host
Write-Host "The Corporate Start Menu layout will now be downloaded from OSDCloud Cline\Scripts\Start Menu Configurations to $env:userprofile and configured on $env:computername..." -ForegroundColor Cyan
