$Win11ALLLogs = "C:\OSD Cloud\Logs\OS Downloads\Win11ALL.log"
Start-Transcript $Win11ALLLogs

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

Write-Host "Processing: Windows 11 21H2 Build 22000.2960...." -ForegroundColor Cyan 
################### ISO Download, Extraction and Creation Variables region ##########################

$ZIPDestination = "$env:userprofile\Downloads\OS\Windows11\21H2"

$Windows1121H2URL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/21H2/22000.2960_amd64_en-us_multi_1843eef2_convert_virtual.zip"

$ExtractionLocation = $ZIPDestination

$Windows11Downloader = "$ZIPDestination\uup_download_windows.cmd"

########################################################################################

Write-Host "Downloading Windows 11 21H2 ZIP File..." -ForegroundColor Cyan 

Save-WebFile -SourceUrl $Windows1121H2URL -DestinationDirectory $ZIPDestination

Write-Host "Expanding Windows 11 21H2 ZIP File..." -ForegroundColor Cyan 

Expand-Archive -Path "$ZIPDestination\22000.2960_amd64_en-us_multi_1843eef2_convert_virtual.zip" -DestinationPath $ExtractionLocation
Write-Host
Write-Host "Downloading Windows 11 21H2 Build: 22000.2960..." -ForegroundColor Cyan 

Start-Process -FilePath $Windows11Downloader

pause

#######    Delete Items Variables region ########################

$binfolder = "$ZIPDestination\bin"
$Driversfolder = "$ZIPDestination\Drivers"
$filesfolder = "$ZIPDestination\files"
$UUPsfolder = "$ZIPDestination\UUPs"

#####################################################

Write-Host "Deleting Subfolders and Files Windows 11 21H2 Source Directory..." -ForegroundColor Cyan 

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

Write-Host
Write-Host "Completed Processing: Windows 11 21H2 Build 22000.2960...." -ForegroundColor Green 
pause

Write-Host
Write-Host "Processing: Windows 11 22H2 Build 22621.3668...." -ForegroundColor Cyan 
################### ISO Download, Extraction and Creation Variables region ##########################

$ZIPDestination = "$env:userprofile\Downloads\OS\Windows11\22H2"

$Windows1122H2URL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/22H2/22621.3668_amd64_en-us_multi_354f5027_convert_virtual.zip"

$ExtractionLocation = $ZIPDestination

$Windows11Downloader = "$ZIPDestination\uup_download_windows.cmd"

########################################################################################

Write-Host "Downloading Windows 11 22H2 ZIP File..." -ForegroundColor Cyan 

Save-WebFile -SourceUrl $Windows1122H2URL -DestinationDirectory $ZIPDestination

Write-Host "Expanding Windows 11 22H2 ZIP File..." -ForegroundColor Cyan 

Expand-Archive -Path "$ZIPDestination\22621.3668_amd64_en-us_multi_354f5027_convert_virtual.zip" -DestinationPath $ExtractionLocation
Write-Host
Write-Host "Downloading Windows 11 22H2..." -ForegroundColor Cyan 

Start-Process -FilePath $Windows11Downloader

pause

#######    Delete Items Variables region ########################

$binfolder = "$ZIPDestination\bin"
$Driversfolder = "$ZIPDestination\Drivers"
$filesfolder = "$ZIPDestination\files"
$UUPsfolder = "$ZIPDestination\UUPs"

#####################################################

Write-Host "Deleting Subfolders and Files Windows 11 22H2 Source Directory..." -ForegroundColor Cyan 

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
Write-Host
Write-Host "Completed Processing: Windows 11 22H2 Build 22621.3668...." -ForegroundColor Green 
pause

Write-Host
Write-Host "Processing: Windows 11 23H2 Build 22631.3668...." -ForegroundColor Cyan 
################### ISO Download, Extraction and Creation Variables region ##########################

$ZIPDestination = "$env:userprofile\Downloads\OS\Windows11\23H2"

$Windows1123H2URL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/23H2/22631.3668_amd64_en-us_multi_593f698d_convert_virtual.zip"

$ExtractionLocation = $ZIPDestination

$Windows11Downloader = "$ZIPDestination\uup_download_windows.cmd"

########################################################################################

Write-Host "Downloading Windows 11 23H2 ZIP File..." -ForegroundColor Cyan 

Save-WebFile -SourceUrl $Windows1123H2URL -DestinationDirectory $ZIPDestination

Write-Host "Expanding Windows 11 23H2 ZIP File..." -ForegroundColor Cyan 

Expand-Archive -Path "$ZIPDestination\22631.3668_amd64_en-us_multi_593f698d_convert_virtual.zip" -DestinationPath $ExtractionLocation
Write-Host
Write-Host "Downloading Windows 11 23H2 Build: 22631.3668..." -ForegroundColor Cyan 

Start-Process -FilePath $Windows11Downloader

pause

#######    Delete Items Variables region ########################

$binfolder = "$ZIPDestination\bin"
$Driversfolder = "$ZIPDestination\Drivers"
$filesfolder = "$ZIPDestination\files"
$UUPsfolder = "$ZIPDestination\UUPs"

#####################################################

Write-Host "Deleting Subfolders and Files Windows 11 23H2 Source Directory..." -ForegroundColor Cyan 

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
Write-Host
Write-Host "Completed Processing: Windows 11 23H2 Build 22631.3668...." -ForegroundColor Green 
pause

Write-Host
Write-Host "Processing: Windows 11 24H2 Build 26100.863...." -ForegroundColor Cyan 
################### ISO Download, Extraction and Creation Variables region ##########################

$ZIPDestination = "$env:userprofile\Downloads\OS\Windows11\24H2"

$Windows1124H2URL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2011/24H2/26100.2033_amd64_en-us_multi_7a25f043_convert_virtual.zip"

$ExtractionLocation = $ZIPDestination

$Windows11Downloader = "$ZIPDestination\uup_download_windows.cmd"

########################################################################################

Write-Host "Downloading Windows 11 24H2 ZIP File..." -ForegroundColor Cyan 

Save-WebFile -SourceUrl $Windows1124H2URL -DestinationDirectory $ZIPDestination

pause 

Write-Host "Expanding Windows 11 24H2 ZIP File..." -ForegroundColor Cyan 

Expand-Archive -Path "$ZIPDestination\26100.2033_amd64_en-us_multi_7a25f043_convert_virtual.zip" -DestinationPath $ZIPDestination

pause

Write-Host
Write-Host "Downloading Windows 11 24H2 Build: RTM 26100.2033..." -ForegroundColor Cyan 

Start-Process -FilePath $Windows11Downloader

pause

#######    Delete Items Variables region ########################

$binfolder = "$ZIPDestination\bin"
$Driversfolder = "$ZIPDestination\Drivers"
$filesfolder = "$ZIPDestination\files"
$UUPsfolder = "$ZIPDestination\UUPs"

#####################################################

Write-Host "Deleting Subfolders and Files Windows 11 24H2 Source Directory..." -ForegroundColor Cyan 

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
Write-Host
Write-Host "Completed Processing: Windows 11 24H2 Build 26100.863...." -ForegroundColor Green 
pause

Write-Host
Write-Host "Processing: Windows 11 25H2 Build ...." -ForegroundColor Cyan 


Stop-Transcript



