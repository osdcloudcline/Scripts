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

# Software Registry Entries - Adobe
$SoftwareREG1 = "Adobe Master Collection Suite Registry Entries"
$SoftwareREG2 = "Adobe Master Collection Suite Registry Entries"
$SoftwareREG3 = "Adobe Master Collection Suite Registry Entries"
$SoftwareREG4 = "Adobe Master Collection Suite Registry Entries"
$SoftwareREG5 = "Adobe Master Collection Suite Registry Entries"

# Software Registry Entries - UL, Inc.
$SoftwareREG8 = "PC Mark 10 Registry Entries"
$SoftwareREG9 = "3D Mark Registry Entries"

# OS Registry Entries
$REG6 = "Windows 11 OS Modifications Registry Entries"
$REG7 = "Windows 10 OS Modifications Registry Entries" 
$REG10 = "Show SYSTEM Desktop Icons Registry Entries"
$REG11 = "Show Hidden Files and Folders"
$REG12 = "Prevent Windows 11 24H2 BitLocker Drive Encryption"
$REG13 = "Disable Windows AI: Windows Recall"
$REG14 = "Disable Windows Copilot"

# Software Registry Entries Paths
$SoftwareREG1PATH = "$REGFileDirectory\Acrobat1.reg"
$SoftwareREG2PATH = "$REGFileDirectory\Acrobat2.reg"
$SoftwareREG3PATH = "$REGFileDirectory\AdobeCC.reg"
$SoftwareREG4PATH = "$REGFileDirectory\AdobeCC2.reg"
$SoftwareREG5PATH = "$REGFileDirectory\AdobeCC3.reg"
$SoftwareREG6PATH = "$REGFileDirectory\PCMark10.reg"
$SoftwareREG7PATH = "$REGFileDirectory\3DMark.reg"

# Operating System Registry Entries Paths
$REG6PATH = "$REGFileDirectory\Windows11-OSModifications.reg"
$REG7PATH = "$REGFileDirectory\Windows10-OSModifications.reg"
$REG10PATH = "$REGFileDirectory\SYSTEMDesktopIcons.reg"
$REG11PATH = "$REGFileDirectory\ShowHiddenFilesFolders.reg"
$REG12PATH = "$REGFileDirectory\DisableBitLockerDeviceEncryption.reg"
$REG13PATH = "$REGFileDirectory\Disable﻿WindowsRecall.reg"
$REG14PATH = "$REGFileDirectory\Disable﻿WindowsCopilot.reg"

# Software Registry URL Paths
$AdobeRegFile1Url = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/Acrobat1.reg"
$AdobeRegFile2Url = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/Acrobat2.reg"
$AdobeRegFile3Url = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/AdobeCC.reg"
$AdobeRegFile4Url = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/AdobeCC2.reg"
$AdobeRegFile5Url = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Adobe/AdobeCC3.reg"
$PCMark10RegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/UL%20Inc./PCMark10.reg"
$3DMarkRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/UL%20Inc./3DMark.reg"

# Operating System Registry URL Paths
$W11OSModificationRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Windows11-OSModifications.reg"
$W10OSModificationRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Windows10-OSModifications.reg"
$SYSTEMDesktopIconsRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/SYSTEMDesktopIcons.reg"
$HiddenFilesFoldersRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/ShowHiddenFilesFolders.reg"
$DisableBitLockerUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/DisableBitLockerDeviceEncryption.reg"
$DisableWindowsAI = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Disable%EF%BB%BFWindowsRecall.reg"
$DisableWindowsCopilot = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Disable%EF%BB%BFWindowsCopilot.reg"

Write-Host "Downloading Software-related Registry Files from OSDCloudCline GitHub repo..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Obtaining $SoftwareREG1 ..." -Verbose
Save-WebFile -SourceUrl $AdobeRegFil1eUrl -DestinationDirectory $REGFileDirectory
Write-Host
Write-Verbose "Obtaining $SoftwareREG2 ..." -Verbose
Save-WebFile -SourceUrl $AdobeRegFile2Url -DestinationDirectory $REGFileDirectory
Write-Host
Write-Verbose "Obtaining $SoftwareREG3 ..." -Verbose
Save-WebFile -SourceUrl $AdobeRegFile3Url -DestinationDirectory $REGFileDirectory
Write-Host
Write-Verbose "Obtaining $SoftwareREG4 ..." -Verbose
Save-WebFile -SourceUrl $AdobeRegFile4Url -DestinationDirectory $REGFileDirectory
Write-Host
Write-Verbose "Obtaining $SoftwareREG5 ..." -Verbose
Save-WebFile -SourceUrl $AdobeRegFile5Url -DestinationDirectory $REGFileDirectory
Write-Host
Write-Verbose "Obtaining $SoftwareREG6 ..." -Verbose
Save-WebFile -SourceUrl $PCMark10RegFileUrl -DestinationDirectory $REGFileDirectory
Write-Host
Write-Verbose "Obtaining $SoftwareREG7 ..." -Verbose
Save-WebFile -SourceUrl $3DMarkRegFileUrl -DestinationDirectory $REGFileDirectory
Write-Host

Write-Host "Downloading Operating System-related Registry Files from OSDCloudCline GitHub repo..." -ForegroundColor Cyan
Write-Host


Write-Verbose "Obtaining $REG6 ..." -Verbose
Save-WebFile -SourceUrl $W11OSModificationRegFileUrl -DestinationDirectory $REGFileDirectory



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

Write-Host "Merging Software-related Registry files into the operating system on $env:computername..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Merging $SoftwareREG1 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $SoftwareREG1PATH
Write-Host
Write-Verbose "Merging $SoftwareREG2 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $SoftwareREG2PATH
Write-Host
Write-Verbose "Merging $SoftwareREG3 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $SoftwareREG3PATH
Write-Host
Write-Verbose "Merging $SoftwareREG4 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $SoftwareREG4PATH
Write-Host
Write-Verbose "Merging $SoftwareREG5 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $SoftwareREG5PATH
Write-Host
Write-Verbose "Merging $SoftwareREG6 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $SoftwareREG6PATH
Write-Verbose "Merging $SoftwareREG7 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $SoftwareREG7PATH

Write-Host "Merging Operating System-related Registry files into $OSInfo1 $OSInfo2 on $env:computername..." -ForegroundColor Cyan

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
