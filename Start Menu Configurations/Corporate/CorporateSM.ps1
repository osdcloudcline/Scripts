$SMCorporateLog = "C:\Logs\OSDCloud\Start Menu\$env:computername-Corporate.log"

Start-Transcript -FilePath $SMCorporateLog

Import-Module -Name OSD -Force


$SMSource = "OSDCloud Cline\Scripts\Start Menu Configurations\Corporate"

Write-Host "This computer has been installed with the Corporate Configuration of software" -ForgroundColor Green
Write-Host
Write-Host "The Corporate Start Menu layout will now be downloaded from $SMSource to $env:userprofile and configured on $env:computername..." -ForegroundColor Cyan

$StartMenudownload = "C:\downloads\StartMenu\Corporate"

Write-Verbose "Acquiring CORPORATE start2.bin for Start Menu Configuration..." -Verbose
Save-WebFile -SourceUrl -DestinationDirectory $StartMenudownload

Write-Host "Applying changes to Start Menu on $env:computername..." -ForegroundColor Cyan 
$StartMenuBINFile = "C:\downloads\StartMenu\Corporate\start2.bin"
$SMDestination = "C:\Users\$env:username\AppData\Local\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\LocalState"
Write-Verbose "Copying Start Menu file to $SMDestination...." -Verbose
Copy-Item -Path $StartMenuBINFile -Destination $SMDestination -Force 

Stop-Transcript
