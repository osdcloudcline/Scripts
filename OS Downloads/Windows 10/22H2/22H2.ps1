$Win10Log = "C:\OSD Cloud\Logs\OS Downloads\Windows10.log"
Start-Transcript $Win10Log

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

################### ISO Download, Extraction and Creation Variables region ##########################

$ZIPDestination = "$env:userprofile\Downloads\OS\Windows10\22H2"

$Windows10URL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2010/22H2/19045.5073_amd64_en-us_multi_60d84f07_convert_virtual.zip"

$ExtractionLocation = $ZIPDestination

$Windows10Downloader = "$ZIPDestination\uup_download_windows.cmd"

########################################################################################

Write-Host "Downloading Windows 10 22H2 ZIP File..." -ForegroundColor Cyan 

Save-WebFile -SourceUrl $Windows10URL -DestinationDirectory $ZIPDestination

Write-Host "Expanding Windows 10 22H2 ZIP File..." -ForegroundColor Cyan 

Expand-Archive -Path "$ZIPDestination\19045.5073_amd64_en-us_multi_60d84f07_convert_virtual.zip" -DestinationPath $ExtractionLocation
Write-Host
Write-Host "Downloading Windows 10 22H2..." -ForegroundColor Cyan 

Start-Process -FilePath $Windows10Downloader

pause

#######    Delete Items Variables region ########################

$binfolder = "$ZIPDestination\bin"
$Driversfolder = "$ZIPDestination\Drivers"
$filesfolder = "$ZIPDestination\files"
$UUPsfolder = "$ZIPDestination\UUPs"

#####################################################

Write-Host "Deleting Subfolders and Files Windows 10 22H2 Source Directory..." -ForegroundColor Cyan 

rd -Path "$binfolder" -Recurse -Force
rd -Path "$Driversfolder" -Recurse -Force
rd -Path "$filesfolder" -Recurse -Force
rd -Path "$UUPsfolder" -Recurse -Force

Remove-Item -Path "$ZIPDestination\*.log" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.ini" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.cmd" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.txt" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.html" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.md" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.sh" -Recurse -Force
Remove-Item -Path "$ZIPDestination\*.zip" -Recurse -Force

Write-Host "Excess Files and folders have been successfully deleted..." -ForegroundColor Green 

pause
Write-Host
$ISODestination = "C:\ISOs\OS\Clients\Win10\22H2"

Write-Host "Copying ISO to $ISODestination..." -ForegroundColor Cyan
New-Item -Path $ISODestination -ItemType Directory
$ISOFile = "$ZIPDestination\19045.5073.241016-1410.22H2_RELEASE_SVC_PROD3_CLIENTMULTI_X64FRE_EN-US.iso"

Copy-Item -Path $ISOFile -Destination $ISODestination -Force

Stop-Transcript



