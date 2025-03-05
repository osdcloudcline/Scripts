$SMBTCDesktopLog = "C:\Logs\OSDCloud\Start Menu\$env:computername-BTCDesktop.log"

Start-Transcript -FilePath $SMBTCDesktopLog

Import-Module -Name OSD -Force


$SMSource = "OSDCloud Cline\Scripts\Start Menu Configurations\Custom\Bryan-Desktop"
$BTDesktopSMFileURL = "https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Custom/Bryan-Desktop/start2.bin"

Write-Host "This computer has been installed with the Advanced Configuration of software" -ForgroundColor Green
Write-Host
Write-Host "A customized Start Menu for Bryan's Desktop layout will now be downloaded from $SMSource to $env:userprofile and configured on $env:computername..." -ForegroundColor Cyan

$StartMenudownload = "C:downloads\StartMenu\Custom\Bryan-Desktop"

Write-Verbose "Acquiring Customized Start2.bin for Bryan's Desktop Start Menu Configuration..." -Verbose
Save-WebFile -SourceUrl $BTDesktopSMFileURL -DestinationDirectory $StartMenudownload

Write-Host "Applying changes to Start Menu on $env:computername..." -ForegroundColor Cyan 
$StartMenuBINFile = "C:\downloads\StartMenu\Custom\Bryan-Desktop\start2.bin"
$SMDestination = "C:\Users\$env:username\AppData\Local\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\LocalState"
Write-Verbose "Copying Start Menu file to $SMDestination...." -Verbose
Copy-Item -Path $StartMenuBINFile -Destination $SMDestination -Force 

Stop-Transcript
