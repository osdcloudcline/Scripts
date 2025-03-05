$SMHoneypotLog = "C:\Logs\OSDCloud\Start Menu\$env:computername-Honeypot.log"

Start-Transcript -FilePath $SMHoneypotLog

Import-Module -Name OSD -Force

$SMSource = "OSDCloud Cline\Scripts\Start Menu Configurations\Honeypot"

Write-Host "This computer has been installed with the Honeypot Configuration of software" -ForgroundColor Green
Write-Host
Write-Host "The Honeypot Start Menu layout will now be downloaded from $SMSource to $env:userprofile and configured on $env:computername..." -ForegroundColor Cyan

$StartMenudownload = "C:\downloads\StartMenu\Honeypot"

$HoneypotSMBINFileURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Start%20Menu%20Configurations/Honeypot/start2.bin"

Write-Verbose "Acquiring HONEYPOT start2.bin for Start Menu Configuration..." -Verbose
Save-WebFile -SourceUrl $HoneypotSMBINFileURL -DestinationDirectory $StartMenudownload

Write-Host "Applying changes to Start Menu on $env:computername..." -ForegroundColor Cyan 
$StartMenuBINFile = "C:\downloads\StartMenu\Honeypot\start2.bin"
$SMDestination = "C:\Users\$env:username\AppData\Local\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\LocalState"
Write-Verbose "Copying Start Menu file to $SMDestination...." -Verbose
Copy-Item -Path $StartMenuBINFile -Destination $SMDestination -Force 

Stop-Transcript
