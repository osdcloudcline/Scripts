$SMJBDellLog = "C:\Logs\OSDCloud\Start Menu\$env:computername-JBDell.log"

Start-Transcript -FilePath $SMJBDellLog

Import-Module -Name OSD -Force


$SMSource = "OSDCloud Cline\Scripts\Start Menu Configurations\Custom\JB Dell"
$JBDellSMFileURL = ""

Write-Host
Write-Host "A customized Start Menu for this PC will now be downloaded from $SMSource to $env:userprofile and configured on $env:computername..." -ForegroundColor Cyan

$StartMenudownload = "C:downloads\StartMenu\Custom\Dell Optiplex"

Write-Verbose "Acquiring Customized Start2.bin for this Dell..." -Verbose
Save-WebFile -SourceUrl $JBDellSMFileURL -DestinationDirectory $StartMenudownload

Write-Host "Applying changes to Start Menu on $env:computername..." -ForegroundColor Cyan 
$StartMenuBINFile = "C:\downloads\StartMenu\Custom\JB Dell\start2.bin"
$SMDestination = "C:\Users\$env:username\AppData\Local\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\LocalState"
Write-Verbose "Copying Start Menu file to $SMDestination...." -Verbose
Copy-Item -Path $StartMenuBINFile -Destination $SMDestination -Force 

Stop-Transcript
