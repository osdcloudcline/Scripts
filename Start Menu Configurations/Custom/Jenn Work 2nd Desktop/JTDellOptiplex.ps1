$SMJTDellOptiplexLog = "C:\Logs\OSDCloud\Start Menu\$env:computername-JTDellOptiplex.log"

Start-Transcript -FilePath $SMJTDellOptiplexLog

Import-Module -Name OSD -Force


$SMSource = "OSDCloud Cline\Scripts\Start Menu Configurations\Custom\JT Dell Optiplex"
$JTDellOptiplexSMFileURL = "https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Custom/Bryan-Desktop/start2.bin"

Write-Host
Write-Host "A customized Start Menu for this PC will now be downloaded from $SMSource to $env:userprofile and configured on $env:computername..." -ForegroundColor Cyan

$StartMenudownload = "C:downloads\StartMenu\Custom\Dell Optiplex"

Write-Verbose "Acquiring Customized Start2.bin for this Dell Optiplex Start Menu Configuration..." -Verbose
Save-WebFile -SourceUrl $JTDellOptiplexSMFileURL -DestinationDirectory $StartMenudownload

Write-Host "Applying changes to Start Menu on $env:computername..." -ForegroundColor Cyan 
$StartMenuBINFile = "C:\downloads\StartMenu\Custom\JT Dell Optiplex\start2.bin"
$SMDestination = "C:\Users\$env:username\AppData\Local\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\LocalState"
Write-Verbose "Copying Start Menu file to $SMDestination...." -Verbose
Copy-Item -Path $StartMenuBINFile -Destination $SMDestination -Force 

Stop-Transcript
