Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$ADVLogFileFolder = (Test-Path -Path "C:\OSDCloud\DeploymentLogs\ADV" -IsValid){
Write-Host "This computer has been installed with the Advanced Configuration of software" -ForgroundColor Green
Write-Host
Write-Host "The Advanced Start Menu layout will not be acquired from OSDCloud Cline\Scripts\Start Menu Configurations and configured on $env:computername..." -ForegroundColor Cyan

$StartMenudownload = "C:\OSDCloud\GitHub\downloads\StartMenu\Advanced"

Write-Verbose "Acquiring ADVANCED Start2.bin for Start Menu Configuration..." -Verbose
Save-WebFile -SourceUrl -DestinationDirectory $StartMenudownload

Write-Host "Applying changes to Start Menu on $env:computername..." -ForegroundColor Cyan 
$StartMenuBINFile = "C:\OSDCloud\GitHub\downloads\StartMenu\Advanced\Start2.bin"
$SMDestination = "C:\Users\$env:username\AppData\Local\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\LocalState"
Write-Verbose "Copying Start Menu file to $SMDestination...." -Verbose
Copy-Item -Path $StartMenuBINFile -Destination $SMDestination -Force 
