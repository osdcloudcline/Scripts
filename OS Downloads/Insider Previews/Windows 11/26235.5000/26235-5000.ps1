$Build = "26236.5000"
$Win10Log = "C:\OSD Cloud\Logs\OS Downloads\WindowsInsiderPreview-$Build.log"
Start-Transcript $Win10Log

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

################### ISO Download, Extraction and Creation Variables region ##########################

$ZIPDestination = "$env:userprofile\Downloads\OS\InsiderPreviewBuilds\26235.5000"

$WindowsIP262365000URL = "https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/Windows%2010/22H2/19045.4472_amd64_en-us_multi_39143328_convert_virtual.zip"

$ExtractionLocation = $ZIPDestination

$WindowsIP262365000Downloader = "$ZIPDestination\uup_download_windows.cmd"

########################################################################################

Write-Host "Downloading Windows Insider Preview 26236.5000 ZIP File..." -ForegroundColor Cyan 

Save-WebFile -SourceUrl $Windows10URL -DestinationDirectory $ZIPDestination

Write-Host "Expanding Windows Insider Preview 26236.5000 ZIP File..." -ForegroundColor Cyan 

Expand-Archive -Path "$ZIPDestination\19045.4472_amd64_en-us_multi_39143328_convert_virtual.zip" -DestinationPath $ExtractionLocation
Write-Host
Write-Host "Downloading Windows Insider Preview 26236.5000..." -ForegroundColor Cyan 

Start-Process -FilePath $Windows10Downloader

pause

#######    Delete Items Variables region ########################

$binfolder = "$ZIPDestination\bin"
$Driversfolder = "$ZIPDestination\Drivers"
$filesfolder = "$ZIPDestination\files"
$UUPsfolder = "$ZIPDestination\UUPs"

#####################################################

Write-Host "Deleting Subfolders and Files Windows Insider Preview 26236.5000 Source Directory..." -ForegroundColor Cyan 

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

Stop-Transcript
