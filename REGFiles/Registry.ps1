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
$REG2 = "Windows 11 OS Modifications Registry Entries"
$REG3 = "Windows 10 OS Modifications Registry Entries" 
$REG4 = "PC Mark 10 Registry Entries"
$REG5 = "3D Mark Registry Entries"
$REG6 = "Show SYSTEM Desktop Icons Registry Entries"
$REG7 = "Show Hidden Files and Folders"
$REG8 = "Prevent Windows 11 24H2 BitLocker Drive Encryption"


$REG1PATH = "$REGFileDirectory\Adobe.reg"
$REG2PATH = "$REGFileDirectory\Windows11-OSModifications.reg"
$REG3PATH = "$REGFileDirectory\Windows10-OSModifications.reg"
$REG4PATH = "$REGFileDirectory\PCMark10.reg"
$REG5PATH = "$REGFileDirectory\3DMark.reg"
$REG6PATH = "$REGFileDirectory\SYSTEMDesktopIcons.reg"
$REG7PATH = "$REGFileDirectory\ShowHiddenFilesFolders.reg"
$REG8PATH = "$REGFileDirectory\DisableBitLockerDeviceEncryption.reg"

Write-Host "Downloading Registry Files from OSDCloudCline GitHub repo..." -ForegroundColor Cyan
Write-Host
$AdobeRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Adobe.reg"
$W11OSModificationRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Windows11-OSModifications.reg"
$W10OSModificationRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Windows10-OSModifications.reg"
$PCMark10RegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/PCMark10.reg"
$3DMarkRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/3DMark.reg"
$SYSTEMDesktopIconsRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/SYSTEMDesktopIcons.reg"
$HiddenFilesFoldersRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/ShowHiddenFilesFolders.reg"
$DisableBitLockerUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/DisableBitLockerDeviceEncryption.reg"

Write-Verbose "Obtaining $REG1 ..." -Verbose
Save-WebFile -SourceUrl $AdobeRegFileUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG2 ..." -Verbose
Save-WebFile -SourceUrl $W11OSModificationRegFileUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG4 ..." -Verbose
Save-WebFile -SourceUrl $PCMark10RegFileUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG5 ..." -Verbose
Save-WebFile -SourceUrl $3DMarkRegFileUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG6 ..." -Verbose
Save-WebFile -SourceUrl $SYSTEMDesktopIconsRegFileUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG7 ..." -Verbose
Save-WebFile -SourceUrl $HiddenFilesFoldersRegFileUrl -DestinationDirectory $REGFileDirectory

Write-Verbose "Obtaining $REG8..." -Verbose
Save-WebFile -SourceUrl $DisableBitLockerUrl -DestinationDirectory $REGFileDirectory

cd $REGFileDirectory

Write-Host "Merging Registry files into the operating system on $env:computername..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Merging $REG1 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG1PATH
Write-Host
If(($OSInfo1 -eq "Microsoft Windows 11 Home") -or ($OSInfo1 -eq "Microsoft Windows 11 Pro") -or ($OSInfo1 -eq "Microsoft Windows 11 Pro for Workstations") -or ($OSInfo1 -eq "Microsoft Windows 11 Enterprise")){ 
Save-WebFile -SourceUrl $W11OSModificationRegFileUrl -DestinationDirectory $REGFileDirectory
Write-Verbose "Merging $REG2 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG2PATH
}
ElseIf(($OSInfo1 -eq "Microsoft Windows 10 Home") -or ($OSInfo1 -eq "Microsoft Windows 10 Pro") -or ($OSInfo1 -eq "Microsoft Windows 10 Pro for Workstations") -or ($OSInfo1 -eq "Microsoft Windows 10 Enterprise")){
Write-Host "$env:computername is running Windows 10. Please wait while Registry modifications are acquired fromn OSDCloudCline GitHub repo..."
Write-Verbose "Obtaining $REG3 ..." -Verbose
Save-WebFile -SourceUrl $W10OSModificationRegFileUrl -DestinationDirectory $REGFileDirectory
Write-Verbose "Merging $REG3 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG3PATH
}

Write-Host "Merging Registry Files..." -ForegroundColor Cyan

Write-Verbose "Merging $REG4 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $REG4PATH

Write-Verbose "Merging $REG5 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $REG5PATH

Write-Verbose "Merging $REG6 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $REG6PATH

Write-Verbose "Merging $REG7 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $REG7PATH

Write-Verbose "Merging $REG8 into $OSInfo1 $OSInfo2..." -Verbose
regedit /s $REG8PATH

Stop-Transcript
