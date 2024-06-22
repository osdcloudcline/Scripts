Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$HoneypotLogFileFolder = (Test-Path -Path "C:\OSDCloud\DeploymentLogs\Corporate" -IsValid){

$SMSource = "OSDCloud Cline\Scripts\Start Menu Configurations\Honeypot"

Write-Host "This computer has been installed with the Honeypot Configuration of software" -ForgroundColor Green
Write-Host
Write-Host "The Honeypot Start Menu layout will now be downloaded from $SMSource to $env:userprofile and configured on $env:computername..." -ForegroundColor Cyan
