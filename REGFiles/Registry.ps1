##################################
# Registry Files 
##################################

$REGFileDirectory = "C:\OSDCloud\GitHub\downloads\Registry"
$OSInfo1 = (Get-CimInstance -ClassName CIM_OperatingSystem).Caption
$OSInfo2 = (Get-CimInstance -ClassName CIM_OperatingSystem).Version

$REG1 = "Adobe Master Collection Suite Registry Entries"
$REG2 = "Windows 11 OS Modifications"
$REG3 = "Windows 10 OS Modifications" 


$REG8 = "Context Menu: Check For Updates"
$REG9 = "PC Mark"

$REG1PATH = "$RegFileDirectory\Adobe.reg"
$REG2PATH = "$RegFileDirectory\Windows11-OSModifications.reg"
$REG3PATH = "$REGFilesDirectory\Windows10-OSModifications.reg"
$REG9PATH = "$RegFileDirectory\PCMark10.reg"


Write-Host "Downloading Registry Files from OSDCloudCline GitHub repo..." -ForegroundColor Cyan
Write-Host
$AdobeRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Adobe.reg"
$W11OSModificationRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Windows11-OSModifications.reg"
$W10OSModificationRegFileUrl = "https://github.com/osdcloudcline/Scripts/raw/main/REGFiles/Windows10-OSModifications.reg"

Write-Verbose "Obtaining $REG1 ..." -Verbose
Save-WebFile -SourceUrl $AdobeRegFileUrl -DestinationDirectory $REGFilesDirectorty

Write-Verbose "Obtaining $REG2 ..." -Verbose
Save-WebFile -SourceUrl $W11OSModificationRegFileUrl -DestinationDirectory $REGFilesDirectorty

Write-Host "Merging Registry files into the operating system on $env:computername..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Merging $REG1 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG1PATH
Write-Host
If(($OSInfo1 -eq "Microsoft Windows 11 Home") -or ($OSInfo1 -eq "Microsoft Windows 11 Pro") -or ($OSInfo1 -eq "Microsoft Windows 11 Pro for Workstations") -or ($OSInfo1 -eq "Microsoft Windows 11 Enterprise")){ 
Write-Verbose "Merging $REG2 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG2PATH
}
ElseIf(($OSInfo1 -eq "Microsoft Windows 10 Home") -or ($OSInfo1 -eq "Microsoft Windows 10 Pro") -or ($OSInfo1 -eq "Microsoft Windows 10 Pro for Workstations") -or ($OSInfo1 -eq "Microsoft Windows 10 Enterprise")){
Write-Host "$env:computername is running Windows 10. Please wait while Registry modifications are acquired fromn OSDCloudCline GitHub repo..."
Write-Verbose "Obtaining $REG3 ..." -Verbose
Save-WebFile -SourceUrl $W10OSModificationRegFileUrl -DestinationDirectory $REGFilesDirectorty
Write-Verbose "Merging $REG3 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG3PATH
}

Write-Verbose "Merging $REG9 into $OSInfo1 $OSInfo2 on $env:computername..." -Verbose
regedit /s $REG9PATH
