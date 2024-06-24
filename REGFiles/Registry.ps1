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

$REG1 = "Adobe Master Collection Suite Registry Entries"
$REG2 = "Adobe Master Collection Suite Registry Entries"
$REG3 = "Adobe Master Collection Suite Registry Entries"
$REG4 = "Adobe Master Collection Suite Registry Entries"
$REG5 = "Adobe Master Collection Suite Registry Entries"
$REG6 = "Windows 11 OS Modifications Registry Entries"
$REG7 = "Windows 10 OS Modifications Registry Entries" 
$REG8 = "PC Mark 10 Registry Entries"
$REG9 = "3D Mark Registry Entries"
$REG10 = "Show SYSTEM Desktop Icons Registry Entries"
$REG11 = "Show Hidden Files and Folders"
$REG12 = "Prevent Windows 11 24H2 BitLocker Drive Encryption"
$REG13 = "Disable Windows AI: Windows Recall"
$REG14 = "Disable Windows Copilot"

$REG1PATH = "$REGFileDirectory\Acrobat1.reg"
$REG2PATH = "$REGFileDirectory\Acrobat2.reg"
$REG3PATH = "$REGFileDirectory\AdobeCC.reg"
$REG4PATH = "$REGFileDirectory\AdobeCC2.reg"
$REG5PATH = "$REGFileDirectory\AdobeCC3.reg"
$REG6PATH = "$REGFileDirectory\Windows11-OSModifications.reg"
$REG7PATH = "$REGFileDirectory\Windows10-OSModifications.reg"
$REG8PATH = "$REGFileDirectory\PCMark10.reg"
$REG9PATH = "$REGFileDirectory\3DMark.reg"
$REG10PATH = "$REGFileDirectory\SYSTEMDesktopIcons.reg"
$REG11PATH = "$REGFileDirectory\ShowHiddenFilesFolders.reg"
$REG12PATH = "$REGFileDirectory\DisableBitLockerDeviceEncryption.reg"
$REG13PATH = "$REGFileDirectory\Disable﻿WindowsRecall.reg"
$REG14PATH = "$REGFileDirectory\Disable﻿WindowsCopilot.reg"

Write-Host "Downloading Registry Files from OSDCloudCline GitHub repo..." -ForegroundColor Cyan
Write-Host
$AdobeRegFile1Url = ""
$AdobeRegFile2Url = ""
$AdobeRegFile3Url = ""
$AdobeRegFile4Url = ""
$AdobeRegFile5Url = ""
$W11OSModificationRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Windows11-OSModifications.reg"
$W10OSModificationRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Windows10-OSModifications.reg"
$PCMark10RegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/PCMark10.reg"
$3DMarkRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/3DMark.reg"
$SYSTEMDesktopIconsRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/SYSTEMDesktopIcons.reg"
$HiddenFilesFoldersRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/ShowHiddenFilesFolders.reg"
$DisableBitLockerUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/DisableBitLockerDeviceEncryption.reg"
$DisableWindowsAI = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Disable%EF%BB%BFWindowsRecall.reg"
$DisableWindowsCopilot = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Disable%EF%BB%BFWindowsCopilot.reg"

Write-Verbose "Obtaining $REG1 ..." -Verbose
Save-WebFile -SourceUrl $AdobeRegFil1eUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG2 ..." -Verbose
Save-WebFile -SourceUrl $AdobeRegFile2Url -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG3 ..." -Verbose
Save-WebFile -SourceUrl $AdobeRegFile3Url -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG4 ..." -Verbose
Save-WebFile -SourceUrl $AdobeRegFile4Url -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG5 ..." -Verbose
Save-WebFile -SourceUrl $AdobeRegFile5Url -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG6 ..." -Verbose
Save-WebFile -SourceUrl $W11OSModificationRegFileUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG8 ..." -Verbose
Save-WebFile -SourceUrl $PCMark10RegFileUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG9 ..." -Verbose
Save-WebFile -SourceUrl $3DMarkRegFileUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG10 ..." -Verbose
Save-WebFile -SourceUrl $SYSTEMDesktopIconsRegFileUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG11 ..." -Verbose
Save-WebFile -SourceUrl $HiddenFilesFoldersRegFileUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG12..." -Verbose
Save-WebFile -SourceUrl $DisableBitLockerUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG13 ..." -Verbose
Save-WebFile -SourceUrl $DisableWindowsAI -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG14..." -Verbose
Save-WebFile -SourceUrl $DisableWindowsCopilot -DestinationDirectory $REGFileDirectory

cd $REGFileDirectory

Write-Host "Merging Registry files into the operating system on $env:computername..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Merging $REG1 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG1PATH
Write-Host
Write-Verbose "Merging $REG2 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG2PATH
Write-Host
Write-Verbose "Merging $REG3 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG3PATH
Write-Host
Write-Verbose "Merging $REG4 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG4PATH
Write-Host
Write-Verbose "Merging $REG5 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG5PATH
Write-Host
If(($OSInfo1 -eq "Microsoft Windows 11 Home") -or ($OSInfo1 -eq "Microsoft Windows 11 Pro") -or ($OSInfo1 -eq "Microsoft Windows 11 Pro for Workstations") -or ($OSInfo1 -eq "Microsoft Windows 11 Enterprise")){ 
Save-WebFile -SourceUrl $W11OSModificationRegFileUrl -DestinationDirectory $REGFileDirectory
Write-Verbose "Merging $REG6 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG6PATH
}
ElseIf(($OSInfo1 -eq "Microsoft Windows 10 Home") -or ($OSInfo1 -eq "Microsoft Windows 10 Pro") -or ($OSInfo1 -eq "Microsoft Windows 10 Pro for Workstations") -or ($OSInfo1 -eq "Microsoft Windows 10 Enterprise")){
Write-Host "$env:computername is running Windows 10. Please wait while Registry modifications are acquired fromn OSDCloudCline GitHub repo..."
Write-Verbose "Obtaining $REG7 ..." -Verbose
Save-WebFile -SourceUrl $W10OSModificationRegFileUrl -DestinationDirectory $REGFileDirectory
Write-Verbose "Merging $REG7 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG7PATH
}

Write-Host "Merging Registry Files..." -ForegroundColor Cyan

Write-Verbose "Merging $REG8 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $REG8PATH

Write-Verbose "Merging $REG9 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $REG9PATH

Write-Verbose "Merging $REG10 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $REG10PATH

Write-Verbose "Merging $REG11 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $REG11PATH

Write-Verbose "Merging $REG12 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $REG12PATH

Write-Verbose "Merging $REG13 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $REG13PATH

Write-Verbose "Merging $REG14 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $REG14PATH

Stop-Transcript
