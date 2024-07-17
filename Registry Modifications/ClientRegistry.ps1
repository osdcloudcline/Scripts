##################################
# Registry Files 
##################################

$REGLog = "C:\OSDCloud\DeploymentLogs\Registry\$env:computername-Registry.log"
Start-Transcript -Path $REGLog

Install-Module -Name OSD -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$REGFileDirectory = "C:\OSDCloud\GitHub\downloads\Registry"
mkdir $REGFileDirectory
$OSInfo1 = (Get-CimInstance -ClassName CIM_OperatingSystem).Caption
$OSInfo2 = (Get-CimInstance -ClassName CIM_OperatingSystem).Version



Write-Host "Executing Operating System-related Registry scripts from OSDCloudCline GitHub repo..." -ForegroundColor Cyan
Write-Host

$SafeMode = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/AddSafeMode.ps1")
Invoke-Expression $($SafeMode.Content)

$Updates = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/CheckForUpdates.ps1")
Invoke-Expression $($Updates.Content)

$CopyMoveTo = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/CopyToMoveTo.ps1")
Invoke-Expression $($CopyMoveTo.Content)

$DisableBitLocker = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableBitLockerDeviceEncryption.ps1")
Invoke-Expression $($DisableBitlocker.Content)

$DisableCoPilot = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableWindowsCopilot.ps1")
Invoke-Expression $($DisableCoPilot.Content)

$DisableRecall = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableWindowsRecall.ps1")
Invoke-Expression $($DisableRecall.Content)

$OSDesktop = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/OSDesktopIcons.ps1")
Invoke-Expression $($OSDesktop.Content)

$HiddenFilesFolders = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/ShowHiddenFilesFolders.ps1")
Invoke-Expression $($HiddenFilesFolders.Content)



Write-Host "Executing Software-related Registry Files from OSDCloudCline GitHub repo..." -ForegroundColor Cyan
Write-Host

$Adobe = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Scripts/Adobe.ps1")
Invoke-Expression $($Adobe.Content) 

$3DMark = Invoke-WebRequest("")
Invoke-Expression $($3DMark.Content) 

$PCMark = Invoke-WebRequest("")
Invoke-Expression $($PCMark.Content) 

Write-Verbose "Obtaining $SoftwareREG1 ..." -Verbose

Write-Verbose "Obtaining $SoftwareREG6 ..." -Verbose
Save-WebFile -SourceUrl $PCMark10RegFileUrl -DestinationDirectory $REGFileDirectory
Write-Host
Write-Verbose "Obtaining $SoftwareREG7 ..." -Verbose
Save-WebFile -SourceUrl $3DMarkRegFileUrl -DestinationDirectory $REGFileDirectory
Write-Host




Write-Verbose "Merging $SoftwareREG6 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $SoftwareREG6PATH
Write-Verbose "Merging $SoftwareREG7 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $SoftwareREG7PATH


Stop-Transcript
